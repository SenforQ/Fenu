import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'person_detail_page.dart';
import 'friend_profile_page.dart';

class FollowersDetailPage extends StatefulWidget {
  const FollowersDetailPage({super.key});

  @override
  State<FollowersDetailPage> createState() => _FollowersDetailPageState();
}

class _FollowersDetailPageState extends State<FollowersDetailPage> {
  List<Map<String, dynamic>> followersData = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadFollowersData();
  }

  // 加载关注的角色数据
  Future<void> _loadFollowersData() async {
    try {
      // 获取关注列表
      final prefs = await SharedPreferences.getInstance();
      final followingJson = prefs.getString('community_following');
      
      if (followingJson == null || followingJson.isEmpty) {
        setState(() {
          followersData = [];
          isLoading = false;
        });
        return;
      }

      final List<dynamic> followingList = json.decode(followingJson);
      
      // 加载所有用户数据
      final String jsonString = await rootBundle.loadString('assets/people.json');
      final List<dynamic> allPeopleData = json.decode(jsonString);
      
      // 过滤出被关注的用户
      final filteredData = allPeopleData.where((person) {
        return followingList.contains(person['FenuUserName']);
      }).toList();
      
      setState(() {
        followersData = filteredData.cast<Map<String, dynamic>>();
        isLoading = false;
      });
    } catch (e) {
      print('Error loading followers data: $e');
      setState(() {
        followersData = [];
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          'Followers',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : followersData.isEmpty
              ? _buildEmptyState()
              : _buildFollowersList(),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(60),
            ),
            child: Icon(
              Icons.people_outline,
              size: 60,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'No Followers Yet',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Start following people to see them here',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[500],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Explore Community',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFollowersList() {
    return RefreshIndicator(
      onRefresh: _loadFollowersData,
      color: Colors.black,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: followersData.length,
        itemBuilder: (context, index) {
          final person = followersData[index];
          return _buildFollowerCard(person);
        },
      ),
    );
  }

  Widget _buildFollowerCard(Map<String, dynamic> person) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FriendProfilePage(friendData: person),
              ),
            );
          },
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // 头像
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/${person['FenuUserIcon']}'),
                ),
                const SizedBox(width: 16),
                
                // 用户信息
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        person['FenuNickName'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        person['FenuBackground'] ?? 'Travel enthusiast',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
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
                            color: Colors.grey[500],
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${person['FenuShowFollowNum']} followers',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
                // 箭头
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
