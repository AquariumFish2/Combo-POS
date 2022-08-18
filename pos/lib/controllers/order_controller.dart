import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:pos/controllers/customer_controller.dart';
import 'package:pos/controllers/floor_controller.dart';
import 'package:pos/controllers/homeContentController.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/layout_controller.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/data/database/customer.dart';
import 'package:pos/data/database/line.dart';
import 'package:pos/data/database/order.dart';
import 'package:pos/data/database/pos_order_type.dart';
import 'package:pos/data/database/product.dart';
import 'package:pos/data/database/product_category.dart';
import 'package:pos/data/database/product_note.dart';
import 'package:pos/main.dart';
import 'package:pos/screens/home/widgets/body/widgets/category.dart';
import 'package:pos/screens/home/widgets/body/widgets/products.dart';
import 'package:provider/provider.dart';

import '../data/database/extra.dart';
import '../data/database/note.dart';

class OrderController extends ChangeNotifier {
  Order1? order;
  List<Order1> allOrders = [];
  Line? selectedLine;
  bool tempSet = false;
  String qty = '1';
  String note = '';
  List<Note> selectedNotes = [];
  List<Note> notes = [];
  List<Extra> allExtras = [];
  List<Line> currentOrderLines = [];
  List<Line> splitedOrderLine = [];
  List<Line> tempOfCurrentOrderLines = [];
  bool orderDetails = false;
  double totalPrice = 0.0;
  POSOrderType? orderType;

  save(BuildContext context) {
    selectedLine!.qty = qty;
    staticStore.box<Extra>().putMany(allExtras);
    staticStore.box<Note>().putMany(notes);
    staticStore.box<Line>().put(selectedLine!);
    order = staticStore.box<Order1>().get(order!.id);
    getTotal(context);
    notifyListeners();
    toggleOrderDetails();
  }

  quitWithoutSaving() {
    // order = staticStore.box<Order1>().get(order!.id);
    toggleOrderDetails();
  }

  setOrderType(POSOrderType selectedOrderType, BuildContext context) {
    if (order == null) {
      makeOrder(context);
    }
    orderType = selectedOrderType;
    order!.orderTypeId = orderType!.odooId;
    notifyListeners();
  }

  deleteSelectedLine(BuildContext context) {
    currentOrderLines.remove(selectedLine);
    // staticStore.box<Line>().remove(selectedLine!.id);
    // order = staticStore.box<Order1>().get(order!.id);
    getTotal(context);
    toggleOrderDetails();
    notifyListeners();
  }

  getTotal(BuildContext context) {
    totalPrice = 0;
    if (order != null) {
      for (var element in currentOrderLines) {
        totalPrice +=
            double.parse(element.priceUnit!) * double.parse(element.qty!);
      }
    }
    context.read<PaymentNumPadController>().setTotal(totalPrice);
    order!.amountTotal = totalPrice.toString();
    notifyListeners();
  }

  getAllExtras(Line line) {
    List<Product> products = staticStore.box<Product>().getAll();
    allExtras = [];
    for (var product in products) {
      if (product.isExtra!) {
        Extra extra;
        extra = Extra(
          name: product.name!,
          price: product.listPrice!,
          isSelected: false,
          productId: product.id,
          extraProducts: product.extraProducts,
        );
        allExtras.add(extra);
      }
    }
    allExtras.forEach((extra) {
      extra.extraProducts!.forEach((productId) {
        if (productId == line.productId) {
          extra.line.target = line;
          print(extra.name);
          staticStore.box<Extra>().put(extra);
        }
      });
    });
  }

  selectLine(BuildContext context, Line line) {
    selectedLine = line;
    qty = line.qty!;
    if (!line.gotDataOnce) {
      getAllExtras(line);
      getAllNotes(line);
    }
    line.gotDataOnce = true;
    // staticStore.box<Line>().put(line);
    toggleOrderDetails();
    notifyListeners();
  }

  toggleOrderDetails() {
    orderDetails = !orderDetails;
    notifyListeners();
  }

  toggleSelectionExtra(Extra extra) {
    extra.toggleSelectionExtra();
    allExtras.forEach((element) {
      if (element.id == extra.id) {
        element.toggleSelectionExtra();
      }
    });
    notifyListeners();
  }

  toggleSelectionNote(Note note) {
    print('selecting');
    note.toggleSelectionNote();
    notes.forEach((element) {
      if (element.id == note.id) {
        element.toggleSelectionNote();
        print(element.name);
        print(element.isSelected);
      }
    });
    notifyListeners();
  }

  getProductFromId(int id) {
    List<Product> products = staticStore.box<Product>().getAll();
    Product product = products.firstWhere((element) => element.odooId == id);
    return product;
  }

  getAllNotes(Line line) {
    notes = staticStore.box<ProductNote>().getAll().map((e) {
      Note note;
      note = Note(
        name: e.name!,
        categoryIds: e.posCategoryIds as List<int>?,
      );
      return note;
    }).toList();
    List<ProductCategory> categories =
        staticStore.box<ProductCategory>().getAll();
    for (var note in notes) {
      // print('note: ${note.toJson()}');
      if (note.categoryIds != null) {
        List? noteCatIds = note.categoryIds;
        Product product = staticStore
            .box<Product>()
            .getAll()
            .firstWhere((element) => element.odooId == line.productId);
        print("product category ID:${product.categId}");
        print('catIDs:${note.categoryIds}');
        for (var noteCatId in noteCatIds!) {
          if (product.categId == noteCatId) {
            note.line.target = line;
            staticStore.box<Note>().put(note);
          }
        }
      }
    }
    line.notes.forEach((element) {
      print(element.name);
    });
  }

  adjustQuantity(int value) {
    if (selectedLine != null && (int.parse(qty) + value > 0)) {
      qty = (int.parse(qty) + value).toString();
    }
    notifyListeners();
  }

  updateTableAndFloorIds(int tableId) {
    order!.tableId = tableId;
  }

  addLine(Product product, BuildContext context) {
    if (order == null) {
      makeOrder(context);
    }
    Line line = Line(
      productId: product.odooId,
      fullProductName: product.name,
      priceSubtotal: '',
      priceSubtotalIncl: '',
      priceUnit: product.listPrice.toString(),
      qty: '1',
      productOBid: product.id,
    );
    line.order.target = order;
    currentOrderLines.add(line);
    // staticStore.box<Line>().put(line);
    // order = staticStore.box<Order1>().get(line.order.targetId)!;
    getTotal(context);
    notifyListeners();
    return line;
  }

  makeOrder(BuildContext context) {
    print(context.read<PosController>().selectedPOS!.odooId);
    order = Order1(
      name:
          '${context.read<PosController>().selectedPOS!.name}/${staticStore.box<Order1>().getAll().length + 1}',
      mobileRef: '123',
      sessionId: 20,
      userId: 8,
      amountTax: '',
      amountPaid: '',
      amountReturn: '',
      amountTotal: '',
      note: selectedNotes.map((e) => note + e.name).toString(),
      couponId: 1,
      returnReasonId: 1,
      branchId: 1,
      posReference: 'ref...',
      pricelistId: 5,
      posId: context.read<PosController>().selectedPOS!.odooId,
      time: DateFormat("HH:mm").format(DateTime.now()),
      date: DateTime.now(),
      orderNum: staticStore.box<Order1>().getAll().length + 1,
    );
    print(order!.orderNum);
  }

  saveOrder(BuildContext context) {
    staticStore.box<Line>().putMany(currentOrderLines);
    staticStore.box<Order1>().put(order!);
    currentOrderLines = [];
    // getTotal(context);
    context.read<PaymentNumPadController>().getPayments(context);
    context.read<PaymentNumPadController>().resetDone();
    context.read<FloorController>().chosenTable = null;
    context.read<FloorController>().selectedFloor = null;
    context.read<CustomerController>().selectedCustomer = null;
    context
        .read<HomeContentController>()
        .changeHomePageContents(HomeContents.home, context);

    totalPrice = 0;
    order = null;
    getAllOrders();
    notifyListeners();
  }

  selectOrder(Order1 newOrder, BuildContext context) {
    order = newOrder;
    currentOrderLines = newOrder.lines;
    getTotal(context);
    context.read<PaymentNumPadController>().getPayments(context);
    context.read<FloorController>().setTableWithId(order!.tableId, context);
    context
        .read<CustomerController>()
        .setCustomerWithId(order!.customerId, context);
    context
        .read<HomeContentController>()
        .changeHomePageContents(HomeContents.home, context);
    notifyListeners();
  }

  bool checkOrderIfNull() {
    if (order != null) {
      return false;
    } else {
      return true;
    }
  }

  addNewOrder(BuildContext context) {
    if (currentOrderLines.isNotEmpty) {
      if (order != null) {
        getTotal(context);
        staticStore.box<Line>().putMany(currentOrderLines);
        staticStore.box<Order1>().put(order!);
        totalPrice = 0;
        context.read<PaymentNumPadController>().getPayments(context);
        context.read<FloorController>().chosenTable = null;
        context.read<FloorController>().selectedFloor = null;
        context.read<CustomerController>().selectedCustomer = null;
      }
      currentOrderLines = [];
      getTotal(context);
      makeOrder(context);
      getAllOrders();
    } else {
      context
          .read<LayoutController>()
          .showToast(text: 'add lines first', type: ToastType.info);
    }
    notifyListeners();
  }

  getAllOrders() async {
    allOrders = staticStore.box<Order1>().getAll();
    print(allOrders);
  }

  clearOrders() {
    staticStore.box<Order1>().removeAll();
    currentOrderLines = [];
    totalPrice = 0;
    order = null;
    allOrders = [];
    notifyListeners();
  }

  selectLineToSplit(Line line) {
    splitedOrderLine.add(line);
    tempOfCurrentOrderLines.remove(line);
    notifyListeners();
  }

  regainTheSplittedLine(Line line) {
    tempOfCurrentOrderLines.add(line);
    splitedOrderLine.remove(line);
    notifyListeners();
  }

  selectAllLinesToSplit() {
    splitedOrderLine.addAll(tempOfCurrentOrderLines);
    tempOfCurrentOrderLines = [];
    notifyListeners();
  }

  regainAllSplittedLines() {
    tempOfCurrentOrderLines.addAll(splitedOrderLine);
    splitedOrderLine = [];
    notifyListeners();
  }

  savingSplit(BuildContext context) {
    if (splitedOrderLine.isNotEmpty) {
      List<Line> allLines = staticStore.box<Line>().getAll();
      for (var element in allLines) {
        if (element.order.target == order) {
          staticStore.box<Line>().remove(element.id);
        }
      }
      totalPrice = 0;
      for (var element in tempOfCurrentOrderLines) {
        element.order.target = order;
        totalPrice = double.parse(element.priceUnit!) + totalPrice;
      }
      print(totalPrice);
      order!.amountTotal = totalPrice.toString();
      staticStore.box<Line>().putMany(tempOfCurrentOrderLines);
      staticStore.box<Order1>().put(order!);
      makeOrder(context);
      for (var element in splitedOrderLine) {
        element.order.target = order;
      }
      staticStore.box<Line>().putMany(splitedOrderLine);
      order = staticStore.box<Order1>().get(order!.id);
      context.read<HomeController>().toggleBillDivider();
      staticStore.box<Order1>().put(order!);
      getTotal(context);
    } else {
      context
          .read<LayoutController>()
          .showToast(text: 'Select Lines To divide..', type: ToastType.info);
    }
    notifyListeners();
  }

  split(List<Line> newLines, BuildContext context) {
    currentOrderLines = newLines;
    getTotal(context);
    notifyListeners();
  }

  cancelSplit(BuildContext context) {
    context.read<HomeController>().toggleBillDivider();
  }

  setCouponId(int id, BuildContext context) {
    if (order != null) {
      order!.couponId = id;
      print(order!.couponId);
      notifyListeners();
    } else {
      makeOrder(context);
      order!.couponId = id;
      print(order!.couponId);
      notifyListeners();
    }
  }

  deleteCurrentOrder(BuildContext context) {
    currentOrderLines = [];
    order = null;
    totalPrice = 0;
    print('object');
    notifyListeners();
  }

  String getOrderNumber() {
    if (order != null) {
      int temp = order!.orderNum!;
      if (temp < 1) {
        temp = staticStore.box<Order1>().getAll().length + 1;
      }

      // int temp = int.parse(order!.name!.substring(order!.name!.length));
      if (temp / 10000 > 1) {
        return temp.toString();
      } else if (temp / 1000 > 1) {
        return '0$temp';
      } else if (temp / 100 > 1) {
        return '00$temp';
      } else if (temp / 10 > 1) {
        return '000$temp';
      } else {
        return '0000$temp';
      }
    }
    int temp = staticStore.box<Order1>().getAll().length + 1;
    if (temp / 10000 > 1) {
      return temp.toString();
    } else if (temp / 1000 > 1) {
      return '0$temp';
    } else if (temp / 100 > 1) {
      return '00$temp';
    } else if (temp / 10 > 1) {
      return '000$temp';
    } else {
      return '0000$temp';
    }
  }
}
