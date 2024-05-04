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
  //currentDuration
  Duration currentDuration = Duration.zero;
  //total Duration
  Duration totalDuration = Duration.zero;

  //isLoop
  bool isLoop = false;

  set setisLoop(bool value) {
    isLoop = value;
    notifyListeners();
  }

  //play song
  Future<void> play() async {
    await stop();
    await audioPlayer.play(AssetSource(songs[currentIndex].songPath));

    notifyListeners();
  }

  //stop song
  Future<void> stop() async {
    await audioPlayer.stop();
  }
  //isPlayingBooleanGetter

  bool get isPlaying => audioPlayer.state == PlayerState.paused ? false : true;

  //pause song
  Future<void> pauseNResume() async {
    isPlaying ? await audioPlayer.pause() : await audioPlayer.resume();
    notifyListeners();
  }

  //next track

  next() async {
    if (songs.length != currentIndex + 1) {
      currentIndex++;
      await play();
    } else if (isLoop) {
      currentIndex = 0;
      await play();
    } else {
      //show no next songs available;
    }
    notifyListeners();
  }

  //previous track
  previous() async {
    if (currentIndex != 0) {
      currentIndex--;
      await play();

      notifyListeners();
    }
  }

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
