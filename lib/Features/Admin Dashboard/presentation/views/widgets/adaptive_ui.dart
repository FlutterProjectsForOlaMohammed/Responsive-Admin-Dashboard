import 'package:flutter/material.dart';

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
        if (constraints.maxWidth < 680) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 890) {
          return miniTabletLayout(context);
        } else if (constraints.maxWidth < 1250) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
