import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class CustomBottomButton extends StatelessWidget {
  const CustomBottomButton(
      {super.key, required this.insideText, required this.backgroundColor});
  final String insideText;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorPalette.lightBlue),
        borderRadius: BorderRadius.circular(12),
      ),
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(vertical: 16),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        onPressed: () {},
        child: Text(
          insideText,
          style: (backgroundColor == Colors.white)
              ? TextStyles.styleSemiBold18(context).copyWith(
                  color: ColorPalette.lightBlue,
                )
              : TextStyles.styleSemiBold18(context),
        ),
      ),
    );
  }
}
