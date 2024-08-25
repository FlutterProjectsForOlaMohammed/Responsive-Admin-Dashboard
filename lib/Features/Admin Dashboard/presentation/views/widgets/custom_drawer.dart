import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/user_info_model.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/drawer_transaction_list_view.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/profile_image.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/user_info_list_tile.dart';
import 'package:responsive_admin_dashboard/core/constants.dart';
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
        padding: const EdgeInsets.only(left: 28, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
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
            Expanded(
              child: DrawerTransactionsListView(
                transactionsList: drawerTransactionsList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
