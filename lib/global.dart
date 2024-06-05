import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

class GlobalColor {
  static const Color primaryColor = Color(0xFF3F51B5);
}

// 设备信息
class GlobalDevice {
  static MediaQueryData mediaQueryData = MediaQueryData.fromView(window);
  static double screenWidth = mediaQueryData.size.width;
  static double screenHeight = mediaQueryData.size.height;
  static double paddingBottom = mediaQueryData.padding.bottom;
  static double paddingTop = mediaQueryData.padding.top;
  static double devicePixelRatio = mediaQueryData.devicePixelRatio;
}
