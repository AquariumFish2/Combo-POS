import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/controllers/branch_controller.dart';
import 'package:pos/controllers/companyController.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/controllers/users_pin_code_controller.dart';
import 'package:pos/root.dart';
import 'package:pos/screens/login/users_pin_code.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'layout_controller.dart';

class POSPageDataGetter extends ChangeNotifier {
  POSPageDataGetter({required this.context});
  final BuildContext context;
  bool gotDataOnce = false;
  getData() async {
    await Future.delayed(const Duration(milliseconds: 500));
    _startLoading('loading data ...');
    await _providedData();
    _stopLoading();
  }

  _providedData() async {
    if (!gotDataOnce) {
      print('got into data provider');
      await Provider.of<CompanyController>(context, listen: false)
          .getCompanies();

      // await Provider.of<PosController>(context, listen: false).getPOSs();
      print('passed functions');
      gotDataOnce = true;
    }
  }

  checkSelection(BuildContext context) async {
    if (context.read<PosController>().selectedPOS != null &&
        context.read<CompanyController>().selectedCompany != null &&
        context.read<BranchController>().selectedBranch != null) {
      SharedPreferences shared = await SharedPreferences.getInstance();
      shared.setInt(
          SharedPrefrencesPath.posId, context.read<PosController>().selectedPOS!.odooId);
      shared.setInt(SharedPrefrencesPath.companyId,
          context.read<CompanyController>().selectedCompany!.odooId);
      shared.setInt(SharedPrefrencesPath.branchId,
          context.read<BranchController>().selectedBranch!.odooId);
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => RootWidget(),
        ),
        (route) => false,
      );
    } else {
      context
          .read<LayoutController>()
          .showToast(text: 'select all values', type: ToastType.error);
    }
  }

  _startLoading(String text) {
    context.read<LayoutController>().startLoading(loadingText: text);
  }

  _stopLoading() {
    context.read<LayoutController>().stopLoading();
  }
}
