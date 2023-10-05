import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black12,
  primarySwatch: defaultColor,
  fontFamily: 'Jannah',
  appBarTheme: const AppBarTheme(
    color: Colors.black,
    elevation: 0.0,
    titleSpacing: 20,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.black),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 20,
    backgroundColor: Colors.black12,
    unselectedIconTheme: const IconThemeData(color: Colors.white),
    unselectedItemColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: defaultColor,
  ),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
  )),
);
