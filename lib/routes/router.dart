import 'package:get/get.dart';
import 'package:wallpaper/routes/routes_names.dart';
import 'package:wallpaper/views/home_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: RoutesNames.homeScreen,
      page: () => HomeScreen(),
    ),
  ];
}
