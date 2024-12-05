import 'package:flutter/material.dart';
import 'package:touf_w_shouf/core/routing/route_animations.dart';
import 'package:touf_w_shouf/core/routing/routes.dart';
import 'package:touf_w_shouf/features/auth/presentation/views/forgot_password_view.dart';
import 'package:touf_w_shouf/features/auth/presentation/views/login_view.dart';
import 'package:touf_w_shouf/features/auth/presentation/views/signup_view.dart';
import 'package:touf_w_shouf/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:touf_w_shouf/features/home/views/home_view.dart';

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
      case Routes.loginView:
        return RouteAnimations.buildPageRoute(
          page: LoginView(),
          settings: settings,
          transitionType: TransitionType.slideFromBottom,
        );
      case Routes.signUpView:
        return RouteAnimations.buildPageRoute(
          page: SignupView(),
          settings: settings,
          transitionType: TransitionType.slideFromBottom,
        );
      case Routes.forgotPasswordView:
        return RouteAnimations.buildPageRoute(
          page: ForgotPasswordView(),
          settings: settings,
          transitionType: TransitionType.slideFromBottom,
        );
      case Routes.homeView:
        return RouteAnimations.buildPageRoute(
          page: HomeView(),
          settings: settings,
          transitionType: TransitionType.slideFromRight,
        );
      default:
        return null;
    }
  }
}
