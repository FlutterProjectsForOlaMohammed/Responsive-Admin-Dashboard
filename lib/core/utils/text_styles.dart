import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/Function/responsive_font_size.dart';

abstract class TextStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontSize: responsiveFontSize(context, baseFont: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontSize: responsiveFontSize(context, baseFont: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontSize: responsiveFontSize(context, baseFont: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontFamily: 'Montserrat',
      fontSize: responsiveFontSize(context, baseFont: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontSize: responsiveFontSize(context, baseFont: 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontFamily: 'Montserrat',
      fontSize: responsiveFontSize(context, baseFont: 20),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontFamily: 'Montserrat',
      fontSize: responsiveFontSize(context, baseFont: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontFamily: 'Montserrat',
      fontSize: responsiveFontSize(context, baseFont: 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontFamily: 'Montserrat',
      fontSize: responsiveFontSize(context, baseFont: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontFamily: 'Montserrat',
      fontSize: responsiveFontSize(context, baseFont: 18),
      fontWeight: FontWeight.w600,
    );
  }
}

getScreenWidth() {
  /*
  First Get Physical Width of Screen 
  then Get Device Pixel Ratio of Screen 
  finally divide Physical Width by Device Pixel Ratio of Screen 
   */
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  var width = physicalWidth / devicePixelRatio;
// this width is equal to MediaQuery.sizeOf(context).width
}
