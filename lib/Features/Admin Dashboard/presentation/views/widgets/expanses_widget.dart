import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_container_shape.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/expanses_card_list.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/expanses_widget_header.dart';

class ExpansesWidget extends StatelessWidget {
  const ExpansesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerShape(
      child: Column(
        children: [
          ExpansesWidgetHeader(),
          SizedBox(
            height: 16,
          ),
          ExpansesCardList(),
        ],
      ),
    );
  }
}
