import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.lightGreen,
    brightness: Brightness.light,
    primaryColor: Color(0xff8bc34a),
    primaryColorLight: Color(0xffdcedc8),
    primaryColorDark: Color(0xff689f38),
    canvasColor: Color(0xfffafafa),
    scaffoldBackgroundColor: Color(0xfffafafa),
    cardColor: Color(0xffffffff),
    dividerColor: Color(0x1f000000),
    highlightColor: Color(0x66bcbcbc),
    splashColor: Color(0x66c8c8c8),
    unselectedWidgetColor: Color(0x8a000000),
    disabledColor: Color(0x61000000),
    secondaryHeaderColor: Color(0xfff1f8e9),
    dialogBackgroundColor: Color(0xffffffff),
    indicatorColor: Color(0xff8bc34a),
    hintColor: Color(0x8a000000),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xff8bc34a), brightness: Brightness.light),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        height: 1.50,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.43,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        height: 1.33,
      ),
    ),
    useMaterial3: true);

final ThemeData dartTheme = ThemeData(
    primarySwatch: Colors.lightGreen,
    brightness: Brightness.dark,
    primaryColor: Color(0xff212121),
    primaryColorLight: Color(0xff9e9e9e),
    primaryColorDark: Color(0xff000000),
    canvasColor: Color(0xff303030),
    scaffoldBackgroundColor: Color(0xff303030),
    cardColor: Color(0xff424242),
    dividerColor: Color(0x1fffffff),
    highlightColor: Color(0x40cccccc),
    splashColor: Color(0x40cccccc),
    unselectedWidgetColor: Color(0xb3ffffff),
    disabledColor: Color(0x62ffffff),
    secondaryHeaderColor: Color(0xff616161),
    dialogBackgroundColor: Color(0xff424242),
    indicatorColor: Colors.lightGreen,
    hintColor: Color(0x80ffffff),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xff8bc34a), brightness: Brightness.dark),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        height: 1.50,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.43,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        height: 1.33,
      ),
    ),
    useMaterial3: true);
