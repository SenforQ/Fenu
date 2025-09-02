import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'chat_page.dart';
import 'report_detail_page.dart';

class FriendProfilePage extends StatefulWidget {
  final Map<String, dynamic> friendData;

  const FriendProfilePage({
    Key? key,
    required this.friendData,
  }) : super(key: key);

  @override
  State<FriendProfilePage> createState() => _FriendProfilePageState();
}

class _FriendProfilePageState extends State<FriendProfilePage> {
  bool isFollowing = false;

  @override
  void initState() {
    super.initState();
    _loadFollowStatus();
  }

  // 加载关注状态
  Future<void> _loadFollowStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final followingJson = prefs.getString('community_following');
      if (followingJson != null) {
        final List<dynamic> followingList = json.decode(followingJson);
        final following = followingList.map((e) => e.toString()).toSet();
        setState(() {
          isFollowing = following.contains(widget.friendData['FenuUserName']);
        });
      }
    } catch (e) {
      print('Error loading follow status: $e');
    }
  }

  // 保存关注状态
  Future<void> _saveFollowStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final followingJson = prefs.getString('community_following');
      Set<String> following = {};
      
      if (followingJson != null) {
        final List<dynamic> followingList = json.decode(followingJson);
        following = followingList.map((e) => e.toString()).toSet();
      }

      if (isFollowing) {
        following.add(widget.friendData['FenuUserName']);
      } else {
        following.remove(widget.friendData['FenuUserName']);
      }

      final updatedJson = json.encode(following.toList());
      await prefs.setString('community_following', updatedJson);
    } catch (e) {
      print('Error saving follow status: $e');
    }
  }

  // 切换关注状态
  Future<void> _toggleFollow() async {
    setState(() {
      isFollowing = !isFollowing;
    });
    await _saveFollowStatus();
    
    // 显示关注/取消关注提示
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(isFollowing ? 'Following user' : 'Unfollowed user'),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  // 显示举报弹窗
  void _showReportSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 拖拽指示器
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                
                const SizedBox(height: 16),
                
                // 标题
                Text(
                  'Report ${widget.friendData['FenuNickName']}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                
                const SizedBox(height: 16),
                
                // 举报选项
                _buildReportOption(
                  icon: Icons.report_outlined,
                  title: 'Report',
                  subtitle: 'Report this user for inappropriate content',
                  onTap: () {
                    Navigator.pop(context);
                    _navigateToReportDetail('Report');
                  },
                ),
                
                _buildReportOption(
                  icon: Icons.block,
                  title: 'Block',
                  subtitle: 'Block this user and hide their content',
                  onTap: () {
                    Navigator.pop(context);
                    _performBlockOrHide('Block');
                  },
                ),
                
                _buildReportOption(
                  icon: Icons.visibility_off,
                  title: 'Hide',
                  subtitle: 'Hide this user\'s posts from your feed',
                  onTap: () {
                    Navigator.pop(context);
                    _performBlockOrHide('Hide');
                  },
                ),
                
                const SizedBox(height: 16),
                
                // 取消按钮
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.grey[300]!),
                      ),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }

  // 构建举报选项
  Widget _buildReportOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  // 跳转到举报详情页
  void _navigateToReportDetail(String reportType) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReportDetailPage(
          personData: widget.friendData,
          reportType: reportType,
        ),
      ),
    );
    
    // 如果返回true，表示需要刷新数据并返回上一页
    if (result == true) {
      Navigator.pop(context, true);
    }
  }

  // 执行拉黑或屏蔽操作
  Future<void> _performBlockOrHide(String actionType) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String key = actionType == 'Block' ? 'blocked_users' : 'hidden_users';
      
      // 获取现有的拉黑/屏蔽用户列表
      final String? existingData = prefs.getString(key);
      List<String> userList = existingData != null ? List<String>.from(json.decode(existingData)) : [];
      
      // 添加当前用户
      final String userId = widget.friendData['FenuUserName'];
      if (!userList.contains(userId)) {
        userList.add(userId);
        await prefs.setString(key, json.encode(userList));
      }
      
      // 拉黑或屏蔽后自动取消关注
      if (isFollowing) {
        // 从关注列表中移除
        final followingJson = prefs.getString('community_following');
        Set<String> following = {};
        
        if (followingJson != null) {
          final List<dynamic> followingList = json.decode(followingJson);
          following = followingList.map((e) => e.toString()).toSet();
        }
        
        following.remove(userId);
        final updatedFollowingJson = json.encode(following.toList());
        await prefs.setString('community_following', updatedFollowingJson);
        
        // 更新本地状态
        setState(() {
          isFollowing = false;
        });
      }
      
      // 显示成功消息
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User has been ${actionType.toLowerCase()}ed and unfollowed successfully'),
          backgroundColor: Colors.green,
        ),
      );
      
      // 返回上一页并传递刷新信号
      Navigator.pop(context, true);
      
    } catch (e) {
      print('Error performing $actionType: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to ${actionType.toLowerCase()} user'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // 顶部背景和用户信息
          _buildTopSection(context),
          
          // 个人图片展示
          _buildPhotosSection(),
          
          // 底部间距
          const SliverToBoxAdapter(
            child: SizedBox(height: 100),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(context),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      pinned: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      actions: [
        IconButton(
          onPressed: _showReportSheet,
          icon: const Icon(Icons.more_vert, color: Colors.white),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            // 背景图片
            Image.asset(
              'assets/me_top_bg_20250831.png',
              fit: BoxFit.cover,
            ),
            
            // 渐变遮罩
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.1),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            
            // 用户信息
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 头像和基本信息
                  Row(
                    children: [
                      // 头像
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child:                         CircleAvatar(
                          radius: 37,
                          backgroundImage: AssetImage('assets/${widget.friendData['FenuUserIcon']}'),
                        ),
                      ),
                      
                      const SizedBox(width: 16),
                      
                      // 用户信息
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.friendData['FenuNickName'],
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              widget.friendData['FenuBackground'] ?? 'Travel enthusiast',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 16,
                                  color: Colors.white70,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '${widget.friendData['FenuShowFollowNum']} followers',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



  Widget _buildPhotosSection() {
    // 获取照片列表
    List<String> photos = [];
    if (widget.friendData['FenuShowPhotos'] != null) {
      if (widget.friendData['FenuShowPhotos'] is List) {
        photos = List<String>.from(widget.friendData['FenuShowPhotos']);
      } else if (widget.friendData['FenuShowPhotos'] is String) {
        // 如果是字符串，尝试解析为JSON
        try {
          final List<dynamic> parsedPhotos = json.decode(widget.friendData['FenuShowPhotos']);
          photos = parsedPhotos.cast<String>();
        } catch (e) {
          // 如果解析失败，使用默认照片
          photos = [widget.friendData['FenuShowPhoto'] ?? 'user_default_icon_20250901.png'];
        }
      }
    } else {
      // 如果没有照片列表，使用默认照片
      photos = [widget.friendData['FenuShowPhoto'] ?? 'user_default_icon_20250901.png'];
    }

    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 标题
            const Text(
              'Photos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            
            const SizedBox(height: 16),
            
            // 图片网格
            photos.isEmpty
                ? Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo_library_outlined,
                            size: 48,
                            color: Colors.grey[400],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'No photos yet',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1,
                    ),
                    itemCount: photos.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                          image: DecorationImage(
                            image: AssetImage('assets/${photos[index]}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            // 关注按钮
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: isFollowing ? Colors.grey[200] : Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton(
                  onPressed: _toggleFollow,
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    isFollowing ? 'Following' : 'Follow',
                    style: TextStyle(
                      color: isFollowing ? Colors.black : Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            
            const SizedBox(width: 16),
            
            // 聊天按钮
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPage(
                        userName: widget.friendData['FenuNickName'],
                        userAvatar: 'assets/${widget.friendData['FenuUserIcon']}',
                        backgroundPhoto: widget.friendData['FenuShowPhoto'],
                      ),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.chat,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
