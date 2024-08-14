import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/admin_dashboard_view.dart';

void main() {
  runApp(const ResponsiveAdminDashboardApp());
}

class ResponsiveAdminDashboardApp extends StatelessWidget {
  const ResponsiveAdminDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AdminDashboardView(),
    );
  }
}
