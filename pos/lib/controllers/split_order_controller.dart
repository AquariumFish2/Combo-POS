import 'package:flutter/cupertino.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/main.dart';
import 'package:provider/provider.dart';

import '../data/database/line.dart';
import 'home_controller.dart';
import 'layout_controller.dart';

class SplitOrderController extends ChangeNotifier {
  List<Line> currentOrderLines = [];
  List<Line> splittedOrderLines = [];

  startingSplitting(BuildContext context) {
    currentOrderLines = context.read<OrderController>().currentOrderLines;
    splittedOrderLines = [];
  }

  splitLine(Line line) {
    currentOrderLines.remove(line);
    splittedOrderLines.add(line);
    notifyListeners();
  }

  regainSplittedLine(Line line) {
    currentOrderLines.add(line);
    splittedOrderLines.remove(line);
    notifyListeners();
  }

  checkSplitable(BuildContext context) {
    splittedOrderLines = [];
    currentOrderLines = context.read<OrderController>().currentOrderLines;
    if (context.read<OrderController>().order != null &&
        currentOrderLines.isNotEmpty) {
      context.read<HomeController>().toggleBillDivider();
    } else if (context.read<OrderController>().order == null) {
      context.read<LayoutController>().showToast(
          text: 'Select or Add order to split..', type: ToastType.info);
    } else if (currentOrderLines.isEmpty) {
      context
          .read<LayoutController>()
          .showToast(text: 'Order is empty..', type: ToastType.info);
    }
  }

  onCancel(BuildContext context) {
    currentOrderLines.addAll(splittedOrderLines);
    context.read<OrderController>().currentOrderLines = currentOrderLines;
    notifyListeners();
    context.read<HomeController>().toggleBillDivider();
    context.read<HomeController>().toggleOrderOptionsPopup();
  }

  onSave(BuildContext context) {
    if (splittedOrderLines.isNotEmpty) {
      context.read<HomeController>().toggleBillDivider();
      context.read<HomeController>().toggleOrderOptionsPopup();
      currentOrderLines.forEach((element) {
        element.order.target = context.read<OrderController>().order!;
      });
      staticStore.box<Line>().putMany(currentOrderLines);
      context.read<OrderController>().addNewOrder(context);
      context.read<OrderController>().split(splittedOrderLines, context);
      notifyListeners();
    } else {
      context
          .read<LayoutController>()
          .showToast(text: 'add line to split', type: ToastType.info);
    }
  }
}
