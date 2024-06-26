import 'package:beatly/providers/song_provider/song_provider.dart';
import 'package:beatly/screens/screen_song/widgets/custom_song_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/fav_repeat.dart';
import 'widgets/play_widget.dart';

class ScreenSong extends StatelessWidget {
  const ScreenSong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PLAYING NOW",
          style: TextStyle(letterSpacing: 4),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 50),
        //main column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: double.infinity),
            //image container
            const CustomSongConainer(),
            //favourite,repeat row
            const FavRepeatRow(),
            //slider
            Consumer<SongProvider>(builder: (context, provider, _) {
              return Slider(
                value: provider.currentDuration.inMilliseconds.toDouble(),
                max: provider.totalDuration.inMilliseconds.toDouble(),
                onChanged: (value) {
                  provider.seek(value);
                },
              );
            }),
            //previous,play,next // provider done
            const PlayWidget(),
          ],
        ),
      ),
    );
  }
}
