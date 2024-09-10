import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/pie_chart_data_model.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.pieChartDataModel});
  final PieChartDataModel pieChartDataModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 6,
            backgroundColor: pieChartDataModel.color,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            pieChartDataModel.name,
            style: TextStyles.styleRegular16,
          ),
          const Spacer(),
          Text(
            "${pieChartDataModel.value}%",
            style: TextStyles.styleMedium16
                .copyWith(color: const Color(0xff208CC8)),
          ),
        ],
      ),
    );
  }
}
