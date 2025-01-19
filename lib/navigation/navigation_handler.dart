import 'package:finneygo/features/home/screen/home_screen.dart';
import 'package:finneygo/view/landing/landing_screen.dart';
import 'package:finneygo/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation_controller.dart';

class NavigationHandler extends ConsumerWidget {
  const NavigationHandler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final res = ref.watch(navigationProvider);

    if (!res.hasValue) return const SplashScreen();

    if (res.value!) {
      return const HomeScreen();
    } else {
      return const LandingScreen();
    }
  }
}
