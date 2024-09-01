import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/user_info_model.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/user_info_list_tile.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';

class LatestTransactionUserInfoListTileListView extends StatelessWidget {
  const LatestTransactionUserInfoListTileListView({super.key});
  static const userInfoList = [
    UserInfoModel(
      name: "Madrani Andi",
      email: "Madraniadi20@gmail",
      image: Assets.imagesAvatar3,
    ),
    UserInfoModel(
      name: "Josua Nunito",
      email: "Josh Nunito@gmail.com",
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      name: "Madrani Andi",
      email: "Madraniadi20@gmail",
      image: Assets.imagesAvatar3,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoList.map((element) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              userInfo: element,
            ),
          );
        }).toList(),
      ),
    );
  }
}
