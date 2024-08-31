import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpansesCardAppBar extends StatelessWidget {
  const ExpansesCardAppBar(
      {super.key,
      required this.icon,
      required this.arrowColor,
      required this.iconColor,
      required this.backgroundIconColor});
  final String icon;
  final Color iconColor;
  final Color backgroundIconColor;
  final Color arrowColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: backgroundIconColor,
          radius: 30,
          child: SvgPicture.asset(icon,
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn)),
        ),
        Icon(
          Icons.keyboard_arrow_right_rounded,
          color: arrowColor,
        )
      ],
    );
  }
}
