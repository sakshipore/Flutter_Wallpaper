import 'package:wallpaper/model/photo_model.dart';

class Wallpaper {
  int page;
  int perPage;
  List<Photo> photos;
  String nextPage;

  Wallpaper({
    required this.page,
    required this.perPage,
    required this.photos,
    required this.nextPage,
  });

  factory Wallpaper.fromJson(Map<String, dynamic> json) => Wallpaper(
        page: json["page"],
        perPage: json["perPage"],
        photos: json["photos"],
        nextPage: json["nextPage"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "perPage": perPage,
        "photos": photos,
        "nextPage": nextPage
      };
}
