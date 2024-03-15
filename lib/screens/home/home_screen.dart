import 'package:all_lesson/utils/constants/route_name_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.country);
              },
              child: const Text("Countries"),
            ),
            SizedBox(height: 40.h),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.home);
              },
              child: const Text("Users"),
            ),
          ],
        ),
      ),
    );
  }
}
