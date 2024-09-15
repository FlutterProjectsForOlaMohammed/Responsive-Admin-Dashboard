import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction History",
              style: TextStyles.styleSemiBold20(context),
            ),
            Text(
              "See all",
              style: TextStyles.styleMedium16(context)
                  .copyWith(color: ColorPalette.lightBlue),
            )
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Text("13 April 2022",
            style: TextStyles.styleMedium16(context)
                .copyWith(color: ColorPalette.grey)),
      ],
    );
  }
}
