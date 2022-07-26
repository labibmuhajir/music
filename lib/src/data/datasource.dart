import 'dart:convert';

import 'package:fitamusic/src/data/response/song_response.dart';
import 'package:http/http.dart';

abstract class ADataSource {
  Future<SongResponse> searchArtistSong(String artistName);
}

class DataSource extends ADataSource {
  static const String baseUrl = "https://itunes.apple.com/search";

  final Client client;

  DataSource({required this.client});

  @override
  Future<SongResponse> searchArtistSong(String artistName) async {
    final url = "$baseUrl?media=music&country=id&entity=song&term=$artistName";

    final response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final stringResponse = jsonDecode(response.body);
      return SongResponse.fromJson(stringResponse);
    } else {
      throw Exception(response.statusCode);
    }
  }
}
