import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/pie_chart_data_model.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedSection = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      getPieChartData(),
    );
  }

  PieChartData getPieChartData() {
    const List<PieChartDataModel> pieChartDataList = [
      PieChartDataModel(
          name: "Other",
          color: Color(0xffE2DECD),
          value: 24,
          radius: 24,
          showTitle: false),
      PieChartDataModel(
          name: "Product royalti",
          color: Color(0xff064061),
          value: 20,
          radius: 24,
          showTitle: false),
      PieChartDataModel(
          name: "Design product",
          color: Color(0xff4EB7F2),
          value: 20,
          radius: 24,
          showTitle: false),
      PieChartDataModel(
          name: "Design service",
          color: Color(0xff208CC8),
          value: 40,
          radius: 24,
          showTitle: false),
    ];
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          setState(() {
            touchedSection = p1?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: List.generate(
        pieChartDataList.length,
        (index) {
          return PieChartSectionData(
            value: pieChartDataList[index].value,
            color: pieChartDataList[index].color,
            radius:
                (touchedSection == index) ? 26 : pieChartDataList[index].radius,
            showTitle: pieChartDataList[index].showTitle,
          );
        },
      ),
    );
  }
}
