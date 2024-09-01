import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/user_info_model.dart';
import 'package:responsive_admin_dashboard/core/Function/responsive_font_size.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfo,
  });
  final UserInfoModel userInfo;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: ColorPalette.lightGrey,
      child: Center(
        child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          leading: SvgPicture.asset(
            userInfo.image,
            height: responsiveFontSize(
              context,
              baseFont: 28,
            ),
          ),
          title: Text(
            userInfo.name,
            style: TextStyles.styleSemiBold16,
          ),
          subtitle: Text(
            userInfo.email,
            style: TextStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
