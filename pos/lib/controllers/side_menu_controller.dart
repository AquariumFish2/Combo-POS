import 'package:flutter/material.dart';

class SideMenuController extends ChangeNotifier {
  bool isSettingMenuOpenedInHome = false;
  bool isSettingMenuOpened = false;
  toggleSettingMenu() {
    isSettingMenuOpened = !isSettingMenuOpened;
    print('tried to open');
    notifyListeners();
  }

  toggleSettingMenuInHome() {
    isSettingMenuOpenedInHome = !isSettingMenuOpenedInHome;
    print('tried to open at home');
    notifyListeners();
  }
}
