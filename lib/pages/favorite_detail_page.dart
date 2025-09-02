import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'place_detail_page.dart';

class FavoriteDetailPage extends StatefulWidget {
  const FavoriteDetailPage({super.key});

  @override
  State<FavoriteDetailPage> createState() => _FavoriteDetailPageState();
}

class _FavoriteDetailPageState extends State<FavoriteDetailPage> {
  List<Map<String, dynamic>> favoriteItems = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadFavoriteItems();
  }

  // 加载收藏的景点数据
  Future<void> _loadFavoriteItems() async {
    setState(() {
      isLoading = true;
    });

    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = prefs.getString('favorites');
    
    if (favoritesJson != null) {
      final List<dynamic> favoritesList = json.decode(favoritesJson);
      final Set<String> favoriteIds = favoritesList.map((e) => e.toString()).toSet();
      
      // 获取所有景点数据
      final allPlaces = _getAllPlacesData();
      
      // 筛选出收藏的景点
      final favoritePlaces = allPlaces.where((place) => 
        favoriteIds.contains(place['id'])).toList();
      
      setState(() {
        favoriteItems = favoritePlaces;
        isLoading = false;
      });
    } else {
      setState(() {
        favoriteItems = [];
        isLoading = false;
      });
    }
  }

  // 获取所有景点数据（与home_page.dart保持一致）
  List<Map<String, dynamic>> _getAllPlacesData() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFDF9),
      appBar: AppBar(
        title: const Text(
          'My Favorites',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            )
          : favoriteItems.isEmpty
              ? _buildEmptyState()
              : _buildFavoriteList(),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite_border,
            size: 80,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'No Favorites Yet',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Start exploring and add places to your favorites!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[500],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildFavoriteList() {
    return RefreshIndicator(
      onRefresh: _loadFavoriteItems,
      color: Colors.green,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final item = favoriteItems[index];
          return _buildFavoriteCard(item);
        },
      ),
    );
  }

  Widget _buildFavoriteCard(Map<String, dynamic> item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlaceDetailPage(placeData: item),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 图片
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/${item['image']}'),
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
                          Colors.black.withOpacity(0.3),
                        ],
                      ),
                    ),
                    child: Stack(
                      children: [
                        // 评分
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
                        // 收藏图标
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // 内容信息
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 标题
                    Text(
                      item['title'] ?? item['location'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    // 位置
                    Text(
                      item['location'],
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 8),
                    // 观看人数
                    Row(
                      children: [
                        Icon(
                          Icons.visibility,
                          color: Colors.grey[500],
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          item['views'],
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 14,
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
  }
}
