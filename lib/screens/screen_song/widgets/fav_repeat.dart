import 'package:beatly/providers/song_provider/playlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavRepeatRow extends StatelessWidget {
  const FavRepeatRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<PlayListProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.repeat,
              color: context.watch<PlayListProvider>().isLoop
                  ? null
                  : Colors.grey),
          onPressed: () {
            context.read<PlayListProvider>().setIsLoop = true;
          },
        ),
        IconButton(
          icon: Icon(
            provider.constSongs[provider.currentIndex].isFavorite
                ? Icons.favorite
                : Icons.favorite_border,
          ),
          onPressed: () {
            final provider = context.read<PlayListProvider>();
            final currentSong = provider.constSongs[provider.currentIndex];
            if (currentSong.isFavorite) {
              provider.removeFavorites(currentSong);
              currentSong.isFavorite = false;
            } else {
              provider.addFavorite(currentSong);
              currentSong.isFavorite = true;
            }
          },
        ),
      ],
    );
  }
}
