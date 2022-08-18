import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/controllers/branch_controller.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/data/database/company.dart';
import 'package:pos/data/models/api_response.dart';
import 'package:pos/data/models/authenticate.dart';
import 'package:pos/helpers/api_helper.dart';
import 'package:pos/main.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:provider/src/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'layout_controller.dart';

class CompanyController extends ChangeNotifier {
  CompanyController();

  List<Company> companies = [];
  Company? selectedCompany;

  getCompanies() async {
    companies = staticStore.box<Company>().getAll();
    notifyListeners();
  }

  void setCompany(Company value, BuildContext context) {
    selectedCompany = value;
    context.read<BranchController>().getAllBranches(selectedCompany!);
    context.read<PosController>().selectedPOS = null;
    context.read<PosController>().selectedPOSs = [];
    notifyListeners();
  }

  setCompanyById() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    selectedCompany = staticStore.box<Company>().getAll().firstWhere(
        (element) =>
            element.odooId == sharedPreferences.getInt(SharedPrefrencesPath.companyId));
  }
}
