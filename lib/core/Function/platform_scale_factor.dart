import 'package:flutter/material.dart';

double platformScaleFactor(BuildContext context) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < 600) {
    return screenWidth / 400;
  } else if (screenWidth < 900) {
    return screenWidth / 700;
  } else {
    return screenWidth / 1000;
  }
}
