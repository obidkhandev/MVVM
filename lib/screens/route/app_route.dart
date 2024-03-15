import 'package:all_lesson/screens/country/country_screen.dart';
import 'package:all_lesson/screens/home/home_screen.dart';
import 'package:all_lesson/screens/users/users.dart';
import 'package:all_lesson/utils/constants/route_name_constants.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return navigate(const UsersPage());
case RouteName.splash:
        return navigate(const HomeScreen());
case RouteName.country:
        return navigate(const CountryScreen());

      default:
        return navigate(
          const Scaffold(
            body: Center(
              child: Text("NO Screen"),
            ),
          ),
        );
    }
  }

  static navigate(Widget screen) {
    return MaterialPageRoute(builder: (context) => screen);
  }
}
