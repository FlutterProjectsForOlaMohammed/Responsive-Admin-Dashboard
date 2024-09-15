import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/size_config.dart';

class AdaptiveUI extends StatelessWidget {
  const AdaptiveUI({
    super.key,
    required this.mobileLayout,
    required this.desktopLayout,
    required this.tabletLayout,
    required this.miniTabletLayout,
  });
  final WidgetBuilder mobileLayout,
      desktopLayout,
      tabletLayout,
      miniTabletLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.miniTablet) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.tablet) {
          return miniTabletLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
