import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_container_shape.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/latest_transaction_widget.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/quick_invoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainerShape(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 4,
          ),
          LatestTransactionWidget(),
        ],
      ),
    );
  }
}
