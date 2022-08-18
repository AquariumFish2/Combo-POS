import 'package:flutter/cupertino.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/layout_controller.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/coupon.dart';
import 'package:pos/main.dart';
import 'package:provider/provider.dart';

import 'order_option_controller.dart';

class AddCouponController extends ChangeNotifier {
  String code = '4446969960461';
  Coupon? coupon;

  addDigit(int digit) {
    code = code + digit.toString();
    coupon = null;
    notifyListeners();
  }

  removeDigit() {
    if (code.isNotEmpty) {
      code = code.substring(0, code.length - 1);
      coupon = null;
      notifyListeners();
    }
  }

  apply(BuildContext context) {
    List<Coupon> allCoupons = staticStore.box<Coupon>().getAll();
    for (var element in allCoupons) {
      if (element.cBarcode == code) {
        coupon = element;
        notifyListeners();
      }
    }
    if (coupon == null) {
      context
          .read<LayoutController>()
          .showToast(text: 'wrong code', type: ToastType.error);
    }
  }

  save(BuildContext context) {
    if (coupon != null) {
      context.read<OrderController>().setCouponId(coupon!.odooId, context);
      context.read<OrderOptionController>().toggleAddCoupon();
      context.read<HomeController>().toggleOrderOptionsPopup();
      context
          .read<LayoutController>()
          .showToast(text: 'coupon saved', type: ToastType.info);
    } else {
      context
          .read<LayoutController>()
          .showToast(text: 'add coupon', type: ToastType.info);
    }
  }
}
