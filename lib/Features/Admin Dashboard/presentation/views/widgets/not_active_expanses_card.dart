import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/expanses_card_model.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/expanses_card_app_bar.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class NotActiveExpansescard extends StatelessWidget {
  const NotActiveExpansescard(
      {super.key, required this.expansesCardModel, required this.onTap});
  final ExpansesCardModel expansesCardModel;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorPalette.white,
          border: Border.all(
            color: const Color(
              0xffF1F1F1,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansesCardAppBar(
              icon: expansesCardModel.icon,
              backgroundIconColor: ColorPalette.lightGrey,
              arrowColor: ColorPalette.darkBlue,
              iconColor: ColorPalette.lightBlue,
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(expansesCardModel.name,
                  style: TextStyles.styleSemiBold16(context)),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(expansesCardModel.date,
                style: TextStyles.styleRegular14(context)),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(expansesCardModel.price,
                  style: TextStyles.styleSemiBold24(context)),
            ),
          ],
        ),
      ),
    );
  }
}
