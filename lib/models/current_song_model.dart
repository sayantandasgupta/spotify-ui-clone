import 'package:flutter/widgets.dart';

import '../data/data.dart';

class CurrentSongModel with ChangeNotifier {
  Song? selectedSong;

  void select(Song track) {
    selectedSong = track;
    notifyListeners();
  }
}
