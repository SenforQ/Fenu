import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'chat_page.dart';
import 'place_detail_page.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<String> followingUsers = [];
  List<Map<String, dynamic>> allPeopleData = [];
  List<Map<String, dynamic>> allPlacesData = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 当页面重新获得焦点时刷新数据
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      // 加载所有角色数据
      final String peopleJsonString = await rootBundle.loadString('assets/people.json');
      final List<dynamic> peopleJsonData = json.decode(peopleJsonString);
      allPeopleData = peopleJsonData.cast<Map<String, dynamic>>();

      // 加载所有地点数据
      final String placesJsonString = await rootBundle.loadString('assets/Allpopular.json');
      final Map<String, dynamic> placesJsonData = json.decode(placesJsonString);
      // 将所有分类的地点数据合并到一个列表中
      allPlacesData = [];
      placesJsonData.forEach((category, places) {
        if (places is List) {
          allPlacesData.addAll(places.cast<Map<String, dynamic>>());
        }
      });

      // 加载关注用户列表
      final prefs = await SharedPreferences.getInstance();
      final followingJson = prefs.getString('community_following');
      if (followingJson != null) {
        final List<dynamic> followingList = json.decode(followingJson);
        setState(() {
          followingUsers = followingList.cast<String>();
          isLoading = false;
        });
      } else {
        setState(() {
          followingUsers = [];
          isLoading = false;
        });
      }
    } catch (e) {
      print('Error loading data: $e');
      setState(() {
        followingUsers = [];
        allPeopleData = [];
        allPlacesData = [];
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/discover_bg_20250902.jpg',
              width: screenWidth,
              height: screenHeight,
              fit: BoxFit.cover,
            ),
          ),
          
          // Content
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Following Section
                  _buildFollowingSection(),
                  
                  const SizedBox(height: 24),
                  
                  // Recommend Section
                  _buildRecommendSection(),
                  
                  const SizedBox(height: 16),
                  
                  // Recommend Background Image
                  _buildRecommendBackground(),
                  
                  const SizedBox(height: 100), // Bottom spacing for navigation
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFollowingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Following Title
        Image.asset(
          'assets/following_title_20250902.png',
          width: 100,
          height: 24,
          fit: BoxFit.contain,
        ),
        
        const SizedBox(height: 12),
        
        // Following Users List or Empty State
        if (isLoading)
          const SizedBox(
            height: 80,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        else if (followingUsers.isEmpty)
          _buildEmptyFollowingState()
        else
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: followingUsers.length,
              itemBuilder: (context, index) {
                return _buildFollowingUser(followingUsers[index]);
              },
            ),
          ),
      ],
    );
  }



  Widget _buildEmptyFollowingState() {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!, width: 1),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_add_outlined,
              size: 24,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 4),
            Text(
              'No following users',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFollowingUser(String userName) {
    // 根据用户名查找对应的角色信息
    final personData = allPeopleData.firstWhere(
      (person) => person['FenuUserName'] == userName,
      orElse: () => <String, dynamic>{},
    );

    final userIcon = personData.isNotEmpty 
        ? personData['FenuUserIcon'] 
        : 'user_default_icon_20250901.png';
    final displayName = personData.isNotEmpty 
        ? personData['FenuNickName'] 
        : userName;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPage(
              userName: displayName,
              userAvatar: 'assets/$userIcon',
              backgroundPhoto: personData.isNotEmpty ? personData['FenuShowPhoto'] : null,
            ),
          ),
        );
      },
      child: Container(
        width: 60,
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFF4CAF50), width: 2),
              ),
              child: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage('assets/$userIcon'),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              displayName,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendSection() {
    return Image.asset(
      'assets/recommend_title_20250902.png',
      width: 111,
      height: 24,
      fit: BoxFit.contain,
    );
  }

  Widget _buildRecommendBackground() {
    return GestureDetector(
      onTap: () async {
        try {
          // 直接从 Allpopular.json 中获取 forest 分类的第一组数据
          final String placesJsonString = await rootBundle.loadString('assets/Allpopular.json');
          final Map<String, dynamic> placesJsonData = json.decode(placesJsonString);
          
          if (placesJsonData.containsKey('forest') && placesJsonData['forest'] is List) {
            final List<dynamic> forestPlaces = placesJsonData['forest'];
            if (forestPlaces.isNotEmpty) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceDetailPage(placeData: forestPlaces.first),
                ),
              );
            }
          }
        } catch (e) {
          print('Error loading forest data: $e');
        }
      },
      child: Image.asset(
        'assets/recommend_bg_20250902.png',
        width: 330,
        height: 334,
        fit: BoxFit.contain,
      ),
    );
  }


}
