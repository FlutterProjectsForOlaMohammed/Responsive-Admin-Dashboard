import 'package:flutter/material.dart';

class CustomAdminDashboardAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAdminDashboardAppBar({
    super.key,
    required this.drawerKey,
  });
  final GlobalKey<ScaffoldState> drawerKey;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          drawerKey.currentState!.openDrawer();
        },
        icon: const Icon(Icons.menu),
        color: Colors.black,
      ),
      backgroundColor: const Color(0xffC4C4C4),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
