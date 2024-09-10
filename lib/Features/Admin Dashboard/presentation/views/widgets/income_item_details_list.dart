import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/pie_chart_data_model.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/icome_item_details.dart';

class IcomeItemDetailsList extends StatelessWidget {
  const IcomeItemDetailsList({super.key});
  static const List<PieChartDataModel> pieChartDataList = [
    PieChartDataModel(
        name: "Design service",
        color: Color(0xff208CC8),
        value: 40,
        radius: 25,
        showTitle: false),
    PieChartDataModel(
        name: "Design product",
        color: Color(0xff4EB7F2),
        value: 25,
        radius: 25,
        showTitle: false),
    PieChartDataModel(
        name: "Product royalti",
        color: Color(0xff064061),
        value: 20,
        radius: 25,
        showTitle: false),
    PieChartDataModel(
        name: "Other",
        color: Color(0xffE2DECD),
        value: 22,
        radius: 25,
        showTitle: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: pieChartDataList.map((element) {
        return IncomeItemDetails(
          pieChartDataModel: element,
        );
      }).toList(),
    );
  }
}
