import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/custom_admin_dashboard_app_bar.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/adaptive_ui.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/desktop_layout.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/mini_tablet_layout.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/mobile_layout.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/tablet_layout.dart';
import 'package:responsive_admin_dashboard/core/utils/size_config.dart';

class AdminDashboardView extends StatelessWidget {
  const AdminDashboardView({super.key});

  static GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.miniTablet ||
              (MediaQuery.sizeOf(context).width >= SizeConfig.tablet &&
                  MediaQuery.sizeOf(context).width < SizeConfig.desktop)
          ? const CustomDrawer()
          : null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.miniTablet ||
              (MediaQuery.sizeOf(context).width >= SizeConfig.tablet &&
                  MediaQuery.sizeOf(context).width < SizeConfig.desktop)
          ? CustomAdminDashboardAppBar(
              drawerKey: drawerKey,
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveUI(
        mobileLayout: (context) => const MobileLayout(),
        miniTabletLayout: (context) => const MiniTabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
        tabletLayout: (context) => const TabletLayout(),
      ),
    );
  }
}
