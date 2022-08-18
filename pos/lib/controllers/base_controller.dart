import 'package:flutter/cupertino.dart';

class BaseController extends ChangeNotifier {
  bool isLoading=false;

  void setLoading(bool loadingState) {
    isLoading = loadingState;
    notifyListeners();
  }
}