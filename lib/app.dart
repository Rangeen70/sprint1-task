import 'package:flutter/material.dart';
import 'package:task/theme/theme_data.dart';
import 'package:task/view/loginscreen.dart';
import 'package:task/view/onboardscreen.dart';
import 'package:task/view/registerscreen.dart';

import 'view/dashboardscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/login",
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        routes: {
          "/Onboarding": (context) => const OnboardScreen(),
          "/login": (context) => const LoginScreen(),
          "/register": (context) => const RegisterScreen(),
          "/dashboard": (context) => const DashboardScreen(),
        });
  }
}
