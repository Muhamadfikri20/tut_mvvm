import 'package:flutter/material.dart';
import 'package:tut_mvvm/presentation/color_manager.dart';
import 'package:tut_mvvm/presentation/font_manager.dart';
import 'package:tut_mvvm/presentation/styles_manager.dart';
import 'package:tut_mvvm/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    // ripple color
    splashColor: ColorManager.primaryOpacity70,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),
    // card view theme
    cardTheme: CardTheme(color: ColorManager.white, shadowColor: ColorManager.grey, elevation: AppSize.s4),
    // App bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16)),
  );
}
