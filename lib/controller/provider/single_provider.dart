// // import 'package:flutter/material.dart';

// // class SingleProvider extends ChangeNotifier {
// //   bool isActive = false; // shuffle button
// //   bool isPlaying = false;
// //   int? selectedEpisodeIndex;

// //   void toggleShuffle() {
// //     isActive = !isActive;
// //     notifyListeners();
// //   }

// //   void playPauseEpisode(int index) {
// //     if (isPlaying && selectedEpisodeIndex == index) {
// //       // pause
// //       isPlaying = false;
// //       selectedEpisodeIndex = null;
// //     } else {
// //       // play
// //       isPlaying = true;
// //       selectedEpisodeIndex = index;
// //     }
// //     notifyListeners();
// //   }
// // }

// import 'package:flutter/material.dart';

// class SingleProvider extends ChangeNotifier {
//   bool isShuffleActive = false;
//   bool isPlaying = false;
//   int? selectedEpisodeIndex;

//   void toggleShuffle() {
//     isShuffleActive = !isShuffleActive;
//     notifyListeners();
//   }

//   void playPauseEpisode(int index) {
//     if (isPlaying && selectedEpisodeIndex == index) {
//       // pause
//       isPlaying = false;
//       selectedEpisodeIndex = null;
//     } else {
//       // play
//       isPlaying = true;
//       selectedEpisodeIndex = index;
//     }
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';

class SingleProvider extends ChangeNotifier {
  bool isPlaying = false;
  bool isActive = false; // shuffle
  int? selectedEpisodeIndex;

  void toggleShuffle() {
    isActive = !isActive;
    notifyListeners();
  }

  void playPause() {
    if (isPlaying) {
      // pause
      isPlaying = false;
      selectedEpisodeIndex = null;
    } else {
      // play
      isPlaying = true;
      selectedEpisodeIndex = 0;
    }
    notifyListeners();
  }
}
