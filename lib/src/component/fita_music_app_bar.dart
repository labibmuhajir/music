import 'package:fitamusic/src/home/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FitaMusicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FitaMusicAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      height: kToolbarHeight,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: TextFormField(
        onFieldSubmitted: ((value) =>
            Provider.of<HomeNotifier>(context, listen: false).getSong(value)),
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 4,
            ),
            border: OutlineInputBorder(),
            hintText: 'Artist Name'),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
