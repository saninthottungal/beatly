import 'package:beatly/constants.dart';
import 'package:beatly/providers/song_provider/playlist_provider.dart';
import 'package:beatly/screens/screen_home/Widgets/song_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Drawer/drawer.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar
        appBar: AppBar(
          title: const Text("BEAT.LY"),
        ),
        //drawer
        drawer: const CustomDrawerWidget(),
        //body
        body: ListView(
          children: [
            SongCardWidget(
              songs: songs,
              heading: 'Newly Added',
            ),
            SongCardWidget(
              songs: songs,
              heading: 'Recently Played',
            ),
            Consumer<PlayListProvider>(builder: (context, provider, _) {
              return provider.favorites.isEmpty
                  ? const SizedBox()
                  : SongCardWidget(
                      songs: provider.favorites,
                      heading: 'Favorites',
                    );
            }),
          ],
        ));
  }
}
