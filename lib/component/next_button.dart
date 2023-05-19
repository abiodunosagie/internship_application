import 'package:flutter/material.dart';
import 'package:internship/component/onboard.dart';
import 'package:internship/presentation/profile_page.dart';

import '../widget/appstyle.dart';

class Nextbutton extends StatelessWidget {
  const Nextbutton({
    super.key,
    required PageController pageController,
    required this.pageIndex,
  }) : _pageController = pageController;
  final int pageIndex;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (pageIndex == demoData.length - 1) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => const ProfileScreen()),
            ),
          );
        } else {
          _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
          //navigation function below
        }
      },
      child: Text(
        (pageIndex == demoData.length - 1) ? 'Go' : 'Next',
        style: kNextButton,
      ),
    );
  }
}
