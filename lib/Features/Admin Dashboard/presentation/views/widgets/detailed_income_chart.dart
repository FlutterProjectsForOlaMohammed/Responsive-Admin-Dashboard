import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/pie_chart_data_model.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});
  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int touchedSection = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      getPieChartData(),
    );
  }

  PieChartData getPieChartData() {
    List<PieChartDataModel> pieChartDataList = [
      const PieChartDataModel(
          name: "Other",
          color: Color(0xffE2DECD),
          value: 24,
          radius: 50,
          showTitle: true),
      const PieChartDataModel(
          name: "Product royalti",
          color: Color(0xff064061),
          value: 20,
          radius: 50,
          showTitle: true),
      const PieChartDataModel(
          name: "Design product",
          color: Color(0xff4EB7F2),
          value: 20,
          radius: 50,
          showTitle: true),
      const PieChartDataModel(
          name: "Design service",
          color: Color(0xff208CC8),
          value: 40,
          radius: 50,
          showTitle: true),
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
            title: (touchedSection == index)
                ? pieChartDataList[index].name
                : "${pieChartDataList[index].value}%",
            titlePositionPercentageOffset:
                (touchedSection == index) ? -1.5 : null,
            titleStyle: TextStyles.styleSemiBold16(context).copyWith(
                color: (touchedSection == index)
                    ? const Color.fromARGB(255, 114, 113, 113)
                    : Colors.white),
            value: pieChartDataList[index].value,
            color: pieChartDataList[index].color,
            radius:
                (touchedSection == index) ? 55 : pieChartDataList[index].radius,
            showTitle: pieChartDataList[index].showTitle,
          );
        },
      ),
    );
  }
}
