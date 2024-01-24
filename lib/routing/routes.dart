import 'package:osta_app_delivery/common/screens/no_connection/no_connection.dart';
import 'package:osta_app_delivery/features/authentication/presentation/login/login_screen.dart';
import 'package:osta_app_delivery/features/authentication/presentation/onboarding/onboarding.dart';
import 'package:osta_app_delivery/features/authentication/presentation/signup/signup_screen.dart';
import 'package:osta_app_delivery/features/splash/splash_screen.dart';
import 'package:osta_app_delivery/routing/routes_name.dart';
import 'package:page_transition/page_transition.dart';

import '../utils/constants/exports.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      /// *************************************** Start No Connection *************************************** \\\
      case ORoutesName.noConnectionRoute:
        return PageTransition(
          child: const NoConnectionScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      /// *************************************** End No Connection *************************************** \\\

      /// *************************************** Start Authentication *************************************** \\\
      case ORoutesName.splashRoute:
        return PageTransition(
          child: const SplashScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
        case ORoutesName.onBoardingRoute:
        return PageTransition(
          child: const OnBoardingScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case ORoutesName.loginRoute:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case ORoutesName.signupRoute:
        return PageTransition(
          child: const SignupScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      /// *************************************** End Authentication *************************************** \\\

      /// *************************************** Start Navigation Bar *************************************** \\\
      // case ORoutesName.navigationMenuRoute:
      //   return PageTransition(
      //     child: const NavigationMenu(),
      //     type: PageTransitionType.fade,
      //     settings: settings,
      //     reverseDuration: const Duration(milliseconds: 250),
      //   );
      default:
        return unDefinedRoute();
    }
  }

  /// Un Defined Route
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(
            '',
          ),
        ),
        body: const Center(
          child: Text(
            '',
          ),
        ),
      ),
    );
  }
}
