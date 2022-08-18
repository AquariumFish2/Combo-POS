// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:pos/data/models/local_order.dart';

class LocalOrdersController extends ChangeNotifier {
  List<LocalOrder> localOrders = [
    const LocalOrder(id: '1'),
    const LocalOrder(id: '2'),
    const LocalOrder(id: '3'),
    const LocalOrder(id: '4'),
  ];
}
