import 'package:all_lesson/screens/home/home_page.dart';
import 'package:all_lesson/utils/constants/route_name_constants.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return navigate(const HomePage());

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
