import 'package:shared_preferences/shared_preferences.dart';

class CoinService {
  static const String _coinsKey = 'user_coins';
  static const String _isNewUserKey = 'is_new_user';
  static const int welcomeBonus = 100; // 新用户欢迎奖励金币数量

  /// 获取当前金币数量
  static Future<int> getCurrentCoins() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getInt(_coinsKey) ?? 0;
    } catch (e) {
      print('Error getting current coins: $e');
      return 0;
    }
  }

  /// 添加金币
  static Future<bool> addCoins(int amount) async {
    try {
      if (amount <= 0) return false;
      
      final prefs = await SharedPreferences.getInstance();
      final currentCoins = await getCurrentCoins();
      final newAmount = currentCoins + amount;
      
      await prefs.setInt(_coinsKey, newAmount);
      print('Added $amount coins. Total: $newAmount');
      return true;
    } catch (e) {
      print('Error adding coins: $e');
      return false;
    }
  }

  /// 消费金币
  static Future<bool> spendCoins(int amount) async {
    try {
      if (amount <= 0) return false;
      
      final currentCoins = await getCurrentCoins();
      if (currentCoins < amount) {
        print('Insufficient coins. Current: $currentCoins, Required: $amount');
        return false;
      }
      
      final prefs = await SharedPreferences.getInstance();
      final newAmount = currentCoins - amount;
      await prefs.setInt(_coinsKey, newAmount);
      print('Spent $amount coins. Remaining: $newAmount');
      return true;
    } catch (e) {
      print('Error spending coins: $e');
      return false;
    }
  }

  /// 检查是否是新用户
  static Future<bool> isNewUser() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_isNewUserKey) ?? true;
    } catch (e) {
      print('Error checking if new user: $e');
      return true;
    }
  }

  /// 标记用户为非新用户
  static Future<void> markAsExistingUser() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_isNewUserKey, false);
      print('User marked as existing user');
    } catch (e) {
      print('Error marking user as existing: $e');
    }
  }

  /// 初始化新用户（给予欢迎奖励）
  static Future<bool> initializeNewUser() async {
    try {
      final isNew = await isNewUser();
      if (isNew) {
        final success = await addCoins(welcomeBonus);
        if (success) {
          await markAsExistingUser();
          print('New user initialized with $welcomeBonus coins');
          return true;
        }
      }
      return false;
    } catch (e) {
      print('Error initializing new user: $e');
      return false;
    }
  }

  /// 重置金币（仅用于测试）
  static Future<void> resetCoins() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_coinsKey, 0);
      await prefs.setBool(_isNewUserKey, true);
      print('Coins reset to 0');
    } catch (e) {
      print('Error resetting coins: $e');
    }
  }

  /// 设置金币数量（仅用于测试）
  static Future<void> setCoins(int amount) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_coinsKey, amount);
      print('Coins set to $amount');
    } catch (e) {
      print('Error setting coins: $e');
    }
  }
}
