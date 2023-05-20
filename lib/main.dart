import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internship/cubit/onboarding_cubit/onboarding_cubit.dart';
import 'cubit/home_bottom_bar_cubit/home_screen_bottombar_cubit.dart';
import 'presentation/onboarding_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => OnboardingCubit()),
        BlocProvider(create: (ctx) => HomeScreenBottomBarCubit()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen(),
      ),
    );
  }
}
