import 'package:beatly/constants.dart';
import 'package:flutter/material.dart';

import '../../models/song_model.dart';

class PlayListProvider extends ChangeNotifier {
  List<SongModel> constSongs = songs;
  List<SongModel> favorites = [];

  //add favorites
  addFavorite(SongModel song) {
    favorites.add(song);
    notifyListeners();
  }

  //remove favorites

  removeFavorites(SongModel song) {
    favorites.remove(song);
    notifyListeners();
  }

  int currentIndex = 0;
  //get current song
  SongModel get getCurrentSong => constSongs[currentIndex];

  //isLoop

  set setIndex(int value) {
    currentIndex = value;
    notifyListeners();
  }

  bool isLoop = false;

  //setIsLoop
  set setIsLoop(bool value) {
    isLoop = !isLoop;
    notifyListeners();
  }

  //nextSong
  next() {
    if (currentIndex < songs.length - 1) {
      currentIndex++;
    } else if (isLoop) {
      currentIndex = 0;
    } else {
      throw Exception("no next song available");
    }
    notifyListeners();
  }

  //previouse song
  previous() {
    if (currentIndex > 0) {
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
