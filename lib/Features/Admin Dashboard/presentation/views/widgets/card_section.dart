import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/card_content.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: ColorPalette.lightBlue,
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesCardShape,
            ),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const CardContent(),
      ),
    );
  }
}
