import 'dart:math';

import 'package:assignment3_uidesign/res/colors.dart';
import 'package:assignment3_uidesign/utils/app_router.dart';
import 'package:assignment3_uidesign/views/food_app/food_app_home.dart';
import 'package:assignment3_uidesign/views/login_signup/login_splash.dart';
import 'package:assignment3_uidesign/views/login_signup/login_screen.dart';
import 'package:assignment3_uidesign/views/router_page.dart';
import 'package:assignment3_uidesign/views/weather/weather_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(getColor(1).value, customColor),
        primaryColor: const Color.fromRGBO(129, 9, 85, 0),
        scaffoldBackgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black, size: 38),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 25),
          bodyText1: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
          headline1: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 45),
          headline2: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 70),
          headline3: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
          headline4: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
          headline5: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 55,
          ),
        ),
      ),
      initialRoute: AppRouter.home,
      routes: {
        AppRouter.home: (_) => const RouterPage(),
        AppRouter.weather: (_) => const WeatherHomePage(),
        AppRouter.loginSplash: (_) => const LoginSplashPage(),
        AppRouter.loginScreen: (_) => const LoginScreen(),
        AppRouter.foodAppScreen: (_) => const FoodAppHomePage(),
      },
    );
  }
}
