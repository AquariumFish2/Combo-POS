import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/controllers/checkout_controller.dart';
import 'package:pos/controllers/layout_controller.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/screens/home/home.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'branch_controller.dart';
import 'companyController.dart';

class CashControlController extends ChangeNotifier {
  String total = '';

  String savedTotal = '';

  String note = '';
  bool show = false;

  addingNum(int num) {
    total = total + num.toString();
    notifyListeners();
  }

  removingNum() {
    if (total.isNotEmpty) {
      total = total.substring(0, total.length - 1);
      notifyListeners();
    }
  }

  setNotes(newNotes) {
    note = newNotes;
    print(note);
  }

  savingTotal(BuildContext context) async {
    savedTotal = total;
    printI();

    SharedPreferences shared = await SharedPreferences.getInstance();
    int? posId = shared.getInt(SharedPrefrencesPath.posId);
    try {
      if (context.read<CheckOutController>().currentFunType == FunTypes.start) {
        print(context);
        await context
            .read<CheckOutController>()
            .openSession(context, posId!, int.parse(savedTotal), note);
      } else {
        await context
            .read<CheckOutController>()
            .endSession(context, posId!, int.parse(savedTotal));
      }
    } catch (e) {
      context.read<LayoutController>().showToast(
            text: e.toString(),
            type: ToastType.error,
          );
      print(e);
    }

    notifyListeners();
  }

  fetchingSaved() {
    total = savedTotal;
    notifyListeners();
  }

  printI() {
    print('total:$total');
    print('savedTotal:$savedTotal');
    print('note:$note');
  }
}
