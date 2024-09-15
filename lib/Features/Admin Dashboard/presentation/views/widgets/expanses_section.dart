import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/expanses_widget.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/quick_invoice_widget.dart';

class ExpansesSection extends StatelessWidget {
  const ExpansesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      ExpansesWidget(),
      SizedBox(
        height: 24,
      ),
      QuickInvoiceWidget(),
    ]);
  }
}
