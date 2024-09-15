import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/expanses_card_model.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/active_expanses_card.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/not_active_expanses_card.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';

class ExpansesCardList extends StatefulWidget {
  const ExpansesCardList({super.key});

  @override
  State<ExpansesCardList> createState() => _ExpansesCardListState();
}

class _ExpansesCardListState extends State<ExpansesCardList> {
  final expansedCardList = const [
    ExpansesCardModel(
        date: "April 2022",
        price: r'$20,129',
        name: "Balance",
        icon: Assets.imagesExpenses),
    ExpansesCardModel(
        date: "April 2022",
        price: r'$20,129',
        name: "Income",
        icon: Assets.imagesIncome),
    ExpansesCardModel(
        date: "April 2022",
        price: r'$20,129',
        name: "Outcome",
        icon: Assets.imagesOutcome),
  ];
  int selectedItem = 0;
  int prevoiusSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: expansedCardList.asMap().entries.map((item) {
        if (item.key == selectedItem) {
          return Expanded(
            child: Padding(
              padding: (item.key == 0)
                  ? const EdgeInsets.only(right: 8)
                  : (item.key == 1)
                      ? const EdgeInsets.only(right: 4, left: 4)
                      : const EdgeInsets.only(left: 8),
              child: ActiveExpansesCard(
                expansesCardModel: item.value,
                onTap: () {
                  setState(() {
                    selectedItem = item.key;
                  });
                },
              ),
            ),
          );
        } else {
          return Expanded(
            child: Padding(
              padding: (item.key == 0)
                  ? const EdgeInsets.only(right: 8)
                  : (item.key == 1)
                      ? const EdgeInsets.only(right: 4, left: 4)
                      : const EdgeInsets.only(left: 8),
              child: NotActiveExpansescard(
                expansesCardModel: item.value,
                onTap: () {
                  setState(() {
                    selectedItem = item.key;
                  });
                },
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
