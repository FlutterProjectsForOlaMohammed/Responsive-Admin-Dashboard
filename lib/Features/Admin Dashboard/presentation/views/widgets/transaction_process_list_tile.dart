import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/transaction_process_model.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class TransactionProcessListTile extends StatelessWidget {
  const TransactionProcessListTile(
      {super.key, required this.transactionProcessModel});
  final TransactionProcessModel transactionProcessModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Card(
        elevation: 0,
        color: ColorPalette.lightGrey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              transactionProcessModel.title,
              style: TextStyles.styleSemiBold16(context),
            ),
            subtitle: Text(
              transactionProcessModel.date,
              style: TextStyles.styleRegular16(context)
                  .copyWith(color: ColorPalette.grey),
            ),
            trailing: Text(
              transactionProcessModel.amount,
              style: TextStyles.styleSemiBold20(context).copyWith(
                color: transactionProcessModel.amountColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
