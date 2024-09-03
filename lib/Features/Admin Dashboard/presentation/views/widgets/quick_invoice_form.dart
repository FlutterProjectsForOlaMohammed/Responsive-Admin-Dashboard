import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/currency_section.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                  lable: "Customer name", hintText: "Type customer name"),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTextField(
                  lable: "Customer Email", hintText: "Type customer email"),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                child: CustomTextField(
                    lable: "Item name", hintText: "Type customer name")),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CurrencySection(),
            ),
          ],
        )
      ],
    );
  }
}
