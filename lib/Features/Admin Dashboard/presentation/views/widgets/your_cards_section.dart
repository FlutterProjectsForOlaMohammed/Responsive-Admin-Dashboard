import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/dots_indicator.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/your_card_page_view.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class YourCardsSection extends StatefulWidget {
  const YourCardsSection({
    super.key,
  });

  @override
  State<YourCardsSection> createState() => _YourCardsSectionState();
}

class _YourCardsSectionState extends State<YourCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    listenToCurrentPageIndex();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: TextStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        YourCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        DotsIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }

  void listenToCurrentPageIndex() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
  }
}
