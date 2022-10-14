// class ClassModel {
//   ClassModel({
//     required this.status,
//     required this.data,
//   });

//   bool? status;
//   List<QueryParam> data;

//   factory ClassModel.fromJson(Map<String, dynamic> json) => ClassModel(
//         status: json["status"],
//         data: json['data'] == null
//             ? []
//             : List<QueryParam>.from(
//                 json["data"].map((x) => QueryParam.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "status": status,
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//       };
// }
class Person {
  Person({
    required this.result,
    required this.queryParam,
    required this.code,
    required this.message,
  });

  List<Result> result;
  QueryParam queryParam;
  int code;
  String message;

  factory Person.fromJson(Map<String, dynamic> json) => Person(
        result:
            List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
        queryParam: QueryParam.fromJson(json["queryParam"]),
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
        "queryParam": queryParam.toJson(),
        "code": code,
        "message": message,
      };
}

class QueryParam {
  QueryParam({
    required this.category,
    required this.language,
    required this.genre,
    required this.sort,
  });

  String category;
  String language;
  String genre;
  String sort;

  factory QueryParam.fromJson(Map<String, dynamic> json) => QueryParam(
        category: json["category"] ?? "",
        language: json["language"] ?? "",
        genre: json["genre"] ?? "",
        sort: json["sort"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "category": "movies",
        "language": "kannada",
        "genre": "all",
        "sort": "voting",
      };
}

class Result {
  Result({
    required this.id,
    required this.director,
    required this.stars,
    required this.releasedDate,
    required this.title,
    required this.genre,
    required this.voted,
    required this.poster,
    required this.pageViews,
    required this.totalVoted,
    required this.voting,
  });

  String id;
  List<String> director;

  List<String> stars;
  int releasedDate;

  String title;

  String genre;
  List<Voted> voted;
  String poster;
  int pageViews;

  int totalVoted;
  int voting;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        director: List<String>.from(json["director"].map((x) => x)),
        stars: List<String>.from(json["stars"].map((x) => x)),
        releasedDate: json["releasedDate"],
        title: json["title"],
        genre: json["genre"],
        voted: List<Voted>.from(json["voted"].map((x) => Voted.fromJson(x))),
        poster: json["poster"],
        pageViews: json["pageViews"],
        totalVoted: json["totalVoted"],
        voting: json["voting"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "director": List<dynamic>.from(director.map((x) => x)),
        //   "writers": List<dynamic>.from(writers.map((x) => x)),
        "stars": List<dynamic>.from(stars.map((x) => x)),
        "releasedDate": releasedDate,

        "title": title,

        "genre": genre,
        "voted": List<dynamic>.from(voted.map((x) => x.toJson())),
        "poster": poster,
        "pageViews": pageViews,

        "totalVoted": totalVoted,
        "voting": voting,
      };
}

enum Language { KANNADA }

final languageValues = EnumValues({"Kannada": Language.KANNADA});

class Voted {
  Voted({
    required this.upVoted,
    required this.downVoted,
    required this.id,
    required this.updatedAt,
    required this.genre,
  });

  List<String> upVoted;
  List<dynamic> downVoted;
  String? id;
  int? updatedAt;
  String? genre;

  factory Voted.fromJson(Map<String, dynamic> json) => Voted(
        upVoted: List<String>.from(json["upVoted"].map((x) => x)),
        downVoted: List<dynamic>.from(json["downVoted"].map((x) => x)),
        id: json["_id"],
        updatedAt: json["updatedAt"],
        genre: json["genre"],
      );

  Map<String, dynamic> toJson() => {
        "upVoted": List<dynamic>.from(upVoted.map((x) => x)),
        "downVoted": List<dynamic>.from(downVoted.map((x) => x)),
        "_id": id,
        "updatedAt": updatedAt,
        "genre": genre,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    return reverseMap ??= map.map((k, v) => MapEntry(v, k));
    // return reverseMap;
  }
}
