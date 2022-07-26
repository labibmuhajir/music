import 'package:audioplayers/audioplayers.dart';
import 'package:fitamusic/src/data/response/song.dart';
import 'package:fitamusic/src/data/song_repository.dart';
import 'package:flutter/material.dart';

class HomeNotifier extends ChangeNotifier {
  final ASongRepository songRepository;
  final AudioPlayer audioPlayer;

  bool _isNowPlaying = false;
  bool get isNowPlaying => _isNowPlaying;

  List<Song> _song = [];
  List<Song> get song => _song;

  HomeNotifier({required this.songRepository, required this.audioPlayer});

  Future<void> setIsNowPlaying(bool isNowPlaying) async {
    _isNowPlaying = isNowPlaying;
  }

  Future getSong(String artistName) async {
    _song = await songRepository.getSong(artistName);
    notifyListeners();
  }

  Future playSong(String url) async {
    final source = UrlSource(url);
    _isNowPlaying = true;
    notifyListeners();
    await audioPlayer.play(source, volume: 40);
  }
}
