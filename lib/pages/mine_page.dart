import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'privacy_policy_page.dart';
import 'user_agreement_page.dart';
import 'about_us_page.dart';
import 'edit_profile_page.dart';
import 'favorite_detail_page.dart';
import 'followers_detail_page.dart';
import 'vip_page.dart';
import 'wallet_page.dart';
import '../services/vip_service.dart';

class MinePage extends StatefulWidget {
  const MinePage({super.key});

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  int postCount = 0;
  int followersCount = 0; // 绑定到关注的人数（community_following）
  int followingCount = 0; // 绑定到收藏记录数据（favorites）
  bool _isVipActive = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 每次页面重新获得焦点时重新加载数据
    _loadData();
  }

  // 加载所有数据
  Future<void> _loadData() async {
    await _loadPostCount();
    await _loadFollowersCount();
    await _loadFollowingCount();
    await _loadVipStatus();
  }

  // 加载VIP状态
  Future<void> _loadVipStatus() async {
    try {
      final isActive = await VipService.isVipActive();
      final isExpired = await VipService.isVipExpired();
      
      if (mounted) {
        setState(() {
          _isVipActive = isActive && !isExpired;
        });
      }
    } catch (e) {
      print('MinePage - Error loading VIP status: $e');
    }
  }

  // 加载Post数量（这里可以扩展为实际的帖子数据）
  Future<void> _loadPostCount() async {
    // 这里可以添加实际的帖子数据获取逻辑
    // 目前设置为0，可以根据需要扩展
    setState(() {
      postCount = 0;
    });
  }

  // 加载Followers数量（绑定到被关注的用户数量）
  Future<void> _loadFollowersCount() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final followingJson = prefs.getString('community_following');
      if (followingJson != null) {
        final List<dynamic> followingList = json.decode(followingJson);
        setState(() {
          followersCount = followingList.length;
        });
      } else {
        setState(() {
          followersCount = 0;
        });
      }
    } catch (e) {
      print('Error loading followers count: $e');
      setState(() {
        followersCount = 0;
      });
    }
  }

  // 加载Following数量（绑定到收藏记录数据）
  Future<void> _loadFollowingCount() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = prefs.getString('favorites');
    if (favoritesJson != null) {
      final List<dynamic> favoritesList = json.decode(favoritesJson);
      setState(() {
        followingCount = favoritesList.length;
      });
    } else {
      setState(() {
        followingCount = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 顶部背景和用户信息
            _buildTopSection(context),
            
            // 功能卡片区域
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: _buildImageCard(
                      imagePath: 'assets/mine_wallet_20250904.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WalletPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildImageCard(
                      imagePath: 'assets/mine_vip_20250904.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VipPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            
            // 设置菜单列表
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildMenuItem(
                    imagePath: 'assets/mine_about_20250901.png',
                    title: 'About us',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutUsPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 1),
                  _buildMenuItem(
                    imagePath: 'assets/mine_setting_20250901.png',
                    title: 'Setting',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfilePage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 1),
                  _buildMenuItem(
                    imagePath: 'assets/mine_privacy_20250901.png',
                    title: 'Privacy Policy',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PrivacyPolicyPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 1),
                  _buildMenuItem(
                    imagePath: 'assets/mine_userAgreement_20250901.png',
                    title: 'User Agreement',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UserAgreementPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 0), // 底部spacing for tabbar
          ],
        ),
      ),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final topImageHeight = screenWidth / 375 * 182;
    
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          // 背景图片
          Container(
            width: double.infinity,
            height: topImageHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/me_top_bg_20250831.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          
          // 顶部状态栏安全区域
          SafeArea(
                          child: Column(
                children: [
                  SizedBox(height: topImageHeight - 60),
                
                // 用户头像（带VIP标识）
                Stack(
                  children: [
                    Container(
                      width: 82,
                      height: 82,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                        image: const DecorationImage(
                          image: AssetImage('assets/user_default_icon_20250901.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // VIP标识
                    if (_isVipActive)
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: const Color(0xFFBCFF39),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                  ],
                ),
                
                const SizedBox(height: 16),
                
                // 用户名
                Text(
                  'Femu${DateTime.now().millisecondsSinceEpoch}',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                
                const SizedBox(height: 8),
                
                // 用户介绍
                const Text(
                  'No introduction yet',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                
                const SizedBox(height: 20),
                
                // 统计数据
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _buildStatItem(postCount.toString(), 'Post'),
                      ),
                      Container(
                        width: 1,
                        height: 40,
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: _buildStatItem(
                          followersCount.toString(), 
                          'Followers',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FollowersDetailPage(),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 40,
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: _buildStatItem(
                          followingCount.toString(), 
                          'Following',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FavoriteDetailPage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String value, String label, {VoidCallback? onTap}) {
    Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: content,
      );
    }

    return content;
  }

  Widget _buildImageCard({
    required String imagePath,
    VoidCallback? onTap,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = MediaQuery.of(context).size.width;
        final cardWidth = (screenWidth - 32 - 13) / 2.0;
        final cardHeight = cardWidth * 0.37;
        
        Widget cardContent = Container(
          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        );

        if (onTap != null) {
          return GestureDetector(
            onTap: onTap,
            child: cardContent,
          );
        }

        return cardContent;
      },
    );
  }

  Widget _buildMenuItem({
    required String imagePath,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            imagePath,
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey[400],
          size: 16,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}
