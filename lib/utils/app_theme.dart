import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData dartTheme() {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xff010201),
      tabBarTheme: const TabBarTheme(dividerColor: Colors.transparent),
      fontFamily: 'ComicNeue',
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: const Color(0xff4699FB),
      listTileTheme: const ListTileThemeData(
        tileColor: Color(0xff181818),
        textColor: Color(0xffD6D6D6),
      ),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
        elevation: 0,
        // centerTitle: true,
        backgroundColor: Color(0xff181818),
        iconTheme: IconThemeData(color: Color(0xffCCCCCC)),
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xffCCCCCC),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff4699FB),
      ),
      dividerTheme: const DividerThemeData(
        color: Color(0xff2F2F2F),
        space: 1,
        thickness: 1,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xff181818),
        selectedItemColor: Color(0xff4699FB),
      ),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: 'ComicNeue',
      primaryColor: Color(0xff4699FB),
      scaffoldBackgroundColor: Color(0xffF3F4F6),
      useMaterial3: true,
      chipTheme: const ChipThemeData(
        padding: EdgeInsets.symmetric(horizontal: 10),
      ),
      listTileTheme: const ListTileThemeData(tileColor: Colors.white),
      dividerTheme: const DividerThemeData(
        color: Color(0xffDEE0E2),
        space: 1,
        thickness: 1,
      ),
      tabBarTheme: const TabBarTheme(
        dividerColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        elevation: 0,
        // centerTitle: true,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
