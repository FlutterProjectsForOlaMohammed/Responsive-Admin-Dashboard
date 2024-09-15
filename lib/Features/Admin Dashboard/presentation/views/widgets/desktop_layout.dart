import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/expanses_section.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/your_card_and_transactions_and_income_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 7,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40, bottom: 32),
                        child: ExpansesSection(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40, bottom: 32),
                        child: YourCardAndTransactionsAndIncomeSection(),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
