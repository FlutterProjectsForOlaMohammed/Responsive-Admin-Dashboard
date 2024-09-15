import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/currency_drop_down.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class CurrencySection extends StatelessWidget {
  const CurrencySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Item amount",
          style: TextStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const CurrencyDropDown(),
      ],
    );
  }
}
