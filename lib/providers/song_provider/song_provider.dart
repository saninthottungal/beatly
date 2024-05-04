import 'package:audioplayers/audioplayers.dart';
import 'package:beatly/constants.dart';
import 'package:beatly/models/song_model.dart';
import 'package:flutter/material.dart';

class SongProvider extends ChangeNotifier {
  final AudioPlayer audioPlayer = AudioPlayer();

  SongProvider() {
    listenForDurations();
  }

  final List<SongModel> constSongs = songs;
  int currentIndex = 0;

  //isPlayingBoolean
  bool isPlaying = false;

  //play song
  Future<void> play() async {
    await audioPlayer.stop();
    await audioPlayer.play(AssetSource(songs[currentIndex].songPath));
    isPlaying = true;
    notifyListeners();
  }

  //pause song
  Future<void> pauseNResume() async {
    if (isPlaying) {
      await audioPlayer.pause();
      isPlaying = false;
    } else {
      await audioPlayer.resume();
      isPlaying = true;
    }
    notifyListeners();
  }

  //next track

  next() {
    if (songs.length != currentIndex + 1) {
      currentIndex++;
      play();
      notifyListeners();
    } else {
      currentIndex = 0;
      play();
    }
  }

  //previous track
  previous() {
    if (currentIndex != 0) {
      play();
      currentIndex--;
      notifyListeners();
    }
  }

  //currentDuration
  Duration currentDuration = Duration.zero;
  //total Duration
  Duration totalDuration = Duration.zero;

  //seek
  seek(double value) async {
    final duration = Duration(milliseconds: value.toInt());

    await audioPlayer.seek(duration);
    notifyListeners();
  }

  void listenForDurations() {
    audioPlayer.onDurationChanged.listen((durationChanged) {
      totalDuration = durationChanged;
      notifyListeners();
    });

    audioPlayer.onPlayerComplete.listen((event) {
      next();
      notifyListeners();
    });

    audioPlayer.onPositionChanged.listen((duration) {
      currentDuration = duration;
      notifyListeners();
    });
  }
}
