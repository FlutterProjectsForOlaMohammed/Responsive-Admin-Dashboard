import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/transaction_model.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/drawer_transaction_list_tile.dart';

class DrawerTransactionsListView extends StatefulWidget {
  const DrawerTransactionsListView({super.key, required this.transactionsList});
  final List<TransactionModel> transactionsList;

  @override
  State<DrawerTransactionsListView> createState() =>
      _DrawerTransactionsListViewState();
}

class _DrawerTransactionsListViewState
    extends State<DrawerTransactionsListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.transactionsList.length,
      itemBuilder: (context, index) {
        return DrawerTransactionsListTile(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          isClicked: (index == selectedIndex) ? true : false,
          transactionModel: widget.transactionsList[index],
        );
      },
    );
  }
}
