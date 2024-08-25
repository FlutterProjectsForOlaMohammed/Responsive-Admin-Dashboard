import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/transaction_model.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/active_drawer_transaction_list_tile.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/not_active_drawer_transaction_list_tile.dart';

class DrawerTransactionsListTile extends StatelessWidget {
  const DrawerTransactionsListTile(
      {super.key,
      required this.transactionModel,
      required this.isClicked,
      required this.onTap});
  final TransactionModel transactionModel;
  final bool isClicked;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: isClicked
          ? ActiveDrawerTransactionListTile(
              onTap: onTap,
              transactionModel: transactionModel,
            )
          : NotActiveDrawerTransactionListTile(
              onTap: onTap,
              transactionModel: transactionModel,
            ),
    );
  }
}
