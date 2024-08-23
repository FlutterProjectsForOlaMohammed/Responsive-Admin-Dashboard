import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/adaptive_ui.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/desktop_layout.dart';

class AdminDashboardView extends StatelessWidget {
  const AdminDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveUI(
        mobileLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayout(),
        tabletLayout: (context) => const SizedBox(),
      ),
    );
  }
}
