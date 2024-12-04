import 'package:flutter/material.dart';
import 'package:touf_w_shouf/core/routing/route_animations.dart';
import 'package:touf_w_shouf/core/routing/routes.dart';
import 'package:touf_w_shouf/features/onboarding/presentation/views/onboarding_view.dart';

class AppRouter {
  Route<dynamic>? generateRouter(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      // case Routes.splashView:
      //   return MaterialPageRoute(
      //     builder: (context) => const SplashView(),
      //   );
      case Routes.onboardingView:
        return RouteAnimations.buildPageRoute(
          page: OnboardingView(),
          settings: settings,
          transitionType: TransitionType.slideFromBottom,
        );
      default:
        return null;
    }
  }
}