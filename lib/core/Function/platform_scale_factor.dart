import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/size_config.dart';

double platformScaleFactor(BuildContext context) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < SizeConfig.miniTablet) {
    return screenWidth / 550;
  } else if (screenWidth < SizeConfig.tablet) {
    return screenWidth / 900;
  } else if (screenWidth < SizeConfig.desktop) {
    return screenWidth / 1200;
  } else {
    return screenWidth / 1520;
  }
}
