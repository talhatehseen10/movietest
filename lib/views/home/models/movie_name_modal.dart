
class MovieNameModel {
  MovieNameModel({
    required this.title,
    required this.year,
    required this.imdbId,
    required this.type,
    required this.poster,
  });

  String? title;
  String? year;
  String? imdbId;
  String? type;
  String? poster;

  factory MovieNameModel.fromJson(Map<String, dynamic> json) => MovieNameModel(
        title: json["Title"],
        year: json["Year"],
        imdbId: json["imdbID"],
        type: json["Type"],
        poster: json["Poster"],
      );

  Map<String, dynamic> toJson() => {
        "Title": title,
        "Year": year,
        "imdbID": imdbId,
        "Type": type,
        "Poster": poster,
      };
}
