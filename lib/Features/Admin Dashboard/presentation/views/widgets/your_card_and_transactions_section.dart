import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_container_shape.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/transaction_history_section.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/your_cards_section.dart';

class YourCardAndTransactionsSection extends StatelessWidget {
  const YourCardAndTransactionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainerShape(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YourCardsSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}
