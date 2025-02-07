import 'package:flutter/material.dart';

import 'colors.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.red).copyWith(
    surface: AppColors.background,
  ),
  fontFamily: 'Titillium',
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius:
      BorderRadius.circular(5),
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    color: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primary,
    iconTheme: IconThemeData(
      color: Colors.white
    ),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  ),
  useMaterial3: true,
);