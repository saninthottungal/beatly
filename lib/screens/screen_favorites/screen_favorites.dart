import 'package:beatly/providers/song_provider/playlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenFavorites extends StatelessWidget {
  const ScreenFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAVORITES"),
      ),
      body: Consumer<PlayListProvider>(builder: (context, watchProvider, _) {
        return watchProvider.favorites.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.heart_broken_outlined,
                      size: 80,
                    ),
                    Text(
                      "Oops..\nno favorites yet...",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                              watchProvider.favorites[index].imagePath),
                        ),
                      ),
                    ),
                    title: Text(
                      watchProvider.favorites[index].name,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    subtitle: Text(watchProvider.favorites[index].artist),
                    trailing: IconButton(
                      onPressed: () {
                        final provider = context.read<PlayListProvider>();
                        final currentSong = provider.favorites[index];
                        provider.removeFavorites(currentSong);
                        currentSong.isFavorite = false;
                      },
                      icon: const Icon(Icons.favorite),
                    ),
                  );
                },
                itemCount: watchProvider.favorites.length,
              );
      }),
    );
  }
}
