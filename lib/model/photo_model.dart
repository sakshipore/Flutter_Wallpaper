import 'package:flutter/material.dart';
import 'package:wallpaper/model/src_model.dart';

class Photo {
  int id;
  int? width;
  int? height;
  String url;
  String? photographer;
  String? photographerUrl;
  int? photographerId;
  String avgColor;
  Src? src;
  bool liked;
  String? alt;

  Photo({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    this.photographer,
    this.photographerUrl,
    this.photographerId,
    required this.avgColor,
    this.src,
    required this.liked,
    this.alt,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    Src srcs;
    srcs=Src.fromJson(json["src"]);
    return Photo(
      id: json["id"],
      width: json["width"],
      height: json["height"],
      url: json["url"],
      photographer: json["photographer"],
      photographerUrl: json["photographer_url"],
      photographerId: json["photographer_id"],
      avgColor: json["avg_color"],
      src: srcs,
      liked: json["liked"],
      alt: json["alt"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
        "photographer": photographer,
        "photographer_url": photographerUrl,
        "photographer_id": photographerId,
        "avgColor": avgColor,
        "src": src,
        "liked": liked,
        "alt": alt,
      };
}
