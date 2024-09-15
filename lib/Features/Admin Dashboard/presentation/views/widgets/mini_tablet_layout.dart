import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/expanses_section.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/your_card_and_transactions_and_income_section.dart';

class MiniTabletLayout extends StatelessWidget {
  const MiniTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ExpansesSection(),
                  YourCardAndTransactionsAndIncomeSection(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
