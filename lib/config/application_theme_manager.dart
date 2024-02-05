import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static Color primaryColor = const Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'El Messiri',
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0XFF707070),
        selectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontFamily: 'El Messiri',
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.white,
        )),
  );
}
