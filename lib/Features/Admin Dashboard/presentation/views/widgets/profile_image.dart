import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/core/Function/responsive_font_size.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.sizeOf(context).width,
      color: const Color(0xffC4C4C4),
      child: SvgPicture.asset(
        Assets.imagesPersonImage,
        height: responsiveFontSize(context, baseFont: 22),
      ),
    );
  }
}
