import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive ? ColorPalette.lightBlue : const Color(0xffE8E8E8),
      ),
    );
  }
}
