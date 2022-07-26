import 'package:fitamusic/src/component/music_item.dart';
import 'package:fitamusic/src/home/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListMusic extends StatelessWidget {
  final double paddingBottom;
  const ListMusic({required this.paddingBottom, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeNotifier>(
      builder: (context, value, child) {
        return ListView.separated(
          padding: EdgeInsets.only(
            bottom: paddingBottom,
          ),
          itemCount: value.song.length,
          itemBuilder: ((context, index) {
            final song = value.song[index];

            return Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: InkWell(
                onTap: () {
                  value.playSong(song.previewUrl);
                },
                child: MusicItem(song),
              ),
            );
          }),
          separatorBuilder: (BuildContext context, int index) => Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 1,
            width: double.infinity,
            color: Colors.black45,
          ),
        );
      },
    );
  }
}
