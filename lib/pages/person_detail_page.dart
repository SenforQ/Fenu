import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'report_detail_page.dart';

class PersonDetailPage extends StatefulWidget {
  final Map<String, dynamic> personData;

  const PersonDetailPage({
    super.key,
    required this.personData,
  });

  @override
  State<PersonDetailPage> createState() => _PersonDetailPageState();
}

class _PersonDetailPageState extends State<PersonDetailPage> {
  bool isLiked = false;
  bool isFollowing = false;
  int likeCount = 0;
  int commentCount = 0;
  List<Map<String, dynamic>> comments = [];
  final TextEditingController _commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadLikeStatus();
    _loadFollowStatus();
    _loadComments();
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  // 加载点赞状态
  Future<void> _loadLikeStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsJson = prefs.getString('community_liked_posts');
      if (likedPostsJson != null) {
        final List<dynamic> likedPostsList = json.decode(likedPostsJson);
        final likedPosts = likedPostsList.map((e) => e.toString()).toSet();
        setState(() {
          isLiked = likedPosts.contains(widget.personData['FenuUserName']);
        });
      }
    } catch (e) {
      print('Error loading like status: $e');
    }
  }

  // 切换点赞状态
  Future<void> _toggleLike() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsJson = prefs.getString('community_liked_posts');
      Set<String> likedPosts = {};
      
      if (likedPostsJson != null) {
        final List<dynamic> likedPostsList = json.decode(likedPostsJson);
        likedPosts = likedPostsList.map((e) => e.toString()).toSet();
      }

      setState(() {
        if (isLiked) {
          likedPosts.remove(widget.personData['FenuUserName']);
          likeCount--;
        } else {
          likedPosts.add(widget.personData['FenuUserName']);
          likeCount++;
        }
        isLiked = !isLiked;
      });

      // 保存状态
      final updatedJson = json.encode(likedPosts.toList());
      await prefs.setString('community_liked_posts', updatedJson);
    } catch (e) {
      print('Error toggling like: $e');
    }
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
          isFollowing = following.contains(widget.personData['FenuUserName']);
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
        following.add(widget.personData['FenuUserName']);
      } else {
        following.remove(widget.personData['FenuUserName']);
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
    
    // 延迟返回刷新信号，让用户看到提示
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        Navigator.pop(context, true);
      }
    });
  }

  // 加载评论数据
  Future<void> _loadComments() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final commentsJson = prefs.getString('comments_${widget.personData['FenuUserName']}');
      if (commentsJson != null) {
        final List<dynamic> commentsList = json.decode(commentsJson);
        setState(() {
          comments = commentsList.cast<Map<String, dynamic>>();
          commentCount = comments.length;
        });
      }
    } catch (e) {
      print('Error loading comments: $e');
    }
  }

  // 保存评论数据
  Future<void> _saveComments() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final commentsJson = json.encode(comments);
      await prefs.setString('comments_${widget.personData['FenuUserName']}', commentsJson);
    } catch (e) {
      print('Error saving comments: $e');
    }
  }

  // 发表评论
  Future<void> _postComment() async {
    if (_commentController.text.trim().isEmpty) return;

    final newComment = {
      'id': DateTime.now().millisecondsSinceEpoch.toString(),
      'userName': 'You',
      'userIcon': 'user_default_icon_20250901.png',
      'content': _commentController.text.trim(),
      'timestamp': DateTime.now().toString(),
      'time': '${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}',
    };

    setState(() {
      comments.add(newComment);
      commentCount = comments.length;
    });

    _commentController.clear();
    await _saveComments();
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
                  'Report ${widget.personData['FenuNickName']}',
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
          personData: widget.personData,
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
      final String userId = widget.personData['FenuUserName'];
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
          // 顶部状态栏
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).padding.top),
          ),
          
          // 用户信息头部
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  // 返回按钮
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                  
                  // 用户头像和名称
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/${widget.personData['FenuUserIcon']}'),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            widget.personData['FenuNickName'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // 举报按钮和关注按钮
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 举报按钮
                      IconButton(
                        onPressed: _showReportSheet,
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 24,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 40,
                          minHeight: 40,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      
                      const SizedBox(width: 4),
                      
                      // 关注按钮
                      Container(
                        height: 34,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: isFollowing ? Colors.grey[200] : Colors.black,
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: TextButton(
                          onPressed: _toggleFollow,
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            isFollowing ? 'Following' : 'Follow',
                            style: TextStyle(
                              color: isFollowing ? Colors.black : Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          
          // 主要内容图片
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/${widget.personData['FenuShowPhoto']}'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  // 图片指示器（模拟多张图片）
                  Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8,
                          height: 3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          width: 8,
                          height: 3,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          width: 8,
                          height: 3,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // 内容信息
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 标题和书签
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.personData['FenuTravelTitle'],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // 内容描述
                  Text(
                    widget.personData['FenuTravelContent'],
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // 评论区域
                  _buildCommentSection(),
                  
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      
      // 底部交互栏
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.grey[200]!),
          ),
        ),
        child: Row(
          children: [
            // 评论输入框
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  controller: _commentController,
                  decoration: const InputDecoration(
                    hintText: 'Say something...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  textInputAction: TextInputAction.send,
                  onSubmitted: (value) {
                    _postComment();
                  },
                ),
              ),
            ),
            
            const SizedBox(width: 16),
            
            // 点赞按钮
            GestureDetector(
              onTap: _toggleLike,
              child: Row(
                children: [
                  Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.black,
                    size: 24,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    likeCount.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(width: 16),
            
            // 评论按钮
            Row(
              children: [
                const Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.black,
                  size: 24,
                ),
                const SizedBox(width: 4),
                Text(
                  commentCount.toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommentSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Comments',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 12),
        
        // 评论列表
        if (comments.isEmpty)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'No comments yet. Be the first to comment!',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          )
        else
          ...comments.map((comment) => _buildCommentItem(comment)).toList(),
      ],
    );
  }

  Widget _buildCommentItem(Map<String, dynamic> comment) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage('assets/${comment['userIcon']}'),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      comment['userName'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      comment['time'],
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  comment['content'],
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
