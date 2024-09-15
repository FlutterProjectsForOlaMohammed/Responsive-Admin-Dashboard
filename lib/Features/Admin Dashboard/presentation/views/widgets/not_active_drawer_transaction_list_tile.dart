import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/transaction_model.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class NotActiveDrawerTransactionListTile extends StatelessWidget {
  const NotActiveDrawerTransactionListTile({
    super.key,
    required this.onTap,
    required this.transactionModel,
  });

  final void Function() onTap;
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      leading: SvgPicture.asset(
        transactionModel.leadingIcon,
        height: 24,
      ),
      title: Text(
        transactionModel.name,
        style: TextStyles.styleRegular16(context),
      ),
    );
  }
}
