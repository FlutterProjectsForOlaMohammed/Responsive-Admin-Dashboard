import 'package:flutter/material.dart';

class TransactionProcessModel {
  final String title, date, amount;
  final Color amountColor;
  const TransactionProcessModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.amountColor,
  });
}
