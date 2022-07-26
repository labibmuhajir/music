import 'package:fitamusic/src/data/datasource.dart';
import 'package:fitamusic/src/data/response/song.dart';

abstract class ASongRepository {
  Future<List<Song>> getSong(String artistName);
}

class SongRepository extends ASongRepository {
  final ADataSource dataSource;

  SongRepository(this.dataSource);

  @override
  Future<List<Song>> getSong(String artistName) async {
    final response = await dataSource.searchArtistSong(artistName);

    return response.results;
  }
}
