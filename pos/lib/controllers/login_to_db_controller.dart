import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/data/models/api_response.dart';
import 'package:pos/root.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/models/auth.dart';
import '../data/models/authenticate.dart';
import '../helpers/api_helper.dart';
import '../screens/splash/splash.dart';
import 'layout_controller.dart';

class LoginToDatabaseController extends ChangeNotifier {
  final BuildContext context;
  LoginToDatabaseController({required this.context});

  List<dynamic>? databases = [];
  Authenticate? authenticationValue;
  String? selectedDatabase;

  Future getAllDatabases() async {
    print("Getting all databses");
    _startLoading("Loading Databases...");
    final response =
        await APIHelper.get(apiPath: "/web/database/get_all_dbs", data: {});
    response.fold((l) {
      print(l.msg);
      context.read<LayoutController>().showToast(
            text: l.msg ?? "Something went wrong",
            type: ToastType.error,
          );
    }, (r) {
      print("DataBases");
      databases = (APIResponse.fromJson(r.data).result);
    });
    _stopLoading();
    notifyListeners();
  }

  void authenticateUser({
    required String username,
    required String password,
    required BuildContext context,
  }) async {
    if (_checkIfDatabaseIsSelected()) {
      return;
    }
    if (_checkAllFieldsAreFilled(username: username, password: password)) {
      return;
    }
    _startLoading("Loggin you in...");
    final response = await APIHelper.auth(data: {
      "db": selectedDatabase ?? '',
      "login": username,
      "password": password,
    });
    response.fold((l) {
      _stopLoading();
      print(l.msg);
      context.read<LayoutController>().showToast(
            text: l.msg ?? "Something went wrong",
            type: ToastType.error,
          );
    }, (auth) async {
      _stopLoading();
      print(auth);
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString(
        SharedPrefrencesPath.accessToken,
        auth.accessToken,
      );
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) => SplashScreen(
                    isFirstSplash: true,
                  )),
          (route) => false);
    });
  }

  _checkIfDatabaseIsSelected() {
    if (selectedDatabase == null) {
      context.read<LayoutController>().showToast(
          text: "Please select Database first", type: ToastType.error);
    }
    return selectedDatabase == null;
  }

  _checkAllFieldsAreFilled(
      {required String username, required String password}) {
    if (username.isEmpty) {
      context
          .read<LayoutController>()
          .showToast(text: "Username is required", type: ToastType.error);
    } else if (password.isEmpty) {
      context.read<LayoutController>().showToast(
            text: "Password is required",
            type: ToastType.error,
          );
    }
    return username.isEmpty || password.isEmpty;
  }

  void selectDatabase(String? database) {
    selectedDatabase = database;
    notifyListeners();
  }

  _startLoading(String text) {
    context.read<LayoutController>().startLoading(loadingText: text);
  }

  _stopLoading() {
    context.read<LayoutController>().stopLoading();
  }
}
