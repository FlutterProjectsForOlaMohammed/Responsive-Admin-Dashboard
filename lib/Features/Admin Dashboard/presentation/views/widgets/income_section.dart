import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_container_shape.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/income_chart.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/income_header.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/income_item_details_list.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerShape(
      child: Column(
        children: [
          IncomeHeader(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: AspectRatio(aspectRatio: 1, child: IncomeChart()),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                flex: 3,
                child: IcomeItemDetailsList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
