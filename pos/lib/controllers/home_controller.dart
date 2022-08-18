import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pos/controllers/categories_controller.dart';
import 'package:pos/controllers/homeContentController.dart';
import 'package:pos/controllers/layout_controller.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/product.dart';
import 'package:pos/data/database/product_category.dart';
import 'package:pos/main.dart';
import 'package:provider/provider.dart';

import '../data/database/line.dart';

enum StandAlonePage { settings, apps }
enum MenuItems {
  stopSession,
  board,
  history,
  reports,
  posOffers,
  appSettings,
  uploadDatabase,
  printerOperations,
  paymentProcesses,
  applications,
  changePassword,
  applications1,
}

class HomeController extends ChangeNotifier {
  GlobalKey<SliderMenuContainerState> menuKey =
      GlobalKey<SliderMenuContainerState>();
  List<Product> products = [];
  MenuItems menuItem = MenuItems.board;
  bool onlineOrdersModal = false;
  bool localOrdersModal = false;
  bool onlineOrderNotification = false;
  bool tablePopover = false;
  bool payNow = false;
  StandAlonePage? standAlonePage;
  bool isMenuOpen = false;
  bool orderNotesPopup = false;
  bool isStandAlonePage = false;
  bool paymentSummary = false;
  bool orderDetails = false;
  bool isRuinedOpen = false;
  bool gotProductsOnce = false;
  bool isBillDividerOpened = false;
  bool orderOptionsPopup = false;
  bool customerOverLay = false;
  bool payWithWallet = false;
  List<Product> selectedCategoryProducts = [];

  changeSelectedMenuItem(MenuItems selectedMenuItem) {
    menuItem = selectedMenuItem;
    notifyListeners();
  }

  setMenuKey(GlobalKey<SliderMenuContainerState> newKey) {
    menuKey = newKey;
  }

  searchProducts(String searchWord, BuildContext context) {
    selectedCategoryProducts = [];
    for (var product in products) {
      if (product.name!.toUpperCase().contains(searchWord.toUpperCase()) ||
          product.standardPrice.toString().contains(searchWord)) {
        selectedCategoryProducts.add(product);
      }
    }
    context
        .read<HomeContentController>()
        .changeHomePageContents(HomeContents.home, context);
    notifyListeners();
  }

  setCategory(int id, BuildContext context) {
    if (id == context.read<CategoriesController>().selectedCategoryId) {
      context.read<CategoriesController>().selectedCategoryId = null;
      selectedCategoryProducts = products;
    } else {
      context.read<CategoriesController>().selectedCategoryId = id;
      selectedCategoryProducts = products
          .where((element) =>
              element.categId ==
                  context.read<CategoriesController>().selectedCategoryId &&
              element.isExtra == false &&
              element.isDiscount == false)
          .toList();
      print(selectedCategoryProducts);
    }
    print(id);
    print(context.read<CategoriesController>().selectedCategoryId);
    notifyListeners();
  }

  getAllProducts(BuildContext context) {
    if (!gotProductsOnce) {
      products = staticStore.box<Product>().getAll();
      products.forEach((element) {
        if (element.isExtra == false && element.isDiscount == false) {
          selectedCategoryProducts.add(element);
        }
      });
      products.forEach((element) {
        if (element.isExtra == true) print(element.toJson());
      });
    }
    gotProductsOnce = true;
  }

  toggleMenu() {
    menuKey.currentState?.toggle();
    print('asking for toggle');
    print(menuKey.currentState?.isDrawerOpen);
    isMenuOpen = !isMenuOpen;
    notifyListeners();
  }

  toggleBillDivider() {
    isBillDividerOpened = !isBillDividerOpened;
    notifyListeners();
  }

  openStandAlonePage(StandAlonePage page) {
    isStandAlonePage = true;
    standAlonePage = page;
    notifyListeners();
  }

  closeAllOpenModals() {
    onlineOrdersModal = false;
    localOrdersModal = false;
    onlineOrderNotification = false;
    tablePopover = false;
    payNow = false;
    orderOptionsPopup = false;
    orderNotesPopup = false;
    notifyListeners();
  }

  toggleOnlineOrdersModal() {
    bool oldState = onlineOrdersModal;
    closeAllOpenModals();
    onlineOrdersModal = !oldState;
    notifyListeners();
  }

  toggleLocalOrdersModal() {
    bool oldState = localOrdersModal;
    closeAllOpenModals();
    localOrdersModal = !oldState;
    notifyListeners();
  }

  toggleOnlineOrderNotification() {
    bool oldState = onlineOrderNotification;
    closeAllOpenModals();
    onlineOrderNotification = !oldState;
    notifyListeners();
  }

  toggleTablePopover() {
    bool oldState = tablePopover;
    closeAllOpenModals();
    tablePopover = !oldState;
    notifyListeners();
  }

  togglePayNow(BuildContext context) {
    if (payNow == true) {
      bool oldState = payNow;
      closeAllOpenModals();
      payNow = !oldState;
      notifyListeners();
    } else {
      if (context.read<OrderController>().order != null) {
        if (context.read<OrderController>().currentOrderLines.isNotEmpty) {
          bool oldState = payNow;
          closeAllOpenModals();
          payNow = !oldState;
          notifyListeners();
        } else {
          context
              .read<LayoutController>()
              .showToast(text: 'add lines first', type: ToastType.info);
        }
      } else {
        context
            .read<LayoutController>()
            .showToast(text: 'add order first', type: ToastType.info);
      }
    }
  }

  toggleOrderOptionsPopup() {
    bool oldState = orderOptionsPopup;
    closeAllOpenModals();
    orderOptionsPopup = !oldState;
    notifyListeners();
  }

  toggleOrderNotesPopup() {
    bool oldState = orderNotesPopup;
    closeAllOpenModals();
    orderNotesPopup = !oldState;
    notifyListeners();
  }

  togglePaymentSummary() {
    paymentSummary = !paymentSummary;
    notifyListeners();
  }

  toggleRuinedOverlay() {
    isRuinedOpen = !isRuinedOpen;
    notifyListeners();
  }

  toggleCustomerOverLay() {
    customerOverLay = !customerOverLay;
    notifyListeners();
  }

  togglePayWithWallet() {
    payWithWallet = !payWithWallet;
    notifyListeners();
  }
}
