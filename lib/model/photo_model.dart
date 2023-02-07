import 'package:flutter/material.dart';
import 'package:wallpaper/model/src_model.dart';

class Photo {
  int id;
  int width;
  int height;
  String url;
  String? photographer;
  String? photographerUrl;
  int? photographerId;
  Color avgColor;
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

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        photographer: json["photographer"],
        photographerUrl: json["photographerUrl"],
        photographerId: json["photographerId"],
        avgColor: json["avgColor"],
        src: json["src"],
        liked: json["liked"],
        alt: json["alt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
        "photographer": photographer,
        "photographerUrl": photographerUrl,
        "photographerId": photographerId,
        "avgColor": avgColor,
        "src": src,
        "liked": liked,
        "alt": alt,
      };
}
