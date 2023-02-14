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

  factory Wallpaper.fromJson(Map<String, dynamic> json) {
    List<Photo> photo=[];
    for(var item in json["photos"]) {
      photo.add(Photo.fromJson(item));
    }
    return Wallpaper(
        page: json["page"],
        perPage: json["per_page"],
        photos: photo,
        nextPage: json["next_page"],
      );
  }

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "photos": photos,
        "next_page": nextPage
      };
}
