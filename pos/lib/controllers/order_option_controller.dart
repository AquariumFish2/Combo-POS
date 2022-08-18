import 'package:flutter/cupertino.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/layout_controller.dart';
import 'package:pos/controllers/users_pin_code_controller.dart';
import 'package:provider/provider.dart';

class OrderOptionController extends ChangeNotifier {
  bool discount = false;
  bool discountTypes = false;
  bool priceList = false;
  bool orderTypes = false;
  bool addCoupon = false;
  String userPassword = '';

  addNumToUserPassword(String num) {
    if (userPassword.length < 4) {
      userPassword += num;
      notifyListeners();
    }
  }

  removeNumFromUserPassword() {
    if (userPassword.isNotEmpty) {
      userPassword = userPassword.substring(0, userPassword.length - 1);
      notifyListeners();
    }
  }

  toggleDiscountLayout() {
    bool oldState = discount;
    closeAllModels();
    discount = !oldState;
    notifyListeners();
  }

  toggleDiscountTypes() {
    bool oldState = discountTypes;
    closeAllModels();
    discountTypes = !oldState;
    notifyListeners();
  }

  togglePriceList() {
    print('tried to toggle');
    bool oldState = priceList;
    print('priceListBeforeToggling:$oldState');
    closeAllModels();
    priceList = !oldState;
    print('priceListStatus:$priceList');
    notifyListeners();
  }

  toggleOrderTypes() {
    bool oldState = orderTypes;
    closeAllModels();
    orderTypes = !oldState;
    notifyListeners();
  }

  toggleAddCoupon() {
    bool oldState = addCoupon;
    closeAllModels();
    addCoupon = !oldState;
    notifyListeners();
  }

  closeAllModels() {
    discount = false;
    discountTypes = false;
    priceList = false;
    orderTypes = false;
    addCoupon = false;
    notifyListeners();
  }

  authenticateUser(BuildContext context) {
    if (context.read<UsersPinCodeController>().selectedUser!.securityPin ==
        userPassword) {
      toggleDiscountLayout();
      toggleDiscountTypes();
    } else {
      context
          .read<LayoutController>()
          .showToast(text: 'wrong password', type: ToastType.error);
    }
  }
}
