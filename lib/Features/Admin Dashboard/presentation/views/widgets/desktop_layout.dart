import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/expanses_section.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/your_card_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 4,
          child: ExpansesSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: YourCardSection(),
        ),
      ],
    );
  }
}
