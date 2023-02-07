import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallpaper/routes/router.dart';
import 'package:wallpaper/routes/routes_names.dart';
import 'package:wallpaper/views/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 840),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesNames.homeScreen,
          getPages: AppRoutes.routes,
        );
        // MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   home: HomeScreen(),
        // );
      },
    );
  }
}
