import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/latest_transaction_user_info_list_tile_list_view.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            "Latest Transaction",
            style: TextStyles.styleMedium16(context),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionUserInfoListTileListView(),
      ],
    );
  }
}
