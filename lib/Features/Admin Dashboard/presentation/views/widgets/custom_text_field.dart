import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lable,
    required this.hintText,
  });
  final String lable, hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lable,
            style: TextStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            decoration: InputDecoration(
              border: buildOutLineInputBorder(),
              focusedBorder: buildOutLineInputBorder(),
              enabledBorder: buildOutLineInputBorder(),
              fillColor: ColorPalette.lightGrey,
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
              hintText: hintText,
              hintStyle: TextStyles.styleRegular16(context).copyWith(
                color: ColorPalette.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
