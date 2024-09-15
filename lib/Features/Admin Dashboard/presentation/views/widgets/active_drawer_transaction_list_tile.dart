import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/data/models/transaction_model.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class ActiveDrawerTransactionListTile extends StatelessWidget {
  const ActiveDrawerTransactionListTile({
    super.key,
    required this.onTap,
    required this.transactionModel,
  });

  final void Function() onTap;
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const VerticalDivider(
        color: ColorPalette.lightBlue,
        thickness: 5,
      ),
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      leading: SvgPicture.asset(
        transactionModel.leadingIcon,
        height: 24,
      ),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          transactionModel.name,
          style: TextStyles.styleBold16(context),
        ),
      ),
    );
  }
}
