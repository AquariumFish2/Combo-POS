import 'package:flutter/material.dart';
import 'package:pos/controllers/checkout_controller.dart';
import 'package:pos/controllers/layout_controller.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/data/database/pos.dart';
import 'package:pos/data/database/user.dart';
import 'package:pos/main.dart';
import 'package:pos/screens/checkout/check_out.dart';
import 'package:pos/screens/home/home.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UsersPinCodeController extends ChangeNotifier {
  final _baseUrl = 'democ.combotech.cf';
  List<User> users = [];
  User? selectedUser;
  String pinCode = '';
  bool gotUsersOnce = false;
  getAllUsers(BuildContext context) async {
    if (!gotUsersOnce) {
      gotUsersOnce = true;
      List<User> allUsers = staticStore.box<User>().getAll();
      SharedPreferences shared = await SharedPreferences.getInstance();
      final int selectedPosId = shared.getInt(SharedPrefrencesPath.posId)!;
      print('found pos id $selectedPosId');
      final POS pos = staticStore
          .box<POS>()
          .getAll()
          .firstWhere((element) => element.odooId == selectedPosId);
      allUsers.forEach((user) {
        if (pos.userIds!.any((element) => element == user.odooId)) {
          users.add(user);
        }
      });
      selectedUser = users.first;
      notifyListeners();
    }
  }

  selectUser(User user) {
    selectedUser = user;
    notifyListeners();
  }

  bool isSelectedUser(User user) {
    return user == selectedUser;
  }

  addNumberToPinCode(String stringNum) {
    if (pinCode.length < 4) pinCode += stringNum;
    notifyListeners();
  }

  deleteLastNumberFromPinCode() {
    if (pinCode.isNotEmpty) {
      pinCode = pinCode.substring(0, pinCode.length - 1);
    }
    notifyListeners();
  }

  String hintStars() {
    String stars = '';
    if (pinCode.isEmpty) return '****';
    stars = pinCode.replaceAll(RegExp(r"."), '*');
    return stars;
  }

  authenticate(BuildContext context) {
    if (selectedUser!.securityPin == pinCode) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: ((context) => const CheckOut()),
        ),
        (route) => false,
      );
    } else {
      context
          .read<LayoutController>()
          .showToast(text: 'Wrong Pin code', type: ToastType.error);
    }
  }
}
