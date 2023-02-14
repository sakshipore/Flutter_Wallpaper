import 'dart:developer';

import 'package:get/get.dart';
import 'package:wallpaper/model/wallpapers_model.dart';
import 'package:wallpaper/services/wallpaper_service.dart';

class WallpaperController extends GetxController {
  Wallpaper? wallpaper;
  final WallpaperService _service = WallpaperService();
  bool isLoading = true;

  Future<void> fetchWallpaper() async {
    try {
      Map<String, dynamic> res = await _service.fetchWallpaper();
      Wallpaper temp = Wallpaper.fromJson(res); // converts map data to model
      wallpaper=temp;
    } catch (e) {
      log(e.toString());
    } finally {
      isLoading = false;
      update();
    }
  }
}
