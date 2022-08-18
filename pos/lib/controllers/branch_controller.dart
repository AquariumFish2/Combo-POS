import 'package:flutter/cupertino.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/data/database/branch.dart';
import 'package:pos/data/database/company.dart';
import 'package:pos/main.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BranchController extends ChangeNotifier {
  List<Branch1> branches = [];
  List<Branch1> selectedBranches = [];
  Branch1? selectedBranch;
  getAllBranches(Company company) {
    selectedBranch = null;
    selectedBranches = [];
    branches = staticStore.box<Branch1>().getAll();
    print(branches.first.companyId);
    for (var element in branches) {
      print(element.companyId);
      print('--------');
      print(company.odooId);
      if (element.companyId == company.odooId) {
        selectedBranches.add(element);
      }
    }
    notifyListeners();
  }

  setBranch(Branch1 branch, BuildContext context) {
    selectedBranch = branch;
    context.read<PosController>().getPOSs(selectedBranch!);
    notifyListeners();
  }

  setBranchById() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    selectedBranch = staticStore.box<Branch1>().getAll().firstWhere((element) =>
        element.odooId == sharedPreferences.getInt(SharedPrefrencesPath.branchId));
  }
}
