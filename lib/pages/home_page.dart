import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'place_detail_page.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategoryIndex = 0; // 默认选中第一个（Forest）
  late PageController _pageController;
  int _currentPageIndex = 1; // 默认从第2个开始
  Set<String> _favoriteItems = {}; // 收藏的景点ID集合

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.85,
      initialPage: 1,
    );
    _loadFavorites();
  }

  // 加载收藏数据
  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = prefs.getString('favorites');
    if (favoritesJson != null) {
      final List<dynamic> favoritesList = json.decode(favoritesJson);
      setState(() {
        _favoriteItems = favoritesList.map((e) => e.toString()).toSet();
      });
    }
  }

  // 保存收藏数据
  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = json.encode(_favoriteItems.toList());
    await prefs.setString('favorites', favoritesJson);
  }

  // 切换收藏状态
  Future<void> _toggleFavorite(String itemId) async {
    setState(() {
      if (_favoriteItems.contains(itemId)) {
        _favoriteItems.remove(itemId);
      } else {
        _favoriteItems.add(itemId);
      }
    });
    await _saveFavorites();
  }

  // 检查是否已收藏
  bool _isFavorite(String itemId) {
    return _favoriteItems.contains(itemId);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFAFDF9),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            // 背景图片
              Container(
              width: screenWidth,
              height: screenWidth / 375 * 247,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/home_top_20250902.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // 搜索栏 - 定位在图片下方
            Transform.translate(
              offset: const Offset(0, -25),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchPage(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey[600]),
                        const SizedBox(width: 12),
                        Text(
                          'Search destinations...',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // 主要内容
            Container(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0, top: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/home_popular_20250902.png',
                    width: 197,
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 12),
              SizedBox(
                    height: 76,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                        _buildCategoryItem('assets/home_forest_20250902.png', 'Forest', 0),
                    const SizedBox(width: 12),
                        _buildCategoryItem('assets/home_canyon_20250902.png', 'Canyon', 1),
                    const SizedBox(width: 12),
                        _buildCategoryItem('assets/home_desert_20250902.png', 'Desert', 2),
                    const SizedBox(width: 12),
                        _buildCategoryItem('assets/home_lakes_20250902.png', 'Lake', 3),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  // 景点卡片列表
                  SizedBox(
                    height: 160,
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPageIndex = index;
                        });
                      },
                      itemCount: _getCategoryData().length,
                      itemBuilder: (context, index) {
                        final item = _getCategoryData()[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlaceDetailPage(placeData: item),
                              ),
                            );
                          },
                          child: Container(
                            width: screenWidth - 80,
                            height: 160,
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('assets/${item['image']}'),
                                fit: BoxFit.cover,
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
                                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
                              child: Stack(
                                children: [
                                  // 评分显示
                                  Positioned(
                                    top: 12,
                                    left: 12,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 14,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            item['rating'].toString(),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // 收藏按钮
                                  Positioned(
                                    top: 12,
                                    right: 12,
                                    child: GestureDetector(
                                      onTap: () => _toggleFavorite(item['id']),
                                      child: Image.asset(
                                        _isFavorite(item['id']) 
                                            ? 'assets/home_like_s_20250902.png'
                                            : 'assets/home_like_n_20250902.png',
                                        width: 36,
                                        height: 36,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  // 底部信息
                                  Positioned(
                                    bottom: 12,
                                    left: 12,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item['location'],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
                                        const SizedBox(height: 4),
              Row(
                children: [
                                            const Icon(
                                              Icons.visibility,
                                              color: Colors.white,
                                              size: 14,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              item['views'],
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
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
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  // 滑动指示器
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _getCategoryData().length,
                      (index) => Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPageIndex == index
                              ? const Color(0xFFBBFF36)
                              : Colors.grey.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
      
                  Image.asset(
                    'assets/home_featured_20250902.png',
                    width: 197,
                    height: 28,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 16),
                  // 景点列表
                  SizedBox(
                    height: 242,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _getAllPopularData().length,
                      itemBuilder: (context, index) {
                        final item = _getAllPopularData()[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlaceDetailPage(placeData: item),
                              ),
                            );
                          },
                          child: Container(
                            width: 156,
                            height: 242,
                            margin: EdgeInsets.only(
                              right: index < _getAllPopularData().length - 1 ? 12 : 0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('assets/${item['image']}'),
                                fit: BoxFit.cover,
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
                                    const Color(0xFF333333).withOpacity(0.0),
                                    const Color(0xFF333333).withOpacity(1.0),
                                  ],
                                  stops: const [0.0, 0.74, 1.0],
                                ),
                              ),
                              child: Stack(
                                children: [
                                  // 底部信息
                                  Positioned(
                                    bottom: 12,
                                    left: 12,
                                    right: 12,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // 景点名称
                                        Text(
                                          item['location'],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(height: 4),
                                        // 评分星星
                                        Row(
                                          children: [
                                            ...List.generate(5, (starIndex) {
                                              final rating = item['rating'] as double;
                                              final filledStars = rating.floor();
                                              final hasHalfStar = rating - filledStars >= 0.5;
                                              
                                              if (starIndex < filledStars) {
                                                return const Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 14,
                                                );
                                              } else if (starIndex == filledStars && hasHalfStar) {
                                                return const Icon(
                                                  Icons.star_half,
                                                  color: Colors.yellow,
                                                  size: 14,
                                                );
                                              } else {
                                                return const Icon(
                                                  Icons.star_border,
                                                  color: Colors.yellow,
                                                  size: 14,
                                                );
                                              }
                                            }),
                                            const SizedBox(width: 4),
                                            Text(
                                              item['rating'].toString(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
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
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 获取所有景点数据
  List<Map<String, dynamic>> _getAllPopularData() {
    // 从JSON文件获取数据，这里简化处理，实际应该从assets/Allpopular.json读取
    return [
      {
        'id': 'forest_1',
        'image': 'forest_type_1_bg_20250902.jpg',
        'title': 'Melbourne\'s Fairy Tale Paradise',
        'location': 'Alfred Nicholas',
        'views': '50 people viewed',
        'rating': 8.7,
        'content': 'This hidden paradise in the Dandenong Mountains is so beautiful it doesn\'t seem real! Alfred Nicholas Garden is stunning in all seasons, especially the golden autumn leaves + lake reflections, like stepping into a Miyazaki animation scene 🎋🍂\n📍 Address: 1A Sherbrooke Rd, Sherbrooke VIC\n🚗 Transport: Drive about 1 hour from Melbourne CBD, parking available nearby / or take train to Belgrave station then bus 694\n🎫 Ticket: Free entry! Such a beautiful place for free, so generous\n⏰ Opening hours: Daily, approximately 10am to 5pm',
      },
      {
        'id': 'forest_2',
        'image': 'forest_type_2_bg_20250902.jpg',
        'title': 'Magic Forest Really Exists!!',
        'location': 'De Djawatan',
        'views': '43 people viewed',
        'rating': 9.2,
        'content': 'Encountered a real-world \'magic forest\' in Indonesia. Trees in the forest grow \'wild and fierce\'. Being there feels like Jurassic Park. Dense foliage with incredible tree tension 🌲. Feel the vibrant life force inside.',
      },
      {
        'id': 'forest_3',
        'image': 'forest_type_3_bg_20250902.jpg',
        'title': 'Melbourne Amazon Rainforest Day Trip',
        'location': 'Maroondah Park',
        'views': '23 people viewed',
        'rating': 8.4,
        'content': 'Located northeast of Melbourne in Toolangi, about 1.5 hours drive! Perfect for those wanting to escape city noise and experience natural oxygen. Cool and humid air, always feels like breathing in a whole forest.',
      },
      {
        'id': 'canyon_1',
        'image': 'canyon_type_1_bg_20250902.jpg',
        'title': 'Natural Wonder: Majestic Glaciers Create Most Fragmented Canyon',
        'location': 'Fjaðrárgljúfur',
        'views': '25 people viewed',
        'rating': 9.5,
        'content': 'Fjaðrárgljúfur Canyon is a famous canyon in southern Iceland, attracting many tourists with its unique terrain and magnificent natural landscape. Located near Kirkjubæjarklaustur in Iceland, about 250km from Reykjavik.',
      },
      {
        'id': 'canyon_2',
        'image': 'canyon_type_2_bg_20250902.jpg',
        'title': 'Grand Canyon Antelope Valley',
        'location': 'Grand Canyon',
        'views': '33 people viewed',
        'rating': 9.8,
        'content': 'Who would have thought that beneath small surface cracks lies such a magnificent other world. Booked a two-day tour from Las Vegas to visit the long-awaited Antelope Valley & Colorado Grand Canyon.',
      },
      {
        'id': 'canyon_3',
        'image': 'canyon_type_3_bg_20250902.jpg',
        'title': 'Grand Canyon',
        'location': 'Grand Canyon',
        'views': '39 people viewed',
        'rating': 9.6,
        'content': 'World\'s #1 Grand Canyon, the most famous canyon, walking inside gives an indescribable shock, continuous peaks with well-arranged cracks, really worth visiting!!',
      },
      {
        'id': 'desert_1',
        'image': 'desert_type_1_bg_20250902.jpg',
        'title': 'Egypt Black Desert Crystal Mountain White Desert',
        'location': 'Sahara Desert',
        'views': '29 people viewed',
        'rating': 8.9,
        'content': 'Early morning we set off to camp in the Sahara Desert. First stop Black Desert because it\'s all volcanic. Second stop Crystal Mountain with visible crystals. Finally the White Desert. Most amazing was the starry sky and sunrise.',
      },
      {
        'id': 'desert_2',
        'image': 'desert_type_2_bg_20250902.jpg',
        'title': 'Morocco Desert Journey',
        'location': 'Morocco Desert',
        'views': '27 people viewed',
        'rating': 9.1,
        'content': 'First time stepping into the Sahara, truly felt the shock of \'desert\'. From Marrakech all the way south, crossing the High Atlas Mountains, greeted by endless golden ocean 🌵🐫',
      },
      {
        'id': 'desert_3',
        'image': 'desert_type_3_bg_20250902.jpg',
        'title': 'Not in Sahara Desert! In Melbourne!',
        'location': 'Big Drift',
        'views': '26 people viewed',
        'rating': 7.8,
        'content': 'Friends thought I went to the desert, actually it\'s Big Drift in Wilson Prom National Park. Recommend going at evening sunset time, can see sun and moon together with desert sunset.',
      },
      {
        'id': 'lake_1',
        'image': 'lake_type_1_bg_20250902.jpg',
        'title': 'God\'s Palette: Australia Pink Lakes',
        'location': 'Lake Hillier',
        'views': '13 people viewed',
        'rating': 9.3,
        'content': 'The moment I encountered pink salt lakes in Australia, I was truly amazed! This dreamy pink lake is simply the best gift from heaven for girls. 8-hour drive from Perth, but absolutely worth it!',
      },
      {
        'id': 'lake_2',
        'image': 'lake_type_2_bg_20250902.jpg',
        'title': 'Utah Salt Lake City Pink Salt Lake',
        'location': 'Stansbury View',
        'views': '11 people viewed',
        'rating': 8.2,
        'content': 'Salt Lake City, Utah state capital, Stansbury Viewpoint pink salt lake! So amazing! Salt Lake City\'s name comes from nearby Great Salt Lake, North America\'s largest saltwater lake.',
      },
      {
        'id': 'lake_3',
        'image': 'lake_type_3_bg_20250902.jpg',
        'title': 'Oeschinensee Lake',
        'location': 'Interlaken',
        'views': '19 people viewed',
        'rating': 9.7,
        'content': 'Tiffany blue lake surface is incredibly beautiful, hiking around lake every section amazed me to exclaim wow... all original photos! Hiking route: Cable car starting point loop about 12km.',
      },
    ];
  }

  List<Map<String, dynamic>> _getCategoryData() {
    // 这里需要根据选中的分类返回对应的数据
    // 暂时返回forest数据作为示例，实际应该根据selectedCategoryIndex动态返回
    switch (selectedCategoryIndex) {
      case 0: // Forest
        return [
          {
            'id': 'forest_1',
            'image': 'forest_type_1_bg_20250902.jpg',
            'title': 'Melbourne\'s Fairy Tale Paradise',
            'location': 'Alfred Nicholas',
            'views': '50 people viewed',
            'rating': 8.7,
            'content': 'This hidden paradise in the Dandenong Mountains is so beautiful it doesn\'t seem real! Alfred Nicholas Garden is stunning in all seasons, especially the golden autumn leaves + lake reflections, like stepping into a Miyazaki animation scene 🎋🍂\n📍 Address: 1A Sherbrooke Rd, Sherbrooke VIC\n🚗 Transport: Drive about 1 hour from Melbourne CBD, parking available nearby / or take train to Belgrave station then bus 694\n🎫 Ticket: Free entry! Such a beautiful place for free, so generous\n⏰ Opening hours: Daily, approximately 10am to 5pm',
          },
          {
            'id': 'forest_2',
            'image': 'forest_type_2_bg_20250902.jpg',
            'title': 'Magic Forest Really Exists!!',
            'location': 'De Djawatan',
            'views': '43 people viewed',
            'rating': 9.2,
            'content': 'Encountered a real-world \'magic forest\' in Indonesia. Trees in the forest grow \'wild and fierce\'. Being there feels like Jurassic Park. Dense foliage with incredible tree tension 🌲. Feel the vibrant life force inside.',
          },
          {
            'id': 'forest_3',
            'image': 'forest_type_3_bg_20250902.jpg',
            'title': 'Melbourne Amazon Rainforest Day Trip',
            'location': 'Maroondah Park',
            'views': '23 people viewed',
            'rating': 8.4,
            'content': 'Located northeast of Melbourne in Toolangi, about 1.5 hours drive! Perfect for those wanting to escape city noise and experience natural oxygen. Cool and humid air, always feels like breathing in a whole forest.',
          },
        ];
      case 1: // Canyon
        return [
          {
            'id': 'canyon_1',
            'image': 'canyon_type_1_bg_20250902.jpg',
            'title': 'Natural Wonder: Majestic Glaciers Create Most Fragmented Canyon',
            'location': 'Fjaðrárgljúfur',
            'views': '25 people viewed',
            'rating': 9.5,
            'content': 'Fjaðrárgljúfur Canyon is a famous canyon in southern Iceland, attracting many tourists with its unique terrain and magnificent natural landscape. Located near Kirkjubæjarklaustur in Iceland, about 250km from Reykjavik.',
          },
          {
            'id': 'canyon_2',
            'image': 'canyon_type_2_bg_20250902.jpg',
            'title': 'Grand Canyon Antelope Valley',
            'location': 'Grand Canyon',
            'views': '33 people viewed',
            'rating': 9.8,
            'content': 'Who would have thought that beneath small surface cracks lies such a magnificent other world. Booked a two-day tour from Las Vegas to visit the long-awaited Antelope Valley & Colorado Grand Canyon.',
          },
          {
            'id': 'canyon_3',
            'image': 'canyon_type_3_bg_20250902.jpg',
            'title': 'Grand Canyon',
            'location': 'Grand Canyon',
            'views': '39 people viewed',
            'rating': 9.6,
            'content': 'World\'s #1 Grand Canyon, the most famous canyon, walking inside gives an indescribable shock, continuous peaks with well-arranged cracks, really worth visiting!!',
          },
        ];
      case 2: // Desert
        return [
          {
            'id': 'desert_1',
            'image': 'desert_type_1_bg_20250902.jpg',
            'title': 'Egypt Black Desert Crystal Mountain White Desert',
            'location': 'Sahara Desert',
            'views': '29 people viewed',
            'rating': 8.9,
            'content': 'Early morning we set off to camp in the Sahara Desert. First stop Black Desert because it\'s all volcanic. Second stop Crystal Mountain with visible crystals. Finally the White Desert. Most amazing was the starry sky and sunrise.',
          },
          {
            'id': 'desert_2',
            'image': 'desert_type_2_bg_20250902.jpg',
            'title': 'Morocco Desert Journey',
            'location': 'Morocco Desert',
            'views': '27 people viewed',
            'rating': 9.1,
            'content': 'First time stepping into the Sahara, truly felt the shock of \'desert\'. From Marrakech all the way south, crossing the High Atlas Mountains, greeted by endless golden ocean 🌵🐫',
          },
          {
            'id': 'desert_3',
            'image': 'desert_type_3_bg_20250902.jpg',
            'title': 'Not in Sahara Desert! In Melbourne!',
            'location': 'Big Drift',
            'views': '26 people viewed',
            'rating': 7.8,
            'content': 'Friends thought I went to the desert, actually it\'s Big Drift in Wilson Prom National Park. Recommend going at evening sunset time, can see sun and moon together with desert sunset.',
          },
        ];
      case 3: // Lake
        return [
          {
            'id': 'lake_1',
            'image': 'lake_type_1_bg_20250902.jpg',
            'title': 'God\'s Palette: Australia Pink Lakes',
            'location': 'Lake Hillier',
            'views': '13 people viewed',
            'rating': 9.3,
            'content': 'The moment I encountered pink salt lakes in Australia, I was truly amazed! This dreamy pink lake is simply the best gift from heaven for girls. 8-hour drive from Perth, but absolutely worth it!',
          },
          {
            'id': 'lake_2',
            'image': 'lake_type_2_bg_20250902.jpg',
            'title': 'Utah Salt Lake City Pink Salt Lake',
            'location': 'Stansbury View',
            'views': '11 people viewed',
            'rating': 8.2,
            'content': 'Salt Lake City, Utah state capital, Stansbury Viewpoint pink salt lake! So amazing! Salt Lake City\'s name comes from nearby Great Salt Lake, North America\'s largest saltwater lake.',
          },
          {
            'id': 'lake_3',
            'image': 'lake_type_3_bg_20250902.jpg',
            'title': 'Oeschinensee Lake',
            'location': 'Interlaken',
            'views': '19 people viewed',
            'rating': 9.7,
            'content': 'Tiffany blue lake surface is incredibly beautiful, hiking around lake every section amazed me to exclaim wow... all original photos! Hiking route: Cable car starting point loop about 12km.',
          },
        ];
      default:
        return [];
    }
  }

  Widget _buildCategoryItem(String imagePath, String label, int index) {
    bool isSelected = selectedCategoryIndex == index;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Container(
        width: 76,
        height: 76,
      decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF5FFE2) : const Color(0xFFEFEFEF),
          border: Border.all(
            color: isSelected ? const Color(0xFFBBFF36) : const Color(0xFFEFEFEF),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 32,
              height: 32,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 4),
            Text(
        label,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 14,
                fontWeight: FontWeight.w500, // Medium weight
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceCard(String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.green[100],
            ),
            child: const Icon(Icons.landscape, color: Colors.green, size: 30),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRouteCard(String title) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.green[100],
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
