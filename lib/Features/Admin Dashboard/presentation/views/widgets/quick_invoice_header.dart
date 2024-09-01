import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesQuick),
          const Spacer(),
          const CircleAvatar(
            radius: 24,
            backgroundColor: ColorPalette.lightGrey,
            child: Icon(
              Icons.add,
              color: ColorPalette.lightBlue,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
