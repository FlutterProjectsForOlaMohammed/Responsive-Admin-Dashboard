import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/view%20models/income_section_body.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_container_shape.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/income_header.dart';
import 'package:responsive_admin_dashboard/core/utils/size_config.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return (MediaQuery.sizeOf(context).width >= SizeConfig.tablet)
        ? const Flexible(
            child: CustomContainerShape(
              child: Column(
                children: [
                  IncomeHeader(),
                  Flexible(
                    child: IncomeSectionBody(),
                  ),
                ],
              ),
            ),
          )
        : const CustomContainerShape(
            child: Column(
              children: [
                IncomeHeader(),
                IncomeSectionBody(),
              ],
            ),
          );
  }
}
