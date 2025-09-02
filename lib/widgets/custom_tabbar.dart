import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomTabBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, -2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          _buildTabItem(0, 'assets/tab_1_n_20250831.png', 'assets/tab_1_s_20250831.png'),
          _buildTabItem(1, 'assets/tab_2_n_20250831.png', 'assets/tab_2_s_20250831.png'),
          _buildTabItem(2, 'assets/tab_3_n_20250831.png', 'assets/tab_3_s_20250831.png'),
          _buildTabItem(3, 'assets/tab_4_n_20250831.png', 'assets/tab_4_s_20250831.png'),
          _buildTabItem(4, 'assets/tab_5_n_20250831.png', 'assets/tab_5_s_20250831.png'),
        ],
      ),
    );
  }

  Widget _buildTabItem(int index, String normalImage, String selectedImage) {
    final isSelected = currentIndex == index;
    
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(index),
        child: Container(
          child: Center(
            child: Container(
              width: 32,
              height: 32,
              child: Image.asset(
                isSelected ? selectedImage : normalImage,
                width: 20,
                height: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
