import 'package:shared_preferences/shared_preferences.dart';

class VipService {
  static const String _vipStatusKey = 'vip_status';
  static const String _vipActivationDateKey = 'vip_activation_date';
  static const String _vipProductIdKey = 'vip_product_id';
  static const String _vipExpirationDateKey = 'vip_expiration_date';

  /// 激活VIP
  static Future<void> activateVip({
    required String productId,
    required String purchaseDate,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final now = DateTime.now();
      
      // 根据产品ID计算过期时间
      DateTime expirationDate;
      if (productId == 'MochWeekVIP') {
        expirationDate = now.add(const Duration(days: 7));
      } else if (productId == 'MochMonthVIP') {
        expirationDate = now.add(const Duration(days: 30));
      } else {
        // 默认30天
        expirationDate = now.add(const Duration(days: 30));
      }
      
      await prefs.setBool(_vipStatusKey, true);
      await prefs.setString(_vipActivationDateKey, now.toIso8601String());
      await prefs.setString(_vipProductIdKey, productId);
      await prefs.setString(_vipExpirationDateKey, expirationDate.toIso8601String());
      
      print('VIP activated successfully: $productId, expires: $expirationDate');
    } catch (e) {
      print('Error activating VIP: $e');
      rethrow;
    }
  }

  /// 停用VIP
  static Future<void> deactivateVip() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_vipStatusKey, false);
      await prefs.remove(_vipActivationDateKey);
      await prefs.remove(_vipProductIdKey);
      await prefs.remove(_vipExpirationDateKey);
      
      print('VIP deactivated successfully');
    } catch (e) {
      print('Error deactivating VIP: $e');
      rethrow;
    }
  }

  /// 检查VIP是否激活
  static Future<bool> isVipActive() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_vipStatusKey) ?? false;
    } catch (e) {
      print('Error checking VIP status: $e');
      return false;
    }
  }

  /// 检查VIP是否过期
  static Future<bool> isVipExpired() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final expirationDateString = prefs.getString(_vipExpirationDateKey);
      
      if (expirationDateString == null) {
        return true;
      }
      
      final expirationDate = DateTime.parse(expirationDateString);
      final now = DateTime.now();
      
      return now.isAfter(expirationDate);
    } catch (e) {
      print('Error checking VIP expiration: $e');
      return true;
    }
  }

  /// 获取VIP过期日期
  static Future<DateTime?> getVipExpirationDate() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final expirationDateString = prefs.getString(_vipExpirationDateKey);
      
      if (expirationDateString == null) {
        return null;
      }
      
      return DateTime.parse(expirationDateString);
    } catch (e) {
      print('Error getting VIP expiration date: $e');
      return null;
    }
  }

  /// 获取VIP产品ID
  static Future<String?> getVipProductId() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_vipProductIdKey);
    } catch (e) {
      print('Error getting VIP product ID: $e');
      return null;
    }
  }

  /// 获取VIP激活日期
  static Future<DateTime?> getVipActivationDate() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final activationDateString = prefs.getString(_vipActivationDateKey);
      
      if (activationDateString == null) {
        return null;
      }
      
      return DateTime.parse(activationDateString);
    } catch (e) {
      print('Error getting VIP activation date: $e');
      return null;
    }
  }

  /// 获取剩余天数
  static Future<int> getRemainingDays() async {
    try {
      final expirationDate = await getVipExpirationDate();
      if (expirationDate == null) {
        return 0;
      }
      
      final now = DateTime.now();
      final difference = expirationDate.difference(now);
      
      return difference.inDays > 0 ? difference.inDays : 0;
    } catch (e) {
      print('Error getting remaining days: $e');
      return 0;
    }
  }
}
