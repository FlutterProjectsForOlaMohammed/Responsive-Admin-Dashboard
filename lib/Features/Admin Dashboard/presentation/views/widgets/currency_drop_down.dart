import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class CurrencyDropDown extends StatefulWidget {
  const CurrencyDropDown({super.key});

  @override
  State<CurrencyDropDown> createState() => _CurrencyDropDownState();
}

class _CurrencyDropDownState extends State<CurrencyDropDown> {
  String selectedItem = "USD";
  List<DropdownMenuItem> dropDownMenuItems = [
    const DropdownMenuItem(
      value: "USD",
      child: Text("USD", style: TextStyles.styleMedium16),
    ),
    const DropdownMenuItem(
      value: "EGP",
      child: Text("EGP", style: TextStyles.styleMedium16),
    ),
    const DropdownMenuItem(
      value: "EUR",
      child: Text("EUR", style: TextStyles.styleMedium16),
    ),
    const DropdownMenuItem(
      value: "INR",
      child: Text("INR", style: TextStyles.styleMedium16),
    ),
    const DropdownMenuItem(
      value: "JPY",
      child: Text("JPY", style: TextStyles.styleMedium16),
    ),
    const DropdownMenuItem(
      value: "AUD",
      child: Text("AUD", style: TextStyles.styleMedium16),
    ),
    const DropdownMenuItem(
      value: "GBP",
      child: Text("GBP", style: TextStyles.styleMedium16),
    ),
    const DropdownMenuItem(
      value: "CAD",
      child: Text("CAD", style: TextStyles.styleMedium16),
    ),
    const DropdownMenuItem(
      value: "CHF",
      child: Text("CHF", style: TextStyles.styleMedium16),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        border: Border.all(
          color: const Color(0xffFAFAFA),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton(
              borderRadius: BorderRadius.circular(12),
              autofocus: true,
              elevation: 0,
              dropdownColor: const Color(0xffFAFAFA),
              focusColor: Colors.transparent,
              style:
                  TextStyles.styleMedium16.copyWith(color: ColorPalette.grey),
              selectedItemBuilder: (context) {
                return selectedItemStyle;
              },
              icon: Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                child: SvgPicture.asset(
                  Assets.imagesArrowDown,
                  colorFilter: const ColorFilter.mode(
                      ColorPalette.darkBlue, BlendMode.srcIn),
                ),
              ),
              value: selectedItem,
              items: dropDownMenuItems,
              onChanged: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }

  List<Widget> get selectedItemStyle {
    return [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          selectedItem,
          style: TextStyles.styleMedium16.copyWith(color: ColorPalette.grey),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          selectedItem,
          style: TextStyles.styleMedium16.copyWith(color: ColorPalette.grey),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          selectedItem,
          style: TextStyles.styleMedium16.copyWith(color: ColorPalette.grey),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          selectedItem,
          style: TextStyles.styleMedium16.copyWith(color: ColorPalette.grey),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          selectedItem,
          style: TextStyles.styleMedium16.copyWith(color: ColorPalette.grey),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          selectedItem,
          style: TextStyles.styleMedium16.copyWith(color: ColorPalette.grey),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          selectedItem,
          style: TextStyles.styleMedium16.copyWith(color: ColorPalette.grey),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          selectedItem,
          style: TextStyles.styleMedium16.copyWith(color: ColorPalette.grey),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          selectedItem,
          style: TextStyles.styleMedium16.copyWith(color: ColorPalette.grey),
        ),
      ),
    ];
  }
}
