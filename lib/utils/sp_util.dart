import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../global.dart';

class SpUtil {
  static final SharedPreferences _preferences = GlobalRegister.prefs;

  static Future<bool> setJson(String key, dynamic jsonVal) {
    String json = jsonEncode(jsonVal);
    return _preferences.setString(key, json);
  }

  static dynamic getJson(String key) {
    String? json = _preferences.getString(key);
    return json == null ? null : jsonDecode(json);
  }

  static Future<bool> setBool(String key, bool val) {
    return _preferences.setBool(key, val);
  }

  static bool? getBool(String key) {
    return _preferences.getBool(key);
  }

  static Future<bool> setDouble(String key, double val) {
    return _preferences.setDouble(key, val);
  }

  static double? getDouble(String key) {
    return _preferences.getDouble(key);
  }

  static Future<bool> remove(String key) {
    return _preferences.remove(key);
  }

  static Future<bool> saveValue(String key, dynamic value) async {
    if (value is int) {
      return await _preferences.setInt(key, value);
    } else if (value is String) {
      return await _preferences.setString(key, value);
    } else if (value is bool) {
      return await _preferences.setBool(key, value);
    } else if (value is double) {
      return await _preferences.setDouble(key, value);
    } else if (value is List<String>) {
      return await _preferences.setStringList(key, value);
    } else {
      return false;
    }
  }

  static Future<T> getValue<T>(String key) async {
    return _preferences.get(key) as T;
  }

  static Future<bool> containsKey(String key) async {
    return _preferences.containsKey(key);
  }

  static Future<bool> removeKey(String key) async {
    return _preferences.remove(key);
  }
}
