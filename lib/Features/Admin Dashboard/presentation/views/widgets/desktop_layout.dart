import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/expanses_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        const Expanded(
          flex: 3,
          child: ExpansesSection(),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white,
            child: const Text("data"),
          ),
        ),
      ],
    );
  }
}
