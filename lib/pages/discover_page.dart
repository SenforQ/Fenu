import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'chat_page.dart';
import 'place_detail_page.dart';
import 'team_activity_detail_page.dart';
import 'vip_page.dart';
import '../services/vip_service.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<String> followingUsers = [];
  List<Map<String, dynamic>> allPeopleData = [];
  List<Map<String, dynamic>> allPlacesData = [];
  List<Map<String, dynamic>> teamData = [];
  bool isLoading = true;
  bool _isVipActive = false;

  @override
  void initState() {
    super.initState();
    _loadData();
    _loadVipStatus();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 当页面重新获得焦点时刷新数据
    _loadData();
    _loadVipStatus();
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

      // 加载团队活动数据
      final String teamJsonString = await rootBundle.loadString('assets/team_data.json');
      final List<dynamic> teamJsonData = json.decode(teamJsonString);
      teamData = teamJsonData.cast<Map<String, dynamic>>();

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
          teamData = [];
          isLoading = false;
        });
    }
  }

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
      print('Error loading VIP status: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/discover_bg_20250902.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
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
                
                const SizedBox(height: 16),
                
                // Team Title
                _buildTeamTitle(),
                
                const SizedBox(height: 16),
                
                // Team Activities List
                _buildTeamActivitiesList(),
                
                const SizedBox(height: 100), // Bottom spacing for navigation
              ],
            ),
          ),
        ),
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

  Widget _buildTeamTitle() {
    return Image.asset(
      'assets/team_title_20250905.png',
      width: 94,
      height: 24,
      fit: BoxFit.contain,
    );
  }

  Widget _buildTeamActivitiesList() {
    if (isLoading) {
      return const SizedBox(
        height: 200,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Column(
      children: teamData.asMap().entries.map((entry) {
        final index = entry.key;
        final team = entry.value;
        final teamId = team['id'] as int;
        
        // 第一条活动免费，第二条和第三条需要VIP
        if (teamId == 1) {
          return _buildTeamActivityCard(team);
        } else {
          return _buildVipRestrictedTeamCard(team, index);
        }
      }).toList(),
    );
  }

  Widget _buildTeamActivityCard(Map<String, dynamic> team) {
    final participants = team['participants'] as List<dynamic>;
    final participantCount = team['participantCount'] as int;
    final isHot = team['isHot'] as bool;
    final teamId = team['id'] as int;
    
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TeamActivityDetailPage(teamData: team),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Left side - Image with Hot tag
            Stack(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/${team['image']}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (teamId == 1)
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFFF6B35), Color(0xFFFFD23F)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.local_fire_department,
                            color: Colors.white,
                            size: 12,
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'Hot',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            
            // Right side - Content
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F8F0),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      team['title'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    
                    const SizedBox(height: 8),
                    
                    // Description
                    Expanded(
                      child: Text(
                        team['content'],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                          height: 1.3,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    
                    const SizedBox(height: 8),
                    
                    // Participants and Join button
                    Row(
                      children: [
                        // Participants avatars
                        SizedBox(
                          width: 60,
                          height: 24,
                          child: Stack(
                            children: participants.take(3).toList().asMap().entries.map((entry) {
                              final index = entry.key;
                              final participant = entry.value;
                              return Positioned(
                                left: index * 16.0,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage('assets/${participant['FenuUserIcon']}'),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        
                        const SizedBox(width: 8),
                        
                        // Participant count
                        Text(
                          '$participantCount',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        
                        const Spacer(),
                        
                        // Join button
                        Container(
                          height: 32,
                          decoration: BoxDecoration(
                            color: const Color(0xFF4CAF50),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: TextButton(
                            onPressed: () {
                              // TODO: Handle join team activity
                              print('Join ${team['title']}');
                            },
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              minimumSize: Size.zero,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Join',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                const Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ],
                            ),
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
    );
  }

  Widget _buildVipRestrictedTeamCard(Map<String, dynamic> team, int index) {
    final participants = team['participants'] as List<dynamic>;
    final participantCount = team['participantCount'] as int;
    final isHot = team['isHot'] as bool;
    final teamId = team['id'] as int;
    
    return GestureDetector(
      onTap: () {
        if (_isVipActive) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TeamActivityDetailPage(teamData: team),
            ),
          );
        } else {
          _showVipRequiredDialog();
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            Row(
              children: [
                // Left side - Image with VIP lock overlay
                Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/${team['image']}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // VIP lock overlay
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                        color: Colors.black.withOpacity(0.6),
                      ),
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.lock,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'VIP ONLY',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (isHot)
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFFF6B35), Color(0xFFFFD23F)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(12),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.local_fire_department,
                                color: Colors.white,
                                size: 12,
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                'Hot',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
                
                // Right side - Content
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF0F8F0),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          team['title'],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        
                        const SizedBox(height: 8),
                        
                        // Description
                        Expanded(
                          child: Text(
                            team['content'],
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                              height: 1.3,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        
                        const SizedBox(height: 8),
                        
                        // Participants and VIP button
                        Row(
                          children: [
                            // Participants avatars
                            SizedBox(
                              width: 60,
                              height: 24,
                              child: Stack(
                                children: participants.take(3).toList().asMap().entries.map((entry) {
                                  final index = entry.key;
                                  final participant = entry.value;
                                  return Positioned(
                                    left: index * 16.0,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundImage: AssetImage('assets/${participant['FenuUserIcon']}'),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            
                            const SizedBox(width: 8),
                            
                            // Participant count
                            Text(
                              '$participantCount',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            
                            const Spacer(),
                            
                            // VIP button
                            Container(
                              height: 32,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xFFBCFF39), Color(0xFF87A156)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  if (_isVipActive) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TeamActivityDetailPage(teamData: team),
                                      ),
                                    );
                                  } else {
                                    _showVipRequiredDialog();
                                  }
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  minimumSize: Size.zero,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    const SizedBox(width: 4),
                                    const Text(
                                      'VIP',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
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
          ],
        ),
      ),
    );
  }

  void _showVipRequiredDialog() {
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
                    colors: [Color(0xFFBCFF39), Color(0xFF87A156)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'VIP Required',
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
                'This team activity is exclusive to VIP members.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Upgrade to VIP to access all team activities and enjoy exclusive benefits!',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VipPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBCFF39),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Upgrade to VIP',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }


}
