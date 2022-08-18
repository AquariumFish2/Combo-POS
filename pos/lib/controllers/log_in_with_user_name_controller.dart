import 'package:flutter/cupertino.dart';

class LogInWithUserNameController extends ChangeNotifier {
  FocusNode myFocusNode = FocusNode();

  void setFocusNode(FocusNode focusNode) {
    myFocusNode = focusNode;
  }
}
