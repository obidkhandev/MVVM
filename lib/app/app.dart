import 'package:all_lesson/screens/route/app_route.dart';
import 'package:all_lesson/utils/constants/route_name_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        ScreenUtil.init(context);
        return MaterialApp(
          onGenerateRoute: AppRoute.generateRoute,
          initialRoute: RouteName.home,
          debugShowCheckedModeBanner: false,
          // home: ,
        );
      },
    );
  }
}