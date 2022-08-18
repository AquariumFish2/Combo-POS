// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../data/models/online_order.dart';

class OnlineOrdersController extends ChangeNotifier {
  bool payOnOnlineOrdersPopup = false;
  List<OnlineOrder> onlineOrders = [
    const OnlineOrder(id: '1'),
    const OnlineOrder(id: '2'),
    const OnlineOrder(id: '3', payed: true),
  ];
  toggleOrderOpenStatus(String id) {
    OnlineOrder newOrder =
        onlineOrders[onlineOrders.indexWhere((element) => element.id == id)];
    onlineOrders = onlineOrders.map((e) => e.copyWith(open: false)).toList();
    onlineOrders[onlineOrders.indexWhere((element) => element.id == id)] =
        newOrder.copyWith(open: !newOrder.open);
    notifyListeners();
  }

  togglePayOnOnlineOrderPopup() {
    payOnOnlineOrdersPopup = !payOnOnlineOrdersPopup;
    notifyListeners();
  }
}
