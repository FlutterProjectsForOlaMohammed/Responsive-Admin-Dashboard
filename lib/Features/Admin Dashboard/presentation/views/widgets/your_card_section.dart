import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/custom_container_shape.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/dots_indicator.dart';
import 'package:responsive_admin_dashboard/Features/Admin%20Dashboard/presentation/views/widgets/your_card_page_view.dart';
import 'package:responsive_admin_dashboard/core/utils/text_styles.dart';

class YourCardSection extends StatefulWidget {
  const YourCardSection({super.key});

  @override
  State<YourCardSection> createState() => _YourCardSectionState();
}

class _YourCardSectionState extends State<YourCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    listenToCurrentPageIndex();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: CustomContainerShape(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My card",
              style: TextStyles.styleSemiBold20,
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
        ),
      ),
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
