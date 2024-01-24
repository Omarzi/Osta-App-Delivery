import 'package:shared_preferences/shared_preferences.dart';

class OCacheHelper {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static const String _cachedCode = "cachedCode";
  static const String _isDarkModeKey = "isDarkMode";

  static String getCachedLanguage() {
    final code = prefs.getString(_cachedCode);
    if (code != null) {
      return code;
    } else {
      return 'en';
    }
  }

  static Future<void> cacheLanguage(String code) async {
    await prefs.setString(_cachedCode, code);
  }

  static bool getIsDarkMode() {
    return prefs.getBool(_isDarkModeKey) ?? false;
  }

  static Future<void> cacheIsDarkMode(bool isDarkMode) async {
    await prefs.setBool(_isDarkModeKey, isDarkMode);
  }
}