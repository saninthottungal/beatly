import 'package:beatly/screens/screen_home/Widgets/song_card_widget.dart';
import 'package:flutter/material.dart';

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
          children: const [
            SongCardWidget(
              heading: 'Newly Added',
              imagePath: 'assets/images/pakaliravukal.png',
              title: 'Pakaliravukal',
              artist: 'Sushin Shyam',
            ),
            SongCardWidget(
              heading: 'Recently Played',
              imagePath: 'assets/images/odimaga.png',
              title: 'Odimaga',
              artist: 'Sushin Shyam',
            ),
            SongCardWidget(
              heading: 'Favorites',
              imagePath: 'assets/images/chor.png',
              title: 'Chor',
              artist: 'Justh',
            ),
          ],
        ));
  }
}
