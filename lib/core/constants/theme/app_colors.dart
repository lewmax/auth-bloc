import 'package:flutter/material.dart';

final appTheme = ThemeData(
  fontFamily: 'OakSans',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.light,
    ),
  ),
);

abstract class AppColors {
  static const primary = Color(0xFF486AE5);
  static const darkPrimary = Color(0xFF2D4380);
  static const secondary = Color(0xFF24BBEF);
  static const background = Color(0xFF080A0E);
  static const white = Color(0xFFFFFCFC);
  static const light = Color(0xFFC6C4C4);
  static const darkGrey = Color(0xFF1A1B1E);
  static const darkGrey1 = Color(0xff282526);
  static const darkGrey2 = Color(0xFF303237);
  static const darkGrey3 = Color(0xFF1A1B1E);
  static const lightGrey = Color(0xFF696A6C);
  static const lightGrey1 = Color(0xFF5C5D5F);
  static const red = Color(0xFFE44848);
  static const redBg = Color(0xFF382323);
  static const purple = Color(0xFFB09FFF);
  static const middleGrey = Color(0xFF222630);
  static const green = Color(0xFF62AB45);
  static const green1 = Color(0xFF34A853);
  static const grey1 = Color(0x696A6C4A);
  static const grey2 = Color(0xFFA1A1AA);
  static const grey3 = Color(0xFF7E7E7E);
  static const dark = Color.fromRGBO(8, 10, 14, 0.6);
  static const dark1 = Color(0x0DFFFFFF);
  static const darkBlue = Color(0x3324BBEF);

  static const gradient1 = LinearGradient(
    colors: [Color(0xFF171A24), Color(0xFF486AE5), Color(0xFF171A24)],
  );
}
