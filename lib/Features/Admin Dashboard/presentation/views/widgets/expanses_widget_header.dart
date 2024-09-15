import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/expanses_timing_drop_down_button.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class ExpansesWidgetHeader extends StatelessWidget {
  const ExpansesWidgetHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: TextStyles.styleSemiBold20(context),
        ),
        const ExpansesTimingDropDownButton(),
      ],
    );
  }
}
