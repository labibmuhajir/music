import 'package:fitamusic/src/data/response/song.dart';
import 'package:flutter/material.dart';

class MusicItem extends StatelessWidget {
  final Song song;

  const MusicItem(this.song, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 60,
        width: 60,
        child: Image.network(song.artworkUrl60),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            song.trackName,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          Text(
            song.artistName,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 14,
            ),
          ),
          Text(
            song.collectionName,
            style: const TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
        ],
      ),
      trailing: SizedBox(
        height: 80,
        width: 80,
        child: Image.network(''),
      ),
    );
  }
}
