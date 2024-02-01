import 'package:final_project_edspert/screen/auth/login_screen.dart';
import 'package:final_project_edspert/screen/auth/register_screen.dart';
import 'package:final_project_edspert/screen/content/detail_content_screen.dart';
import 'package:final_project_edspert/screen/menu/home_screen.dart';
import 'package:final_project_edspert/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class EdspertNavigation {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // Register route
  static Map<String, WidgetBuilder> routes = {
    SplashScreen.routeName: (context) => const SplashScreen(),
    LoginScreen.routeName: (context) => const LoginScreen(),
    RegisterScreen.routeName: (context) => const RegisterScreen(),
    HomeScreen.routeName: (context) => const HomeScreen(),
    DetailContentScreen.routeName: (context) => const DetailContentScreen(),
  };

  void pushNamed(String routeName, {Object? arguments}) {
    navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  void pushReplacementNamed(String routeName, {Object? arguments}) {
    navigatorKey.currentState!.pushReplacementNamed(routeName,
        arguments: arguments);
  }

  void push(Widget widget) {
    navigatorKey.currentState!
        .push(MaterialPageRoute(builder: (context) => widget));
  }

  void pop() {
    navigatorKey.currentState!.pop();
  }

  void popUntil(String routeName) {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }
}
