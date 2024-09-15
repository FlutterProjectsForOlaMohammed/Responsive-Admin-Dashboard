import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/admin_dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const ResponsiveAdminDashboardApp(),
    ),
  );
}

class ResponsiveAdminDashboardApp extends StatelessWidget {
  const ResponsiveAdminDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const AdminDashboardView(),
    );
  }
}
