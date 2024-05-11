import 'package:flutter/material.dart';

const Color purple80 = Color(0xFFD0BCFF);
const Color purpleGrey80 = Color(0xFFCCC2DC);
const Color pink80 = Color(0xFFEFB8C8);
const Color purple40 = Color(0xFF6650a4);
const Color purpleGrey40 = Color(0xFF625b71);
const Color pink40 = Color(0xFF7D5260);
const Color white = Color(0xFFFFFFFF);
const Color black = Color(0xFF000000);
const Color black80 = Color(0xFF252525);
const black50 = Color(0xFF191919);
const red = Color(0xFFB3261E);
const lightGray = Color(0xffF6F6F6);


class AppColors extends ThemeExtension<AppColors>{
  final Color? white;
  final Color? black;
  final Color? progressbarBackground;

  const AppColors({
    required this.white,
    required this.black,
    required this.progressbarBackground,
  });

  @override
  AppColors copyWith({
    Color? white,
    Color? black,
    Color? progressbarBackground,
  }) {
    return AppColors(
      white: white ?? this.white,
      black: black ?? this.black,
      progressbarBackground: progressbarBackground ?? this.progressbarBackground,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      white: Color.lerp(white, other.white, t),
      black: Color.lerp(black, other.black, t),
      progressbarBackground: Color.lerp(progressbarBackground, other.progressbarBackground, t),
    );
  }
}
AppColors colors(context) => Theme.of(context).extension<AppColors>()!;


extension  HexColor on Color{
  static  Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll("#", "");
    if(hexColorString.length == 6){
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString,radix: 16));
  }
}