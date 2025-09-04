import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';
import '../services/vip_service.dart';

// VIP 产品常量
class VipProduct {
  final String productId;
  final String period;
  final double price;
  final String priceText;

  VipProduct({
    required this.productId,
    required this.period,
    required this.price,
    required this.priceText,
  });
}

final List<VipProduct> kVipProducts = [
  VipProduct(productId: 'FenuWeekVIP', period: 'Per week', price: 12.99, priceText: '\$12.99'),
  VipProduct(productId: 'FenuMonthVIP', period: 'Per month', price: 49.99, priceText: '\$49.99'),
];

class VipPage extends StatefulWidget {
  const VipPage({super.key});

  @override
  State<VipPage> createState() => _VipPageState();
}

class _VipPageState extends State<VipPage> {
  int selectedOption = 0; // 0: 左选项, 1: 右选项
  bool _isVipActive = false;
  final Map<String, bool> _loadingStates = {}; // 为每个商品单独管理loading状态
  final Map<String, Timer> _timeoutTimers = {}; // 为每个商品管理超时定时器
  int _retryCount = 0;
  static const int maxRetries = 3;
  static const int timeoutDuration = 30; // 30秒超时
  
  // 滚动控制器
  late ScrollController _scrollController;
  
  // 苹果内购相关
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool _isAvailable = false;
  Map<String, ProductDetails> _products = {};

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _loadVipStatus();
    _checkConnectivityAndInit();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _subscription?.cancel();
    // 取消所有超时定时器
    for (final timer in _timeoutTimers.values) {
      timer.cancel();
    }
    _timeoutTimers.clear();
    super.dispose();
  }

  // 处理超时
  void _handleTimeout(String productId) {
    if (mounted) {
      setState(() {
        _loadingStates[productId] = false;
      });
      
      // 取消定时器
      _timeoutTimers[productId]?.cancel();
      _timeoutTimers.remove(productId);
      
      // 显示超时提示
      try {
        _showToast('Payment timeout. Please try again.');
      } catch (e) {
        debugPrint('Failed to show timeout toast: $e');
      }
    }
  }

  Future<void> _checkConnectivityAndInit() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      _showToast('No internet connection. Please check your network settings.');
      return;
    }
    await _initIAP();
  }

  Future<void> _initIAP() async {
    try {
      final available = await _inAppPurchase.isAvailable();
      if (!mounted) return;
      setState(() {
        _isAvailable = available;
      });
      if (!available) {
        if (mounted) {
          _showToast('In-App Purchase not available');
        }
        return;
      }
      
      final Set<String> kIds = kVipProducts.map((e) => e.productId).toSet();
      final response = await _inAppPurchase.queryProductDetails(kIds);
      if (response.error != null) {
        if (_retryCount < maxRetries) {
          _retryCount++;
          await Future.delayed(const Duration(seconds: 2));
          await _initIAP();
          return;
        }
        _showToast('Failed to load products: ${response.error!.message}');
      }
      setState(() {
        _products = {for (var p in response.productDetails) p.id: p};
      });
      
      _subscription = _inAppPurchase.purchaseStream.listen(
        _onPurchaseUpdate,
        onDone: () {
          _subscription?.cancel();
        },
        onError: (e) {
          if (mounted) {
            _showToast('Purchase error: ${e.toString()}');
          }
        },
      );
    } catch (e) {
      if (_retryCount < maxRetries) {
        _retryCount++;
        await Future.delayed(const Duration(seconds: 2));
        await _initIAP();
      } else {
        if (mounted) {
          _showToast('Failed to initialize in-app purchases. Please try again later.');
        }
      }
    }
  }

  Future<void> _loadVipStatus() async {
    try {
      final isActive = await VipService.isVipActive();
      final isExpired = await VipService.isVipExpired();
      
      setState(() {
        _isVipActive = isActive && !isExpired;
      });
      
      // 如果VIP已过期，自动停用
      if (isActive && isExpired) {
        await VipService.deactivateVip();
        setState(() {
          _isVipActive = false;
        });
      }
    } catch (e) {
      print('VipPage - Error loading VIP status: $e');
    }
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased || purchase.status == PurchaseStatus.restored) {
        await _inAppPurchase.completePurchase(purchase);
        
        // 使用VIP服务激活VIP
        try {
          await VipService.activateVip(
            productId: purchase.productID,
            purchaseDate: DateTime.now().toIso8601String(),
          );
          if (mounted) {
            setState(() {
              _isVipActive = true;
            });
            try {
              _showToast('VIP subscription activated successfully!');
            } catch (e) {
              debugPrint('Failed to show success toast: $e');
            }
            // 使用更安全的方式处理导航，并传递VIP状态更新
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted && Navigator.of(context).canPop()) {
                try {
                  Navigator.of(context).pop({
                    'vip_activated': true,
                    'product_id': purchase.productID,
                    'purchase_date': DateTime.now().toIso8601String(),
                  });
                } catch (e) {
                  debugPrint('Failed to navigate back: $e');
                }
              }
            });
          }
        } catch (e) {
          print('VipPage - Error activating VIP: $e');
          _showToast('Failed to activate VIP. Please try again.');
        }
      } else if (purchase.status == PurchaseStatus.error) {
        if (mounted) {
          try {
            _showToast('Purchase failed: ${purchase.error?.message ?? ''}');
          } catch (e) {
            debugPrint('Failed to show error toast: $e');
          }
        }
      } else if (purchase.status == PurchaseStatus.canceled) {
        if (mounted) {
          try {
            _showToast('Purchase canceled.');
          } catch (e) {
            debugPrint('Failed to show cancel toast: $e');
          }
        }
      }
      
      // 清除所有商品的loading状态和超时定时器
      if (mounted) {
        setState(() {
          _loadingStates.clear();
        });
        // 取消所有超时定时器
        for (final timer in _timeoutTimers.values) {
          timer.cancel();
        }
        _timeoutTimers.clear();
      }
    }
  }

  Future<void> _handleConfirmPurchase() async {
    if (!_isAvailable) {
      _showToast('Store is not available');
      return;
    }
    
    // 根据选择确定要购买的产品
    final selectedProduct = selectedOption == 0 ? kVipProducts[0] : kVipProducts[1];
    
    setState(() {
      _loadingStates[selectedProduct.productId] = true; // 设置当前商品的loading状态
    });
    
    // 设置30秒超时定时器
    _timeoutTimers[selectedProduct.productId] = Timer(
      Duration(seconds: timeoutDuration),
      () => _handleTimeout(selectedProduct.productId),
    );
    
    try {
      // 尝试获取对应的产品详情
      final product = _products[selectedProduct.productId];
      // 如果没有找到对应的产品，使用第一个可用的产品进行购买
      ProductDetails? productToUse = product;
      if (productToUse == null && _products.isNotEmpty) {
        productToUse = _products.values.first;
      }
      if (productToUse == null) {
        throw Exception('No products available for purchase');
      }
      
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: productToUse);
      await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
    } catch (e) {
      // 取消超时定时器
      _timeoutTimers[selectedProduct.productId]?.cancel();
      _timeoutTimers.remove(selectedProduct.productId);
      
      if (mounted) {
        _showToast('Purchase failed: ${e.toString()}');
      }
      setState(() {
        _loadingStates[selectedProduct.productId] = false; // 清除当前商品的loading状态
      });
    }
  }

  Future<void> _restorePurchases() async {
    if (!_isAvailable) {
      _showToast('Store is not available');
      return;
    }
    try {
      await _inAppPurchase.restorePurchases();
      _showToast('Restoring purchases...');
      // 恢复购买的结果会在 _onPurchaseUpdate 中处理
    } catch (e) {
      if (mounted) {
        _showToast('Restore failed: ${e.toString()}');
      }
    }
  }

  void _showToast(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: const Color(0xFF4A1B4A),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 主内容区域
          Container(
            color: Colors.white,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  // 自定义顶部区域（包含导航栏和图片）
                  _buildCustomTopSection(),
                  // VIP权益列表
                  _buildVipBenefits(),

                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
          // 购买Loading覆盖层
          if (_loadingStates.values.any((loading) => loading))
            Container(
              color: Colors.black.withValues(alpha: 0.5),
              child: const Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFBCFF39)),
                    strokeWidth: 4,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCustomTopSection() {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageHeight = screenWidth / 375 * 234;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    
    return Container(
      width: screenWidth,
      height: imageHeight,
      child: Stack(
        children: [
          // 背景图片
          Image.asset(
            'assets/vip_top_bg_20250904.png',
            width: screenWidth,
            height: imageHeight,
            fit: BoxFit.cover,
          ),
          // 导航栏覆盖层
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: statusBarHeight + 64,
              child: SafeArea(
                child: Container(
                  height: 64,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      // 返回按钮
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          width: 40,
                          height: 40,
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      // VIP标题
                      const Expanded(
                        child: Center(
                          child: Text(
                            'VIP',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 56), // 平衡布局，与左侧按钮对称
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVipBenefits() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const SizedBox(height: 16),
          _buildBenefitItem('Unlimited Profile Editing'),
          const SizedBox(height: 6),
          _buildBenefitItem('Ad-Free Experience'),
          const SizedBox(height: 6),
          _buildBenefitItem('Unlimited Create Post'),
          const SizedBox(height: 20),
          // 添加选项区域
          _buildOptionsSection(),
        ],
      ),
    );
  }

  Widget _buildBenefitItem(String title) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: Color(0xFFBCFF39),
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionsSection() {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedOption = 0;
                });
              },
              child: _buildOptionItem(
                kVipProducts[0].priceText,
                kVipProducts[0].period,
                'Total ${kVipProducts[0].priceText}',
                isSelected: selectedOption == 0,
              ),
            ),
            const SizedBox(width: 12),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedOption = 1;
                });
              },
              child: _buildOptionItem(
                kVipProducts[1].priceText,
                kVipProducts[1].period,
                'Total ${kVipProducts[1].priceText}',
                isSelected: selectedOption == 1,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        _buildPurchaseButton(),
      ],
    );
  }

  Widget _buildOptionItem(String price, String period, String total, {required bool isSelected}) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 40 - 12) / 2.0;
    
    return Container(
      width: itemWidth,
      height: 110,
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFBCFF39).withOpacity(0.1) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? const Color(0xFFBCFF39) : const Color(0xFFE0E0E0),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              price,
              style: TextStyle(
                color: isSelected ? const Color(0xFF87A156) : const Color(0xFF333333),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              period,
              style: TextStyle(
                color: isSelected ? const Color(0xFF87A156) : const Color(0xFF666666),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              total,
              style: TextStyle(
                color: isSelected ? const Color(0xFF87A156) : const Color(0xFF999999),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPurchaseButton() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: _isVipActive ? null : _handleConfirmPurchase,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFBCFF39),
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Text(
              _isVipActive ? 'VIP Active' : 'Purchase',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // 添加Restore按钮
        Container(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: _restorePurchases,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFF000000),
              side: const BorderSide(color: Color(0xFFBCFF39), width: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Text(
              'Restore',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
