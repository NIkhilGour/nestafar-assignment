import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home_page.dart';
//import 'package:food_delivery/services/auth/auth_gate.dart';

import 'package:lottie/lottie.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset(
              "assets/lottie/Animation - 1711883318452.json",
            ),
          ),
        ],
      ),
      nextScreen: HomePage(),
      animationDuration: Durations.long1,
      splashIconSize: 300,
      backgroundColor: Theme.of(context).colorScheme.surface,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
