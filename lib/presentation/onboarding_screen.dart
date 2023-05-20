import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internship/component/onboard.dart';
import 'package:internship/cubit/onboarding_cubit/onboarding_cubit.dart';

import '../component/dot_indicator.dart';
import '../component/next_button.dart';
import '../component/onboarding_content.dart';
import '../component/skip_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //page controller for next page function control
  late PageController _pageController;
  // int _pageIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, int>(builder: (context, currentIndex) {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: context.read<OnboardingCubit>().changeIndex
                    // setState(() {
                    //   _pageIndex = index;
                    // });
                    ,
                    itemCount: demoData.length,
                    controller: _pageController,
                    itemBuilder: ((context, index) {
                      return Center(
                        child: OnboardingContent(
                          image: demoData[index].image,
                          title: demoData[index].title,
                        ),
                      );
                    }),
                  ),
                ),
                //dot indicator section
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      demoData.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(
                          right: 5,
                        ),
                        child: DotIndicator(
                            isActive:
                                index == context.read<OnboardingCubit>().state),
                      ),
                    ),
                  ],
                ),
                //skip and next section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Skipbutton(pageController: _pageController),
                      const Spacer(),
                      Nextbutton(
                        pageController: _pageController,
                        pageIndex: context.read<OnboardingCubit>().state,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
