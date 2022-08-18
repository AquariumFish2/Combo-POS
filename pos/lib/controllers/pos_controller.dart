import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/branch.dart';
import 'package:pos/main.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/database/pos.dart';
import '../data/models/authenticate.dart';
import '../helpers/api_helper.dart';
import 'layout_controller.dart';

class PosController extends ChangeNotifier {
  List<POS> POSs = [];
  List<POS> selectedPOSs = [];
  POS? selectedPOS;
  getPOSs(Branch1 branch) async {
    selectedPOS = null;
    selectedPOSs = [];
    POSs = staticStore.box<POS>().getAll();
    POSs.forEach((element) {
      if (element.branchId == branch.odooId) {
        selectedPOSs.add(element);
      }
    });
    notifyListeners();
  }

  void setPOS(POS value) {
    selectedPOS = value;
    notifyListeners();
  }

  setPOSById() async {
    print('got into function');
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    selectedPOS = staticStore.box<POS>().getAll().firstWhere((element) =>
        element.odooId == sharedPreferences.getInt(SharedPrefrencesPath.posId));
    print(sharedPreferences.getInt(SharedPrefrencesPath.posId));
    notifyListeners();
  }
}
