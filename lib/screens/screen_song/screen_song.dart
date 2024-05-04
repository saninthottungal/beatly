import 'package:beatly/screens/screen_song/widgets/custom_song_container.dart';
import 'package:flutter/material.dart';
import 'widgets/fav_repeat_shuffle.dart';
import 'widgets/play_widget.dart';
import 'widgets/song_title_artist.dart';

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
            //song and artist column
            const SongTitleArtistWidget(),
            //favourite, shuffle,repeat row
            const FavRepeatShuffleRow(),
            //slider
            Slider(
              value: 0.5,
              secondaryTrackValue: 1,
              onChanged: (value) {},
            ),
            //previous,play,next
            const PlayWidget(),
          ],
        ),
      ),
    );
  }
}
