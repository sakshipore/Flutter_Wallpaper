import 'dart:developer';

import 'package:dio/dio.dart';

class WallpaperService {
  Future fetchWallpaper() async {
    String url = "https://api.pexels.com/v1/curated";
    var response = await Dio().get(
      url,
      options: Options(
        headers: {
          "Authorization":
              "ZSIcGgIu62kesLdb4GSX5Key3nbHNgVhCn8SG8vEcc4tNTBFFEu9U6t5"
        },
      ),
    );
    log(response.toString());
  }
}
