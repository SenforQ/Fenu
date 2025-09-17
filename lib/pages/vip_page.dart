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
  final bool isPriceLoaded;
  final double? originalPrice;
  final String? originalPriceText;

  VipProduct({
    required this.productId,
    required this.period,
    required this.price,
    required this.priceText,
    this.isPriceLoaded = false,
    this.originalPrice,
    this.originalPriceText,
  });

  VipProduct copyWith({
    String? productId,
    String? period,
    double? price,
    String? priceText,
    bool? isPriceLoaded,
    double? originalPrice,
    String? originalPriceText,
  }) {
    return VipProduct(
      productId: productId ?? this.productId,
      period: period ?? this.period,
      price: price ?? this.price,
      priceText: priceText ?? this.priceText,
      isPriceLoaded: isPriceLoaded ?? this.isPriceLoaded,
      originalPrice: originalPrice ?? this.originalPrice,
      originalPriceText: originalPriceText ?? this.originalPriceText,
    );
  }
}

// 初始VIP产品列表（使用默认价格，后续会被苹果商店实际价格覆盖）
List<VipProduct> kVipProducts = [
  VipProduct(productId: 'FenuWeekVIP', period: 'Per week', price: 6.99, priceText: '\$6.99'),
  VipProduct(productId: 'FenuMonthVIP', period: 'Per month', price: 12.99, priceText: '\$12.99'),
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
  bool _isPriceLoading = true; // 价格加载状态
  
  // 滚动控制器
  late ScrollController _scrollController;
  
  // 苹果内购相关
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool _isAvailable = false;
  Map<String, ProductDetails> _products = {};
  List<VipProduct> _vipProducts = List.from(kVipProducts); // 当前显示的产品列表

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
        setState(() {
          _isPriceLoading = false;
        });
      }
      setState(() {
        _products = {for (var p in response.productDetails) p.id: p};
        _isPriceLoading = false;
      });
      
      // 更新产品价格
      _updateProductPrices();
      
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
          setState(() {
            _isPriceLoading = false;
          });
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

  /// 更新产品价格（从苹果商店获取实际价格）
  void _updateProductPrices() {
    if (_products.isEmpty) {
      // 如果没有产品详情，保持原价格但标记为未加载
      setState(() {
        _vipProducts = kVipProducts.map((product) => product.copyWith(isPriceLoaded: false)).toList();
      });
      return;
    }
    
    final updatedProducts = <VipProduct>[];
    bool hasAnyLoadedPrice = false;
    
    for (final vipProduct in kVipProducts) {
      final productDetails = _products[vipProduct.productId];
      
      if (productDetails != null) {
        // 使用苹果商店的实际价格
        final updatedProduct = vipProduct.copyWith(
          price: productDetails.rawPrice,
          priceText: productDetails.price,
          isPriceLoaded: true,
          originalPrice: vipProduct.price,
          originalPriceText: vipProduct.priceText,
        );
        updatedProducts.add(updatedProduct);
        hasAnyLoadedPrice = true;
      } else {
        // 如果找不到产品详情，保持原价格但标记为未加载
        updatedProducts.add(vipProduct.copyWith(isPriceLoaded: false));
      }
    }
    
    setState(() {
      _vipProducts = updatedProducts;
    });
    
    // 如果没有任何价格加载成功，显示提示
    if (!hasAnyLoadedPrice) {
      _showToast('Unable to load current prices. Using default prices.');
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
    final selectedProduct = selectedOption == 0 ? _vipProducts[0] : _vipProducts[1];
    
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
          backgroundColor: const Color(0xFF4CAF50),
          duration: const Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // VIP 标题和描述
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF4CAF50),
                  Color(0xFF2E7D32),
                ],
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF4CAF50).withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Upgrade to VIP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Unlock premium features and enjoy an enhanced experience',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 20),
                // 权益预览
                Row(
                  children: [
                    _buildQuickBenefit('Unlimited'),
                    const SizedBox(width: 16),
                    _buildQuickBenefit('Ad-Free'),
                    const SizedBox(width: 16),
                    _buildQuickBenefit('Premium'),
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 详细权益列表
          const Text(
            'VIP Benefits',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          
          // 权益统一容器
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: const Color(0xFFE0E0E0),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 0,
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                _buildBenefitRow('Unlimited Profile Editing', Icons.edit),
                const SizedBox(height: 16),
                _buildBenefitRow('Ad-Free Experience', Icons.block),
                const SizedBox(height: 16),
                _buildBenefitRow('Unlimited Create Post', Icons.add_circle),
                const SizedBox(height: 16),
                _buildBenefitRow('3 Free Messages Daily', Icons.message),
                const SizedBox(height: 16),
                _buildBenefitRow('Access to Team Activities', Icons.group),
              ],
            ),
          ),
          
          const SizedBox(height: 32),
          
          // 添加选项区域
          _buildOptionsSection(),
        ],
      ),
    );
  }

  Widget _buildQuickBenefit(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildBenefitRow(String title, IconData icon) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFF4CAF50).withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF4CAF50),
            size: 20,
          ),
        ),
        const SizedBox(width: 16),
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
        const Icon(
          Icons.check_circle,
          color: Color(0xFF4CAF50),
          size: 20,
        ),
      ],
    );
  }

  Widget _buildOptionsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Choose Your Plan',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedOption = 0;
                });
              },
              child: _buildOptionItem(
                _vipProducts[0].priceText,
                _vipProducts[0].period,
                'Total ${_vipProducts[0].priceText}',
                isSelected: selectedOption == 0,
                isPriceLoaded: _vipProducts[0].isPriceLoaded,
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
                _vipProducts[1].priceText,
                _vipProducts[1].period,
                'Total ${_vipProducts[1].priceText}',
                isSelected: selectedOption == 1,
                isPriceLoaded: _vipProducts[1].isPriceLoaded,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        _buildPurchaseButton(),
      ],
    );
  }

  Widget _buildOptionItem(String price, String period, String total, {required bool isSelected, bool isPriceLoaded = true}) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 40 - 12) / 2.0;
    
    return Container(
      width: itemWidth,
      height: 120,
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF4CAF50).withOpacity(0.1) : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? const Color(0xFF4CAF50) : const Color(0xFFE0E0E0),
          width: isSelected ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: isSelected 
                ? const Color(0xFF4CAF50).withOpacity(0.2)
                : Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: isSelected ? 12 : 4,
            offset: Offset(0, isSelected ? 4 : 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // 选中指示器
            if (isSelected)
              Container(
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                  color: Color(0xFF4CAF50),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 10,
                ),
              )
            else
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFE0E0E0),
                    width: 2,
                  ),
                ),
              ),
            
            const SizedBox(height: 8),
            
            if (isPriceLoaded)
              Text(
                price,
                style: TextStyle(
                  color: isSelected ? const Color(0xFF2E7D32) : const Color(0xFF333333),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            else
              Row(
                children: [
                  SizedBox(
                    width: 14,
                    height: 14,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        isSelected ? const Color(0xFF2E7D32) : const Color(0xFF333333),
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      'Loading...',
                      style: TextStyle(
                        color: isSelected ? const Color(0xFF2E7D32) : const Color(0xFF333333),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 2),
            Text(
              period,
              style: TextStyle(
                color: isSelected ? const Color(0xFF2E7D32) : const Color(0xFF666666),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            if (isPriceLoaded)
              Text(
                total,
                style: TextStyle(
                  color: isSelected ? const Color(0xFF2E7D32) : const Color(0xFF999999),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            else
              Text(
                'Price loading...',
                style: TextStyle(
                  color: isSelected ? const Color(0xFF2E7D32) : const Color(0xFF999999),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPurchaseButton() {
    // 检查是否有产品价格已加载
    final hasLoadedPrices = _vipProducts.any((product) => product.isPriceLoaded);
    final selectedProduct = selectedOption < _vipProducts.length ? _vipProducts[selectedOption] : null;
    final canPurchase = !_isVipActive && 
                       selectedProduct != null && 
                       selectedProduct.isPriceLoaded && 
                       !_isPriceLoading;
    
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: canPurchase ? _handleConfirmPurchase : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: canPurchase ? const Color(0xFF4CAF50) : const Color(0xFFE0E0E0),
              foregroundColor: canPurchase ? Colors.white : const Color(0xFF999999),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: canPurchase ? 4 : 0,
              shadowColor: canPurchase ? const Color(0xFF4CAF50).withOpacity(0.3) : Colors.transparent,
            ),
            child: Text(
              _isVipActive 
                ? 'VIP Active' 
                : _isPriceLoading 
                  ? 'Loading Prices...'
                  : !hasLoadedPrices
                    ? 'Price Unavailable'
                    : selectedProduct?.isPriceLoaded == false
                      ? 'Price Loading...'
                      : 'Start VIP Subscription',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // 添加Restore按钮
        Container(
          width: double.infinity,
          height: 48,
          child: OutlinedButton(
            onPressed: _restorePurchases,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFF4CAF50),
              side: const BorderSide(color: Color(0xFF4CAF50), width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Text(
              'Restore Purchases',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // 添加说明文字
        Text(
          'Subscription will be charged to your Apple ID account. You can cancel anytime in Settings.',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
            height: 1.4,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

