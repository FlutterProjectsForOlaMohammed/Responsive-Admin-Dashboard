import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 31, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Name card",
              style: TextStyles.styleRegular16(context)
                  .copyWith(color: ColorPalette.white),
            ),
            subtitle: Text(
              "Syah Bandi",
              style: TextStyles.styleMedium20(context),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SvgPicture.asset(Assets.imagesPersonImage),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Text(
            "0918 8124 0042 8129",
            style: TextStyles.styleSemiBold24(context).copyWith(
              color: ColorPalette.white,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "12/20 - 124",
            style: TextStyles.styleRegular16(context)
                .copyWith(color: ColorPalette.white),
          ),
          const Flexible(
            child: SizedBox(
              height: 27,
            ),
          ),
        ],
      ),
    );
  }
}
