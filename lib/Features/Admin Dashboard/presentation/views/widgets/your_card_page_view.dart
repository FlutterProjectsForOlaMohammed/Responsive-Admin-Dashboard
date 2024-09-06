import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/card_section.dart';

class YourCardPageView extends StatelessWidget {
  const YourCardPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(right: 4),
          child: CardSection(),
        );
      },
    );
  }
}

/*

// return PageView.builder(
    //   onPageChanged: (value) {
    //     log(value.toString());
    //   },
    //   scrollDirection: Axis.horizontal,
    //   physics: const BouncingScrollPhysics(),
    //   itemCount: 3,
    //   itemBuilder: (context, index) {
    //     return const CardSection();
    //   },
    // );

 */