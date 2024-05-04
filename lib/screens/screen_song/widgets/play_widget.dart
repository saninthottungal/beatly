import 'package:beatly/providers/song_provider/song_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayWidget extends StatelessWidget {
  const PlayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: const Icon(
            Icons.skip_previous_outlined,
            size: 50,
          ),
          onPressed: () async {
            await context.read<SongProvider>().previous();
          },
        ),
        IconButton(
          icon: Icon(
            context.watch<SongProvider>().isPlaying
                ? Icons.pause
                : Icons.play_arrow_outlined,
            size: 50,
          ),
          onPressed: () async {
            await context.read<SongProvider>().pauseNResume();
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.skip_next_outlined,
            size: 50,
          ),
          onPressed: () async {
            await context.read<SongProvider>().next();
          },
        ),
      ],
    );
  }
}
