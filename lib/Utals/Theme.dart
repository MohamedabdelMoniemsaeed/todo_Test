import 'package:flutter/material.dart';
import 'package:todo/Utals/Colors.dart';

abstract class AppTheme {
  static const TextStyle appBar = TextStyle(
      fontSize: 25, color: AppColors.white, fontWeight: FontWeight.bold);
  static const TextStyle done = TextStyle(
      fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.grean);
  static const TextStyle TeamText =
      TextStyle(fontSize: 12, color: AppColors.textTaem);
  static const TextStyle titaltext = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primiary);
  static const TextStyle addandEdit = TextStyle(
      fontSize: 18, color: AppColors.black, fontWeight: FontWeight.bold);
  static const TextStyle selectteam =
      TextStyle(fontSize: 20, color: AppColors.black);
  static const TextStyle landark = TextStyle(
      fontSize: 14, color: AppColors.black, fontWeight: FontWeight.bold);

  static ThemeData laghtTheme = ThemeData(
    primaryColor: AppColors.primiary,
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primiary,
        elevation: 0,
        titleTextStyle: AppTheme.appBar),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 32),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.primiary,
      unselectedItemColor: AppColors.dawnbutton,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 0,
      shape: StadiumBorder(
        side: BorderSide(color: AppColors.white, width: 4),
      ),
    ),
    dividerTheme: const DividerThemeData(
        color: AppColors.primiary,
        thickness: 5,
        space: 17,
        endIndent: 26,
        indent: 26),
  );
  
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primiary,
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primiary,
        elevation: 0,
        titleTextStyle: AppTheme.appBar),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 32),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: AppColors.primiary,
      unselectedItemColor: AppColors.dawnbutton,
    ),
  );
}
