import 'package:audioplayers/audioplayers.dart';
import 'package:fitamusic/src/data/datasource.dart';
import 'package:fitamusic/src/data/song_repository.dart';
import 'package:fitamusic/src/home/home_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

final locator = GetIt.instance;

void init() {
  locator.registerLazySingleton(() => Client());
  locator
      .registerLazySingleton<ADataSource>(() => DataSource(client: locator()));
  locator
      .registerLazySingleton<ASongRepository>(() => SongRepository(locator()));
  locator.registerLazySingleton(() => AudioPlayer());
  locator.registerLazySingleton(
      () => HomeNotifier(songRepository: locator(), audioPlayer: locator()));
}
