import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/user_info_model.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/view%20models/profile_image.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/user_info_list_tile.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            const ProfileImage(),
            const SizedBox(
              height: 16,
            ),
            UserInfoListTile(
              userInfo: UserInfoModel(
                image: Assets.imagesAvatar1,
                name: "Lekan Okeowo",
                email: "demo@gmail.com",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
