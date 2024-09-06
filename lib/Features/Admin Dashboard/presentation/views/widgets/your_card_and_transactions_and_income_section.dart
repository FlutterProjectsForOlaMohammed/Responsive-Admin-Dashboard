import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/income_section.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/your_card_and_transactions_section.dart';

class YourCardAndTransactionsAndIncomeSection extends StatelessWidget {
  const YourCardAndTransactionsAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            YourCardAndTransactionsSection(),
            SizedBox(
              height: 24,
            ),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}
