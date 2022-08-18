import 'package:flutter/cupertino.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:provider/provider.dart';

class PayNowWithWalletController extends ChangeNotifier {
  String total = '';
  addTotal(int num) {
    total = total + num.toString();
    notifyListeners();
  }

  backTotal() {
    total = total.substring(0, total.length - 1);
    notifyListeners();
  }

  pay(BuildContext context) {
    total = '';
    context.read<HomeController>().togglePayWithWallet();
  }
}
