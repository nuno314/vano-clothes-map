import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vano_clothes_map/config/routes/routes.dart';
import 'package:vano_clothes_map/modules/new_user/onboarding_page.dart';
import 'package:vano_clothes_map/modules/new_user/splash_page.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'SplashPage':
        {
          return MaterialPageRoute(builder: (_) => SplashPage());
        }
      case 'OnboardingPage':
        {
          return MaterialPageRoute(builder: (_) => OnboardingPage());
        }
      default:
        {
          return MaterialPageRoute(
              builder: (_) => Scaffold(
                    body: Center(
                        child: Text('No route defined for ${settings.name}')),
                  ));
        }
    }
  }
}
