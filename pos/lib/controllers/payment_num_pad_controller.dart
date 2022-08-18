import 'package:flutter/material.dart';
import 'package:pos/controllers/customer_controller.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/order.dart';
import 'package:pos/data/database/payment_method.dart';
import 'package:pos/screens/customers/customers_screen.dart';
import 'package:provider/provider.dart';
import '../data/database/pay.dart';
import '../helpers/string_helpers.dart';
import '../main.dart';

class PaymentNumPadController extends ChangeNotifier {
  double total = 0;
  double typedCash = 0;
  String stringTotal = '';
  List<Pay> payments = [];
  bool dotAdded = false;
  bool paying = false;
  bool paymentMethodHasBank = false;
  PaymentMethod? paymentMethod;
  Pay? currentPay;
  PaymentNumPadController({
    required this.total,
  });

  setTotal(double newTotal) {
    total = newTotal;
    notifyListeners();
  }

  onDoubleTap(PaymentMethod method, BuildContext context) {
    if (method.name!.toUpperCase().contains('CASH')) {
      Pay pay = Pay(
        odooId: method.odooId,
        money: 0,
        aquirded: total - checkWhatWePaid(context),
        change: 0,
        type: getPayType(method),
        bank: getPayType(method).toLowerCase() == 'bank',
        cash: getPayType(method).toLowerCase() == 'cash',
        others: getPayType(method).toLowerCase() == 'others',
      );
      pay.money += total - checkWhatWePaid(context);
      currentPay = pay;
      pay.order.target = context.read<OrderController>().order;
      staticStore.box<Pay>().put(pay);
      context.read<OrderController>().order = staticStore
          .box<Order1>()
          .get(context.read<OrderController>().order!.id);
      paymentMethod = method;
      payments = context.read<OrderController>().order!.payments;
      notifyListeners();
    }
  }

  setPaymentMethod(PaymentMethod method, BuildContext context) {
    if (method.name!.toUpperCase().contains('BANK')) {
      paymentMethod = method;
      addingPay(context);
    }
    if (method.name!.toUpperCase().contains('CASH')) {
      paymentMethod = method;
    }
    if ((!method.name!.toUpperCase().contains('BANK') &&
        !method.name!.toUpperCase().contains('CASH'))) {
      if (context.read<CustomerController>().selectedCustomer != null) {
        paymentMethod = method;
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => CustomersScreen(),
            ),
            ((route) => false));
      }
    }
    notifyListeners();
  }

  bool checkDone(BuildContext context) {
    if (paymentMethod != null && checkWhatWePaid(context) == total) {
      return true;
    } else {
      return false;
    }
  }

  addingPay(BuildContext context) {
    print('got into method');
    // staticStore.box<Pay>().removeAll();
    checkDone(context);
    if (paymentMethod != null) {
      print(paymentMethod);
      Pay pay = initPay();
      if (pay.bank!) {
        print('its bank');
        bankPay(context, pay);
      } else {
        notBankPay(pay, context);
      }
    } else {
      Pay pay = initPayWithNoPaymentMethod();
      print(pay);
      notBankPay(pay, context);
    }

    payments = context.read<OrderController>().order!.payments;
    notifyListeners();
  }

  initPay() {
    return Pay(
      odooId: paymentMethod!.odooId,
      money: 0,
      aquirded: typedCash,
      change: 0,
      type: getPayType(paymentMethod!),
      bank: getPayType(paymentMethod!).toLowerCase() == 'bank',
      cash: getPayType(paymentMethod!).toLowerCase() == 'cash',
      others: getPayType(paymentMethod!).toLowerCase() == 'others',
    );
  }

  initPayWithNoPaymentMethod() {
    List<PaymentMethod> allMethods = staticStore.box<PaymentMethod>().getAll();
    paymentMethod = allMethods
        .firstWhere((element) => element.name!.toUpperCase().contains('CASH'));
    return Pay(
      odooId: paymentMethod!.odooId,
      money: 0,
      aquirded: typedCash,
      change: 0,
      type: getPayType(paymentMethod!),
      bank: getPayType(paymentMethod!).toLowerCase() == 'bank',
      cash: getPayType(paymentMethod!).toLowerCase() == 'cash',
      others: getPayType(paymentMethod!).toLowerCase() == 'others',
    );
  }

  bankPay(BuildContext context, Pay pay) {
    if (checkWhatWePaid(context) < total) {
      print('what we paid:${checkWhatWePaid(context)}');
      paymentMethodHasBank = true;
      pay.money += total - checkWhatWePaid(context);
      pay.order.target = context.read<OrderController>().order;
      pay.aquirded = pay.money;
      staticStore.box<Pay>().put(pay);
      context.read<OrderController>().order = staticStore
          .box<Order1>()
          .get(context.read<OrderController>().order!.id);
      currentPay = pay;
    }
  }

  notBankPay(Pay pay, BuildContext context) {
    if (typedCash > 0 && checkWhatWePaid(context) < total) {
      if (total < typedCash) {
        pay.money += total - checkWhatWePaid(context);
        currentPay = pay;
        pay.order.target = context.read<OrderController>().order;
        staticStore.box<Pay>().put(pay);
        context.read<OrderController>().order = staticStore
            .box<Order1>()
            .get(context.read<OrderController>().order!.id);
      } else if (total - checkWhatWePaid(context) > typedCash) {
        currentPay = pay;
        pay.money += typedCash;
        pay.order.target = context.read<OrderController>().order;
        staticStore.box<Pay>().put(pay);
        context.read<OrderController>().order = staticStore
            .box<Order1>()
            .get(context.read<OrderController>().order!.id);
      } else {
        currentPay = pay;
        pay.money += total - checkWhatWePaid(context);
        pay.order.target = context.read<OrderController>().order;
        staticStore.box<Pay>().put(pay);
        context.read<OrderController>().order = staticStore
            .box<Order1>()
            .get(context.read<OrderController>().order!.id);
      }
    } else {
      checkDone(context);
    }
  }

  removingPay(Pay paymentMethod, BuildContext context) {
    checkDone(context);
    final allPays = context.read<OrderController>().order!.payments;
    print('tapped');
    for (var pay1 in allPays) {
      print("PaymentType:${paymentMethod.type}");
      print("payType:${pay1.type}");
      if (pay1.type.toLowerCase().contains('bank') && paymentMethod != pay1) {
        pay1.money += paymentMethod.money;
        staticStore.box<Pay>().put(pay1);
      }
      if (paymentMethod.type.toLowerCase().contains('bank')) {
        print('bank');
        paymentMethodHasBank = false;
        notifyListeners();
      }
    }
    staticStore.box<Pay>().remove(paymentMethod.id);
    context.read<OrderController>().order = staticStore
        .box<Order1>()
        .get(context.read<OrderController>().order!.id);
    payments = context.read<OrderController>().order!.payments;
    if (this.paymentMethod != null &&
        this.paymentMethod!.odooId == paymentMethod.odooId &&
        paymentMethodHasBank) {
      this.paymentMethod = null;
    }
    notifyListeners();
  }

  String getPayType(PaymentMethod paymentMethod) {
    if (paymentMethod.name!.toUpperCase().contains("CASH")) {
      return 'Cash';
    } else if (paymentMethod.name!.toUpperCase().contains("BANK")) {
      return 'Bank';
    } else {
      return 'others';
    }
  }

  resetDone() {
    notifyListeners();
  }

  checkWhatWePaid(BuildContext context) {
    if (context.read<OrderController>().order != null) {
      final allPays = context.read<OrderController>().order!.payments;
      double whatWePaid = 0;
      print(allPays);
      for (var element in allPays) {
        print('got inside');
        whatWePaid += element.money;
      }
      return whatWePaid;
    }
  }

  getPayments(BuildContext context) {
    if (context.read<OrderController>().order != null) {
      payments = context.read<OrderController>().order!.payments;
      if (payments
          .any((element) => element.type.toUpperCase().contains('BANK'))) {
        paymentMethodHasBank = true;
      } else {
        paymentMethodHasBank = false;
      }
    } else {
      payments = [];
    }
    notifyListeners();
  }

  // bool checkExistence(PaymentMethod paymentMethod) {
  //   final allPays context.read<OrderController>().order!.payments;
  //   double whatWePaid = 0;
  //   print(allPays);
  //   for (var element in allPays) {
  //     if (element.odooId == paymentMethod.odooId) {
  //       print('exists');
  //       return true;
  //     }
  //   }
  //   return false;
  // }

  // Pay? getPayWhenExists(PaymentMethod paymentMethod) {
  //   final allPays= context.read<OrderController>().order!.payments;
  //   for (var element in allPays) {
  //     if (element.odooId == paymentMethod.odooId) {
  //       return element;
  //     }
  //   }
  //   return null;
  // }

  typeNumber(String num) {
    String newNum = StringsHelper.getDoubleAsString(typedCash, dotAdded);
    if (typedCash.toString().endsWith('.0') && dotAdded) {
      newNum = newNum.substring(0, newNum.length - 1);
      dotAdded = false;
    }
    print(newNum);
    newNum += num;
    typedCash = double.parse(newNum);
    notifyListeners();
  }

  removeNumber() {
    String string = StringsHelper.getDoubleAsString(typedCash, false);
    if (string.isNotEmpty && string != '0') {
      string = string.substring(0, string.length - 1);
      if (string.isEmpty) {
        string = '0';
      }
    }
    typedCash = double.parse(string);
    notifyListeners();
  }

  addDot() {
    String string = StringsHelper.getDoubleAsString(typedCash, dotAdded);
    dotAdded = true;
    if (string.contains('.')) {
      return;
    } else {
      string += '.0';
    }
    typedCash = double.parse(string);
    notifyListeners();
  }

  addAmount(double amount) {
    typedCash += amount;
    notifyListeners();
  }
}
