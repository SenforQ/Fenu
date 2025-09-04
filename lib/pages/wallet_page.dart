import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';
import '../services/coin_service.dart';

// 金币产品常量
class CoinProduct {
  final String productId;
  final int coins;
  final double price;
  final String priceText;

  CoinProduct({
    required this.productId,
    required this.coins,
    required this.price,
    required this.priceText,
  });
}

final List<CoinProduct> kCoinProducts = [
  CoinProduct(productId: 'Fenu', coins: 32, price: 0.99, priceText: '\$0.99'),
  CoinProduct(productId: 'Fenu2', coins: 96, price: 2.99, priceText: '\$2.99'),
  CoinProduct(productId: 'Fenu4', coins: 155, price: 4.99, priceText: '\$4.99'),
  CoinProduct(productId: 'Fenu5', coins: 189, price: 5.99, priceText: '\$5.99'),
  CoinProduct(productId: 'Fenu9', coins: 359, price: 9.99, priceText: '\$9.99'),
  CoinProduct(productId: 'Fenu19', coins: 729, price: 19.99, priceText: '\$19.99'),
  CoinProduct(productId: 'Fenu49', coins: 1869, price: 49.99, priceText: '\$49.99'),
  CoinProduct(productId: 'Fenu99', coins: 3799, price: 99.99, priceText: '\$99.99'),
  CoinProduct(productId: 'Fenu159', coins: 5999, price: 159.99, priceText: '\$159.99'),
  CoinProduct(productId: 'Fenu239', coins: 9059, price: 239.99, priceText: '\$239.99'), 
];

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  int _currentCoins = 0;
  int _selectedIndex = 0; // 默认选中第一个产品
  bool _isPurchasing = false; // 全局购买状态
  final Map<String, Timer> _timeoutTimers = {}; // 为每个商品管理超时定时器
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool _isAvailable = false;
  Map<String, ProductDetails> _products = {};
  int _retryCount = 0;
  static const int maxRetries = 3;
  static const int timeoutDuration = 30; // 30秒超时

  // 处理购买超时
  void _handlePurchaseTimeout() {
    if (mounted) {
      setState(() {
        _isPurchasing = false;
      });
      
      // 取消定时器
      _timeoutTimers['purchase']?.cancel();
      _timeoutTimers.remove('purchase');
      
      // 显示超时提示
      try {
        _showToast('Payment timeout. Please try again.');
      } catch (e) {
        debugPrint('Failed to show timeout toast: $e');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _loadCoins();
    _checkConnectivityAndInit();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    // 取消所有超时定时器
    for (final timer in _timeoutTimers.values) {
      timer.cancel();
    }
    _timeoutTimers.clear();
    super.dispose();
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
      final Set<String> kIds = kCoinProducts.map((e) => e.productId).toSet();
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

  Future<void> _loadCoins() async {
    final coins = await CoinService.getCurrentCoins();
    setState(() {
      _currentCoins = coins;
    });
    
    // 检查是否是新用户，如果是则显示欢迎提示
    final isNewUser = await CoinService.isNewUser();
    if (mounted && isNewUser) {
      // 只有新用户才显示欢迎消息
      _showWelcomeMessage();
    }
  }

  /// 显示新用户欢迎提示
  void _showWelcomeMessage() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFBCFF39),
                          Color(0xFF87A156),
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.card_giftcard,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Welcome to Fenu! As a new user, you\'ve received:',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFBCFF39).withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFFBCFF39),
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/wallet_icon_20250904.png',
                          width: 32,
                          height: 32,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          '${CoinService.welcomeBonus} COINS',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF87A156),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Use these coins to chat with AI assistant or purchase more coins for additional features.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              actions: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBCFF39),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Get Started!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      }
    });
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      if (purchase.status == PurchaseStatus.purchased || purchase.status == PurchaseStatus.restored) {
        await _inAppPurchase.completePurchase(purchase);
        
        // 找到对应的产品并添加金币
        final product = kCoinProducts.firstWhere(
          (p) => p.productId == purchase.productID,
          orElse: () => CoinProduct(productId: '', coins: 0, price: 0, priceText: ''),
        );
        
                    if (product.coins > 0) {
              final success = await CoinService.addCoins(product.coins);
              
              if (success && mounted) {
                await _loadCoins(); // 重新加载金币余额
                
                // 使用 try-catch 包装 toast 调用
                try {
                  _showToast('Successfully purchased ${product.coins} coins!');
                } catch (e) {
                  debugPrint('Failed to show success toast: $e');
                }
              }
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
      
      // 清除购买状态和超时定时器
      if (mounted) {
        setState(() {
          _isPurchasing = false;
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
    
    // 获取选中的产品
    final selectedProduct = kCoinProducts[_selectedIndex];
    
    setState(() {
      _isPurchasing = true; // 使用全局购买状态
    });
    
    // 设置30秒超时定时器
    _timeoutTimers['purchase'] = Timer(
      Duration(seconds: timeoutDuration),
      () => _handlePurchaseTimeout(),
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
      await _inAppPurchase.buyConsumable(purchaseParam: purchaseParam);
    } catch (e) {
      // 取消超时定时器
      _timeoutTimers['purchase']?.cancel();
      _timeoutTimers.remove('purchase');
      
      if (mounted) {
        _showToast('Purchase failed: ${e.toString()}');
      }
      setState(() {
        _isPurchasing = false; // 清除购买状态
      });
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

  /// Display coin usage rules and guidelines
  void _showCoinRules(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFBCFF39),
                      Color(0xFF87A156),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.info_outline,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'Coin Usage Policy',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRuleItem(
                '1',
                'New users receive 100 coins as a welcome bonus upon first app launch',
                Icons.card_giftcard,
              ),
              const SizedBox(height: 16),
              _buildRuleItem(
                '2',
                'Each chat message sent consumes 20 coins as service fee',
                Icons.chat_bubble_outline,
              ),
              const SizedBox(height: 16),
              _buildRuleItem(
                '3',
                'Additional coins may be awarded through promotional campaigns and platform partnerships',
                Icons.share,
              ),
            ],
          ),
          actions: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFBCFF39),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Understood',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildRuleItem(String number, String text, IconData icon) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFFBCFF39),
                Color(0xFF87A156),
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Row(
            children: [
              Icon(
                icon,
                color: const Color(0xFF87A156),
                size: 20,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageHeight = screenWidth / 375 * 234;
    
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // 顶部背景图片
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: screenWidth,
                height: imageHeight,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/wallet_bg_20250904.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // 白色背景填充剩余区域
            Positioned(
              top: imageHeight,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.white,
              ),
            ),
            // 主要内容区域
            SafeArea(
              child: Column(
                children: [
                  // 顶部导航栏
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (Navigator.of(context).canPop()) {
                              Navigator.of(context).pop();
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.9),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              size: 20,
                              color: Color(0xFF333333),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'Wallet',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _showCoinRules(context),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.more_horiz,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // 导航栏与下方控件间隔
                  const SizedBox(height: 40),
                  
                  // 账户余额显示 - 左对齐布局
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       
                        // 右侧余额信息
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Account balance',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF4CAF50),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '$_currentCoins',
                                style: const TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  // 金币购买选项网格 - 2行3列布局
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: kCoinProducts.length, // 显示所有产品
                        itemBuilder: (context, index) {
                          final product = kCoinProducts[index];
                          return _buildCoinCard(product, index);
                        },
                      ),
                    ),
                  ),
                  
                  // 底部购买按钮
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: _isPurchasing ? null : () {
                          if (_selectedIndex < kCoinProducts.length) {
                            _onProductSelected(kCoinProducts[_selectedIndex]);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFBCFF39),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          _isPurchasing ? 'Processing...' : 'Purchase',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  // 底部安全区域
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCoinCard(CoinProduct product, int index) {
    final isSelected = _selectedIndex == index;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFE8F5E8), // 浅绿色背景
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? const Color(0xFF4CAF50) : const Color(0xFFC8E6C9),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 金币图标
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'assets/wallet_icon_20250904.png',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
              ),
            ),
            
            // 金币数量
            Text(
              '${product.coins}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            
            const SizedBox(height: 4),
            
            // "Gold coins" 文字
            const Text(
              'Gold coins',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onProductSelected(CoinProduct product) {
    // 显示确认对话框
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Row(
            children: [
              const Icon(
                Icons.monetization_on,
                color: Color(0xFFFFD700),
                size: 24,
              ),
              const SizedBox(width: 8),
              const Text(
                'Confirm Purchase',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          content: Text(
            'Are you sure you want to purchase ${product.coins} coins for ${product.priceText}?',
            style: const TextStyle(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                _handleConfirmPurchase();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFBCFF39),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Purchase',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
