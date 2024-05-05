import 'package:beatly/providers/song_provider/playlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomSongConainer extends StatelessWidget {
  const CustomSongConainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<PlayListProvider>(builder: (context, provider, _) {
      return Column(
        children: [
          Container(
            height: size.shortestSide * 0.8,
            width: size.shortestSide * 0.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  //image path
                  provider.constSongs[provider.currentIndex].imagePath,
                ),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            //song name
            provider.constSongs[provider.currentIndex].name,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            //artist
            provider.constSongs[provider.currentIndex].artist,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      );
    });
  }
}
