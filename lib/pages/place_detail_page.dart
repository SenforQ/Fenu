import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class PlaceDetailPage extends StatefulWidget {
  final Map<String, dynamic> placeData;

  const PlaceDetailPage({
    super.key,
    required this.placeData,
  });

  @override
  State<PlaceDetailPage> createState() => _PlaceDetailPageState();
}

class _PlaceDetailPageState extends State<PlaceDetailPage> {
  Set<String> _favoriteItems = {}; // 收藏的景点ID集合

  @override
  void initState() {
    super.initState();
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFDF9),
      body: CustomScrollView(
        slivers: [
          // 顶部图片区域
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/${widget.placeData['image']}'),
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
                ),
              ),
            ),
            leading: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),

          ),
          
          // 内容区域
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 标题和评分
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.placeData['title'] ?? widget.placeData['location'],
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              widget.placeData['location'],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // 评分显示
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              widget.placeData['rating'].toString(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // 观看人数
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.visibility,
                          color: Colors.grey[600],
                          size: 16,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          widget.placeData['views'],
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // 详细内容
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.placeData['content'],
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.black87,
                    ),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // 操作按钮
                  ElevatedButton(
                    onPressed: () {
                      _toggleFavorite(widget.placeData['id'].toString());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _isFavorite(widget.placeData['id'].toString()) ? Colors.red : Colors.green,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _isFavorite(widget.placeData['id'].toString()) ? Icons.favorite : Icons.favorite_border,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _isFavorite(widget.placeData['id'].toString()) ? 'Remove from Favorites' : 'Add to Favorites',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

