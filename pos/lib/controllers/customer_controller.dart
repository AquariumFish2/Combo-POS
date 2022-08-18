import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:pos/controllers/branch_controller.dart';
import 'package:pos/controllers/companyController.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/customer.dart';
import 'package:pos/data/database/order.dart';
import 'package:pos/main.dart';
import 'package:pos/screens/customers/widgets/code_and_username.dart';
import 'package:pos/screens/home/home.dart';
import 'package:pos/screens/home/widgets/pay/widgets/pay_pad/widgets/save_button.dart';
import 'package:provider/provider.dart';

import '../helpers/az_item.dart';

class CustomerController extends ChangeNotifier {
  List<Customer> customers = [];
  List<Customer> searchedCustomers = [];
  Customer? selectedCustomer;
  String mobileNum = '';
  String name = '';
  String code = '';
  String userName = '';
  bool addNameAndMobile = true;
  bool isAddCustomerShown = false;
  bool addCodeAndUserName = false;
  bool showNumPad = false;
  List<AZItem> modifiedList = [];

  getSearchedCustomers(String searchWord) {
    searchedCustomers = customers
        .where(
          (element) =>
              element.name!.toUpperCase().contains(searchWord.toUpperCase()) ||
              element.phone!.toUpperCase().contains(searchWord.toUpperCase()) ||
              element.posTotalAmount.toString() == searchWord,
        )
        .toList();
    notifyListeners();
  }

  getAllCustomers() {
    customers = staticStore.box<Customer>().getAll();
    searchedCustomers = customers;
    modifiedList = customers
        .map((e) => AZItem(title: e.name!, tag: e.name![0].toUpperCase()))
        .toList();
  }

  toggleAddCustomerOverLay() {
    isAddCustomerShown = !isAddCustomerShown;
    notifyListeners();
  }

  addCodeValue(String num) {
    code += num;
    notifyListeners();
  }


  deleteLastDigit() {
    if (code.isNotEmpty) {
      code = code.substring(0, code.length - 1);
      notifyListeners();
    }
  }

  setCustomerWithId(int? id, BuildContext context) {
    if (id != null) {
      selectedCustomer = staticStore
          .box<Customer>()
          .getAll()
          .firstWhere((element) => id == element.odooId);
    }
    notifyListeners();
  }

  saveName(String value) {
    name = value;
  }

  saveMobileNum(String value) {
    mobileNum = value;
  }

  nameAndMobileNextButton() {
    addNameAndMobile = false;
    showNumPad = true;
    code = '';
    notifyListeners();
  }

  numPadTextTap() {
    addCodeAndUserName = false;
    showNumPad = true;
    notifyListeners();
  }

  NumPadButton(BuildContext context) {
    addCustomer(context);
    addNameAndMobile = true;
    addCodeAndUserName = false;
    showNumPad = false;
    toggleAddCustomerOverLay();
  }

  addCustomer(BuildContext context) {
    var random = Random().nextInt(10000);
    Customer customer = Customer(
        odooId: random,
        name: name,
        phone: mobileNum,
        companyId: context.read<CompanyController>().selectedCompany!.id,
        branchId: context.read<BranchController>().selectedBranch!.id,
        posTotalAmount: double.parse(code));
    staticStore.box<Customer>().put(customer);
    print(staticStore.box<Customer>().getAll());
    customers.add(customer);
    searchedCustomers = customers;
    notifyListeners();
  }

  selectCustomer(Customer customer, BuildContext context) {
    selectedCustomer = customer;
    if (context.read<OrderController>().order != null) {
      context.read<OrderController>().order!.customerId = customer.odooId;
    } else {
      context.read<OrderController>().makeOrder(context);
      context.read<OrderController>().order!.customerId = customer.odooId;
    }
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
      (route) => false,
    );
  }

  codeAndUserNameButton(String userName, BuildContext context) {
    if (userName.isNotEmpty) {
      this.userName = userName;
      addCustomer(context);
      addNameAndMobile = true;
      addCodeAndUserName = false;
      showNumPad = false;
      toggleAddCustomerOverLay();
    }
  }
}
