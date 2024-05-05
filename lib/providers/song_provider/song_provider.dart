import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SongProvider extends ChangeNotifier {
  final AudioPlayer audioPlayer = AudioPlayer();
  StreamController onSongComplete = StreamController();

  SongProvider() {
    listenForDurations();
  }

  Duration currentDuration = Duration.zero;
  //total Duration
  Duration totalDuration = Duration.zero;

  //play song
  Future<void> play(String path) async {
    await stop();
    await audioPlayer.play(AssetSource(path));

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

    onSongComplete.addStream(audioPlayer.onPlayerComplete);

    audioPlayer.onPositionChanged.listen((duration) {
      currentDuration = duration;
      notifyListeners();
    });
  }
}
