import 'package:flutter/cupertino.dart';

class HistoryLayoutController extends ChangeNotifier {
  bool historySearch = false;
  bool returnOverlay = false;
  toggleHistorySearch() {
    historySearch = !historySearch;
    notifyListeners();
  }

  toggleReturnOverlay() {
    returnOverlay = !returnOverlay;
    notifyListeners();
  }
}
