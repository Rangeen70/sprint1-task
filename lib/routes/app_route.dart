import 'package:task/view/loginscreen.dart';
import 'package:task/view/onboardscreen.dart';

class AppRoute {
  AppRoute._();

  static String onboardScreenRoute = '/';
  static String registerscreenRoute = '/registerscreen';
  static String loginScreenRoute = '/loginscreen';
  static String dashboardScreenRoute = '/dashboardscreen';

  static final routes = {
    onboardScreenRoute: (context) => const OnboardScreen(),
    loginScreenRoute: (context) => const LoginScreen(),
    // Add other routes here
  };
}
