import 'package:flutter/material.dart';

import '../../models/song_model.dart';

class PlayListProvider extends ChangeNotifier {
  List<SongModel> songs = [
    SongModel(
      name: "Istigfar",
      artist: "A.R. Rahman",
      imagePath: 'assets/images/istigfar.png',
      songPath: 'audio.istigfar.mp3',
    ),
    SongModel(
      name: 'Manickyachirakulla',
      artist: 'Bijibal',
      imagePath: 'assets/images/Manickyachirakulla.png',
      songPath: 'audio/Manickyachirakulla.mp3',
    ),
    SongModel(
      name: 'Neeyilla Neram',
      artist: 'Sooraj S Kurup',
      imagePath: 'assets/images/Neeyilla Neram.png',
      songPath: 'audio/Neeyilla Neram.mp3',
    ),
  ];
}
