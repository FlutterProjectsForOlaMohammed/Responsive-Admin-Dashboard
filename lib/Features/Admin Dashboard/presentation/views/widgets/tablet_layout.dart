import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/expanses_section.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/your_card_and_transactions_and_income_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: ExpansesSection(),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3,
            child: YourCardAndTransactionsAndIncomeSection(),
          ),
        ],
      ),
    );
  }
}
