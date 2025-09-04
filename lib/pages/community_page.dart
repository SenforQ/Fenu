import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'person_detail_page.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  List<Map<String, dynamic>> peopleData = [];
  bool isLoading = true;
  Set<String> likedPosts = {};

  @override
  void initState() {
    super.initState();
    _loadPeopleData();
    _loadLikedPosts();
  }

  // 加载用户数据
  Future<void> _loadPeopleData() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/people.json');
      final List<dynamic> jsonData = json.decode(jsonString);
      
      // 获取被拉黑和屏蔽的用户列表
      final blockedUsers = await _getBlockedUsers();
      final hiddenUsers = await _getHiddenUsers();
      
      // 过滤掉被拉黑和屏蔽的用户
      final filteredData = jsonData.where((person) {
        final String userId = person['FenuUserName'];
        return !blockedUsers.contains(userId) && !hiddenUsers.contains(userId);
      }).toList();
      
      setState(() {
        peopleData = filteredData.cast<Map<String, dynamic>>();
        isLoading = false;
      });
    } catch (e) {
      print('Error loading people data: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  // 获取被拉黑的用户列表
  Future<List<String>> _getBlockedUsers() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? blockedData = prefs.getString('blocked_users');
      if (blockedData != null) {
        return List<String>.from(json.decode(blockedData));
      }
      return [];
    } catch (e) {
      print('Error loading blocked users: $e');
      return [];
    }
  }

  // 获取被屏蔽的用户列表
  Future<List<String>> _getHiddenUsers() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? hiddenData = prefs.getString('hidden_users');
      if (hiddenData != null) {
        return List<String>.from(json.decode(hiddenData));
      }
      return [];
    } catch (e) {
      print('Error loading hidden users: $e');
      return [];
    }
  }

  // 加载收藏的帖子数据
  Future<void> _loadLikedPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsJson = prefs.getString('community_liked_posts');
      if (likedPostsJson != null) {
        final List<dynamic> likedPostsList = json.decode(likedPostsJson);
        setState(() {
          likedPosts = likedPostsList.map((e) => e.toString()).toSet();
        });
      }
    } catch (e) {
      print('Error loading liked posts: $e');
    }
  }

  // 保存收藏的帖子数据
  Future<void> _saveLikedPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsJson = json.encode(likedPosts.toList());
      await prefs.setString('community_liked_posts', likedPostsJson);
    } catch (e) {
      print('Error saving liked posts: $e');
    }
  }

  // 切换点赞状态
  Future<void> _toggleLike(String postId) async {
    setState(() {
      if (likedPosts.contains(postId)) {
        likedPosts.remove(postId);
      } else {
        likedPosts.add(postId);
      }
    });
    await _saveLikedPosts();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bannerWidth = screenWidth - 32;
    final bannerHeight = screenWidth / 343 * 160;

    return Scaffold(
      backgroundColor: const Color(0xFFFAFDF9),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            )
          : CustomScrollView(
              slivers: [
                // 状态栏安全区域
                SliverToBoxAdapter(
                  child: SizedBox(height: MediaQuery.of(context).padding.top),
                ),
                
                // 顶部横幅区域
                SliverToBoxAdapter(
                  child: Container(
                    width: double.infinity,
                    height: bannerHeight,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/community_top_20250902.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.3),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                
                // 内容区域
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Discover your next journey 标题
                        Image.asset(
                          'assets/community_discover_20250902.png',
                          width: 231,
                          height: 24,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 20),
                        
                        // 网格卡片布局
                        _buildGridCards(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  // 构建瀑布流布局
  Widget _buildGridCards() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 左列
        Expanded(
          child: Column(
            children: _buildColumnCards(0),
          ),
        ),
        const SizedBox(width: 12),
        // 右列
        Expanded(
          child: Column(
            children: _buildColumnCards(1),
          ),
        ),
      ],
    );
  }

  // 构建单列卡片
  List<Widget> _buildColumnCards(int columnIndex) {
    List<Widget> cards = [];
    
    for (int i = columnIndex; i < peopleData.length; i += 2) {
      final person = peopleData[i];
      double height;
      
      // 第一张卡片高度166，其余随机高度
      if (i == 0) {
        height = 166;
      } else {
        // 随机高度：216, 180, 200, 240 等
        final heights = [216, 180, 200, 240, 190, 220];
        height = heights[i % heights.length].toDouble();
      }
      
      cards.add(_buildPersonCard(person, i, height: height));
      
      // 添加间距（除了最后一个）
      if (i + 2 < peopleData.length) {
        cards.add(const SizedBox(height: 12));
      }
    }
    
    return cards;
  }

  // 构建个人卡片
  Widget _buildPersonCard(Map<String, dynamic> person, int index, {required double height}) {
    final postId = person['FenuUserName'];
    final isLiked = likedPosts.contains(postId);
    
    return GestureDetector(
      onTap: () async {
        final result = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PersonDetailPage(personData: person),
          ),
        );
        
        // 如果返回true，表示需要刷新数据
        if (result == true) {
          _loadPeopleData();
        }
      },
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              // 背景图片
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/${person['FenuShowPhoto']}'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                      stops: const [0.5, 1.0],
                    ),
                  ),
                ),
              ),
              
              // 收藏按钮
              Positioned(
                top: 8,
                left: 8,
                child: GestureDetector(
                  onTap: () => _toggleLike(postId),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
              
              // 底部文字信息
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 用户名和昵称
                      Text(
                        person['FenuNickName'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      
                      // 粉丝数
                      Row(
                        children: [
                          const Icon(
                            Icons.people,
                            color: Colors.white,
                            size: 12,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${person['FenuShowFollowNum']} followers',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
