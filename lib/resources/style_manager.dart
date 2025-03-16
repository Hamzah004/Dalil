import 'package:dalil_project/resources/fonts_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

TextStyle _getTextStyle(
    {required double fontSize,
    required FontWeight fontWeight,
    required Color color,
    String fontFamily = FontConstants.englishFontFamily}) {
  return TextStyle(
    fontSize: fontSize.sp,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

// Regular style
TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String fontFamily = FontConstants.englishFontFamily,
}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeightManager.regular, color: color, fontFamily: fontFamily);
}

// Medium style
TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String fontFamily = FontConstants.englishFontFamily,
}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeightManager.medium, color: color, fontFamily: fontFamily);
}

// Light style
TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String fontFamily = FontConstants.englishFontFamily,
}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeightManager.light, color: color, fontFamily: fontFamily);
}

// Bold style
TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String fontFamily = FontConstants.englishFontFamily,
}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeightManager.bold, color: color, fontFamily: fontFamily);
}

// SemiBold style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String fontFamily = FontConstants.englishFontFamily,
}) {
  return _getTextStyle(
      fontSize: fontSize, fontWeight: FontWeightManager.semiBold, color: color, fontFamily: fontFamily);
}
