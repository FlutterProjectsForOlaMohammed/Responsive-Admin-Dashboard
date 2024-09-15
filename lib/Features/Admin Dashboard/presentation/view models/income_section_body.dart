import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/detailed_income_chart.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/income_chart.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/income_item_details_list.dart';
import 'package:responsive_admin_dashboard/core/utils/size_config.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return (MediaQuery.sizeOf(context).width >= SizeConfig.desktop &&
            MediaQuery.sizeOf(context).width <= 1350)
        ? const Padding(
            padding: EdgeInsets.all(40),
            child: AspectRatio(
              aspectRatio: 1,
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: IncomeChart(),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                flex: 3,
                child: IcomeItemDetailsList(),
              ),
            ],
          );
  }
}
