import 'package:flutter/material.dart';
import '../presentation/start_screen/start_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/home_page_screen/home_page_screen.dart';
import '../presentation/menu_screen/menu_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String menuScreen = '/menu_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    startScreen: (context) => StartScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    homePageScreen: (context) => HomePageScreen(),
    menuScreen: (context) => MenuScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
