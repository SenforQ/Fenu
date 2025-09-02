import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class UserProfileService {
  static const String _avatarKey = 'user_avatar';
  static const String _userNameKey = 'user_name';
  static const String _signatureKey = 'user_signature';
  static const String defaultAvatar = 'assets/user_default_icon_20250901.png';

  // 获取用户头像
  static Future<String> getAvatar() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_avatarKey) ?? defaultAvatar;
  }

  // 设置用户头像
  static Future<void> setAvatar(String avatar) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_avatarKey, avatar);
  }

  // 获取用户名
  static Future<String> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userNameKey) ?? 'Femu${DateTime.now().millisecondsSinceEpoch}';
  }

  // 设置用户名
  static Future<void> setUserName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userNameKey, name);
  }

  // 获取用户签名
  static Future<String> getSignature() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_signatureKey) ?? 'No introduction yet';
  }

  // 设置用户签名
  static Future<void> setSignature(String signature) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_signatureKey, signature);
  }

  // 保存图片到本地
  static Future<String?> saveImageToLocal(File imageFile) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final fileName = 'avatar_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final savedImage = File('${directory.path}/$fileName');
      
      await imageFile.copy(savedImage.path);
      return savedImage.path;
    } catch (e) {
      print('Error saving image: $e');
      return null;
    }
  }

  // 判断是否为本地文件
  static bool isLocalFile(String path) {
    return path.startsWith('/') || path.startsWith('file://');
  }

  // 清除所有用户数据
  static Future<void> clearAllData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_avatarKey);
    await prefs.remove(_userNameKey);
    await prefs.remove(_signatureKey);
  }
}
