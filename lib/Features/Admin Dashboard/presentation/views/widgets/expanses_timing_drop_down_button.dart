import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/color_palette.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class ExpansesTimingDropDownButton extends StatefulWidget {
  const ExpansesTimingDropDownButton({
    super.key,
  });

  @override
  State<ExpansesTimingDropDownButton> createState() =>
      _ExpansesTimingDropDownButtonState();
}

class _ExpansesTimingDropDownButtonState
    extends State<ExpansesTimingDropDownButton> {
  List<DropdownMenuItem> dropDownMenuItems = [
    const DropdownMenuItem(
      value: "Daily",
      child: Text("Daily"),
    ),
    const DropdownMenuItem(
      value: "Weekly",
      child: Text("Weekly"),
    ),
    const DropdownMenuItem(
      value: "Monthly",
      child: Text("Monthly"),
    ),
    const DropdownMenuItem(
      value: "Yearly",
      child: Text("Yearly"),
    ),
  ];
  String selectedItem = "Daily";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          borderRadius: BorderRadius.circular(12),
          autofocus: true,
          elevation: 0,
          dropdownColor: const Color(0xffF7F9FA),
          focusColor: Colors.transparent,
          style: TextStyles.styleMedium16,
          icon: const Padding(
            padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 24,
              color: ColorPalette.darkBlue,
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
    );
  }
}
