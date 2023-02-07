class Src {
  String original;
  String? large2x;
  String large;
  String medium;
  String small;
  String portrait;
  String landscape;
  String? tiny;

  Src({
    required this.original,
    required this.portrait,
    required this.landscape,
    required this.large,
    required this.medium,
    required this.small,
    this.large2x,
    this.tiny,
  });

  factory Src.fromJson(Map<String, dynamic> json) => Src(
        original: json["original"],
        large2x: json["large2x"],
        large: json["large"],
        medium: json["medium"],
        small: json["small"],
        portrait: json["portrait"],
        landscape: json["landscape"],
        tiny: json["tiny"],
      );

  Map<String, dynamic> toJson() => {
        "original": original,
        "large2x": large2x,
        "large": large,
        "medium": medium,
        "small": small,
        "portrait": portrait,
        "landscape": landscape,
        "tiny": tiny,
      };
}
