import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/Function/platform_scale_factor.dart';

double responsiveFontSize(
  BuildContext context, {
  required double baseFont,
}) {
  double scaleFactor = platformScaleFactor(context);
  double fontSize = scaleFactor * baseFont;
  return fontSize.clamp(baseFont * 0.9, baseFont * 1.4);
}
