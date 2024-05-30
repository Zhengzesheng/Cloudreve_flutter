import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'notifier/theme_manager.dart';

// 注册第三方
// 初始化全局信息，会在APP启动时执行
class GlobalRegister {
  static late SharedPreferences _prefs;
  static SharedPreferences get prefs => _prefs;

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    _prefs = await SharedPreferences.getInstance();
  }
}
