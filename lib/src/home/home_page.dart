import 'package:fitamusic/src/component/fita_music_app_bar.dart';
import 'package:fitamusic/src/home/home_notifier.dart';
import 'package:fitamusic/src/component/list_music.dart';
import 'package:fitamusic/src/component/music_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const FitaMusicAppBar(),
          body: Consumer<HomeNotifier>(
            builder: (context, value, child) {
              final isNowPlaying = value.isNowPlaying;
              return AnimatedSwitcher(
                duration: const Duration(
                  seconds: 1,
                ),
                child: isNowPlaying
                    ? _controllerShow(() {
                        value.setIsNowPlaying(!isNowPlaying);
                      })
                    : _controllerHidden(),
              );
            },
          )),
    );
  }

  Widget _controllerHidden() {
    return const ListMusic(
      paddingBottom: 0,
    );
  }

  Widget _controllerShow(Function onTap) {
    return Stack(
      children: [
        const Positioned.fill(
          child: ListMusic(
            paddingBottom: 80,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: InkWell(
            child: const MusicController(),
            onTap: () {
              onTap();
            },
          ),
        )
      ],
    );
  }
}
