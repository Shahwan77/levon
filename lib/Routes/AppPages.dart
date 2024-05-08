import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:levon/Pages/Assignment/Bindings/AssignmentBindings.dart';
import 'package:levon/Pages/BottomBar/BottomNavigationBar.dart';
import 'package:levon/Pages/Splash/Bindings/SplashBindings.dart';
import 'package:levon/Pages/Splash/SplashScreen.dart';
import 'package:levon/Pages/Welcome/WelcomePage.dart';

import '../Pages/Home/HomePage.dart';
import '../Pages/Welcome/Bindings/WelcomeBindings.dart';
import 'AppRoutes.dart';

class AppPages {
  static var Lists = [
    GetPage( name: AppRoutes.Splash, page: () => SplashScreen(), binding: SplashBindings(),),
    GetPage( name: AppRoutes.Welcome, page: () => WelcomePage(), binding: WelcomeBindings(),),
    GetPage( name: AppRoutes.BottomBar, page: () => BottomNavigationBarr(), binding: WelcomeBindings(),),
    GetPage( name: AppRoutes.Home, page: () => HomePage(), binding: HomeBindings(),),
  ];
}