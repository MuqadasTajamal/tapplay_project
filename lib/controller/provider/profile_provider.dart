import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  int? selectedEpisodeIndex;

  bool isPlaying(int index) {
    return selectedEpisodeIndex == index;
  }

  void playEpisode(int index) {
    selectedEpisodeIndex = index;
    notifyListeners();
  }
}
