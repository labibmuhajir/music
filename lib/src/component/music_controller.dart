import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MusicController extends HookWidget {
  const MusicController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final playState =
        useAnimationController(duration: const Duration(seconds: 10));

    return Container(
      color: Colors.black26,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(''),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(''),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(''),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          LinearProgressIndicator(
            value: playState.value,
          )
        ],
      ),
    );
  }
}
