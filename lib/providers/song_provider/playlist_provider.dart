import 'package:beatly/constants.dart';
import 'package:flutter/material.dart';

import '../../models/song_model.dart';

class PlayListProvider extends ChangeNotifier {
  List<SongModel> constSongs = songs;

  int currentIndex = 0;
  //get current song
  SongModel get getCurrentSong => constSongs[currentIndex];

  //isLoop

  bool isLoop = false;

  //setIsLoop
  set setIsLoop(bool value) {
    isLoop = !isLoop;
    notifyListeners();
  }

  //nextSong
  next() {
    if (getCurrentSong != songs.last) {
      currentIndex++;
    } else if (isLoop) {
      currentIndex = 0;
    } else {
      throw Exception("no next song available");
      //show no next songs available
    }
    notifyListeners();
  }

  //previouse song
  previous() {
    if (getCurrentSong != songs.first) {
      currentIndex--;
      notifyListeners();
    } else if (isLoop) {
      currentIndex = songs.length - 1;
    } else {
      //no previous songs available
    }
    notifyListeners();
  }
}
