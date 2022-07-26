import 'dart:convert';

import 'package:fitamusic/src/data/response/song.dart';

SongResponse baseResponseFromJson(String str) =>
    SongResponse.fromJson(json.decode(str));

String baseResponseToJson(SongResponse data) => json.encode(data.toJson());

class SongResponse {
  SongResponse({
    required this.resultCount,
    required this.results,
  });

  int resultCount;
  List<Song> results;

  factory SongResponse.fromJson(Map<String, dynamic> json) => SongResponse(
        resultCount: json["resultCount"],
        results: List<Song>.from(json["results"].map((x) => Song.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "resultCount": resultCount,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}
