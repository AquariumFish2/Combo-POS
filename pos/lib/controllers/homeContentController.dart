import 'package:flutter/cupertino.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:provider/provider.dart';

enum HomeContents { home, tables, pay, settings, search }

class HomeContentController extends ChangeNotifier {
  HomeContents homePageNowContains = HomeContents.home;

  changeHomePageContents(HomeContents newContent, BuildContext context) {
    context.read<HomeController>().isStandAlonePage = false;
    context.read<HomeController>().closeAllOpenModals();
    homePageNowContains = newContent;
    notifyListeners();
  }
}
