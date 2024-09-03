import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_bottom_button.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';

class BottomRowActions extends StatelessWidget {
  const BottomRowActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomBottomButton(
              insideText: "Add more details", backgroundColor: Colors.white),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: CustomBottomButton(
              insideText: "Send Money",
              backgroundColor: ColorPalette.lightBlue),
        )
      ],
    );
  }
}
