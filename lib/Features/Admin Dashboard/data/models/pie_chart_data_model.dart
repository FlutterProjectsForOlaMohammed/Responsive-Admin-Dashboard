import 'package:flutter/material.dart';

class PieChartDataModel {
  final String name;
  final Color color;
  final double value, radius;
  final bool showTitle;

  const PieChartDataModel({
    required this.name,
    required this.color,
    required this.value,
    required this.radius,
    required this.showTitle,
  });
}
