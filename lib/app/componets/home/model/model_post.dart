class ModelRsponce {
  ModelRsponce({
    required this.category,
    required this.language,
    required this.genre,
    required this.sort,
  });

  String category;
  String language;
  String genre;
  String sort;

  factory ModelRsponce.fromJson(Map<String, dynamic> json) => ModelRsponce(
        category: json["category"],
        language: json["language"],
        genre: json["genre"],
        sort: json["sort"],
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "language": language,
        "genre": genre,
        "sort": sort,
      };
}
