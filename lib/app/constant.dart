import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//color
const primaryColor = Color(0xFFFF8686);
final primaryColor20 = primaryColor.withOpacity(0.2);
final primaryColor5 = primaryColor.withOpacity(0.05);
const backgroundItemColor = Color(0xffEDEFF4);
const backgroundColor = Color(0xffF5F5F5);
const backgroundColorSecond = Color(0xff1C2433);
const secondaryColor = Color(0xffEDEFF4);
final secondaryColor75 = secondaryColor.withOpacity(0.75);
final secondaryColor60 = secondaryColor.withOpacity(0.6);
final secondaryColor45 = secondaryColor.withOpacity(0.45);
final secondaryColor40 = secondaryColor.withOpacity(0.4);
final secondaryColor35 = secondaryColor.withOpacity(0.35);
final secondaryColor25 = secondaryColor.withOpacity(0.25);
const errorColor = Color(0xFFF03738);

const darkColor = Color(0xFF2B2B2B);
const darkGreyColor = Color(0xFF232323);
const dartTitleColor = Color(0xFFBABABA);
const dartContentColor = Color(0xFFEFEFEF);
const greyPrymaryColor = Color(0xff8492A6);
const greyPrymarySecondColor = Color(0xffEFF2F7);
const titleColor = Color(0xFF1C2433);
const contentColor = Color(0xFF777777);
const borderColor = Color(0xFFDDDDDD);

const darkGreyClr = Color(0xFF121212);
const contentColorDarkTheme = Color(0xFFF5FCF9);

//gradients
final gradient1 =
    LinearGradient(colors: [primaryColor, primaryColor.withOpacity(0.3)]);
final gradient2 = LinearGradient(colors: [
  const Color(0xFFE6E6EF),
  const Color(0xFFE6E6EF).withOpacity(0.3)
]);
final gradient3 =
    LinearGradient(colors: [Colors.white, Colors.white.withOpacity(0.33)]);
final gradient4 =
    LinearGradient(colors: [Colors.white, Colors.white.withOpacity(0.15)]);
const contentColorLightTheme = Color(0xFF1D1D35);

const dividerColor = Color(0xFFDDDDDD);
Color partBackgroundColor = secondaryColor.withOpacity(0.4);
Color itemColor = secondaryColor.withOpacity(0.45);
final baseBottom = const Color(0xFF000000).withOpacity(0.15);
const categoryOddBackground = Color(0xFFDEDEDE);
const bottomUnselectColor = Color(0xFF222222);

const kDefaultPadding = 20.0;
final kDefaultPaddingWidth = 20.0;
final kDefaultPaddingHeight = 20.0;
const kDefaultPaddingScreen = 10.0;
final kDefaultPaddingWidthScreen = 10.0;
final kDefaultPaddingHeightScreen = 10.0;
const kDefaultPaddingWidget = 16.0;
final kDefaultPaddingWidthWidget = 16.0;
final kDefaultPaddingHeightWidget = 16.0;

const kDefaultBorderRadius = 6.0;
