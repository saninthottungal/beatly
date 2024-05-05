import 'package:beatly/providers/song_provider/playlist_provider.dart';
import 'package:beatly/providers/song_provider/song_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/song_model.dart';

class SongCardWidget extends StatelessWidget {
  const SongCardWidget({
    super.key,
    required this.songs,
    required this.heading,
  });
  final String heading;
  final List<SongModel> songs;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            heading,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        LimitedBox(
          maxHeight: height * 0.36,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () async {
                  Navigator.of(context).pushNamed('/song');
                  context.read<PlayListProvider>().setIndex = index;
                  await context.read<SongProvider>().play(
                      context.read<PlayListProvider>().getCurrentSong.songPath);
                },
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      width: 190,
                      height: height * 0.27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(songs[index].imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      songs[index].name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      songs[index].artist,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              );
            },
            itemCount: songs.length,
          ),
        )
      ],
    );
  }
}
