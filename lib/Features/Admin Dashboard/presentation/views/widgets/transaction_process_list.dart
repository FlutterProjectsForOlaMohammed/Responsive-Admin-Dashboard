import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/transaction_process_model.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/transaction_process_list_tile.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';

class TransactionProcessList extends StatelessWidget {
  const TransactionProcessList({super.key});
  static const List<TransactionProcessModel> transactionProcessList = [
    TransactionProcessModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022",
      amount: r"$20,129",
      amountColor: ColorPalette.orange,
    ),
    TransactionProcessModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$2,000",
      amountColor: ColorPalette.green,
    ),
    TransactionProcessModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$20,129",
      amountColor: ColorPalette.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionProcessList.map((element) {
        return TransactionProcessListTile(
          transactionProcessModel: element,
        );
      }).toList(),
    );
  }
}
