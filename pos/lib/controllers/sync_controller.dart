import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/data/database/branch.dart';
import 'package:pos/data/database/company.dart';
import 'package:pos/data/database/driver.dart';
import 'package:pos/data/database/pos.dart';
import 'package:pos/data/database/product_note.dart';
import 'package:pos/data/database/tax.dart';
import 'package:pos/helpers/api_helper.dart';
import 'package:pos/root.dart';
import 'package:pos/screens/home/home.dart';
import 'package:pos/screens/login/POSs.dart';
import 'package:provider/provider.dart';

import '../data/database/coupon.dart';
import '../data/database/customer.dart';
import '../data/database/discount_program.dart';
import '../data/database/floor.dart';
import '../data/database/key_type.dart';
import '../data/database/payment_method.dart';
import '../data/database/pos_category.dart';
import '../data/database/pos_data.dart';
import '../data/database/pos_group.dart';
import '../data/database/pos_multi_session.dart';
import '../data/database/pos_order_type.dart';
import '../data/database/pos_security_role.dart';
import '../data/database/pos_type.dart';
import '../data/database/price_list.dart';
import '../data/database/product.dart';
import '../data/database/product_category.dart';
import '../data/database/promotion.dart';
import '../data/database/restaurant_printer.dart';
import '../data/database/return_reason.dart';
import '../data/database/scrap_reason.dart';
import '../data/database/table.dart' as table;
import '../data/database/user.dart';

class SyncController extends ChangeNotifier {
  final Store store;
  final BuildContext context;
  int loadingPercentage = 0;

  //make sure we start with companies api to match this text otherwise change it
  String loadingText = "getting companies";

  SyncController({required this.store, required this.context});
  checkIfDone() {
    if (loadingPercentage == 26) {
      return true;
    } else {
      return false;
    }
  }

  syncAppData(bool isFirstSplash, BuildContext context) async {
    loadingPercentage = 0;
    await _syncCompanies();
    _changeLoadingText("getting branches");
    await _syncBranches();
    _changeLoadingText("getting users");
    await _syncUsers();
    _changeLoadingText("getting return reasons");
    await _syncReturnReasons();
    _changeLoadingText("getting POSs");
    await _syncPOSs();
    _changeLoadingText("getting POSTypes");
    await _syncPOSTypes();
    _changeLoadingText("getting POSOrderTypes");
    await _syncPOSOrderTypes();
    _changeLoadingText("getting Drivers");
    await _syncDrivers();
    _changeLoadingText("getting payment methods");
    await _syncPaymentMethods();
    _changeLoadingText("getting Key types");
    await _syncKeyTypes();
    _changeLoadingText("getting Scrap reasons");
    await _syncScrapReasons();
    _changeLoadingText("getting Discount Programs");
    await _syncDiscountPrograms();
    _changeLoadingText('getting promotions');
    await _syncPromotions();
    _changeLoadingText('getting coupons');
    await _syncCoupons();
    _changeLoadingText('getting pos security roles');
    await _syncPOSSecurityRoles();
    _changeLoadingText('getting pos Sgroups');
    await _syncPOSGroups();
    _changeLoadingText('getting restuarant floors');
    await _syncFloors();
    _changeLoadingText('getting product notes');
    await _syncProductNotes();
    _changeLoadingText('getting price lists');
    await _syncPriceLists();
    _changeLoadingText('getting tables');
    await _syncTables();
    _changeLoadingText('getting taxes');
    await _syncTaxes();
    _changeLoadingText('getting customers');
    await _syncCustomers();
    _changeLoadingText('getting pos categories');
    await _syncPOSCategories();
    _changeLoadingText('getting product categories');
    await _syncProductCategories();
    _changeLoadingText('getting products');
    await _syncProducts();
    _changeLoadingText('getting restaurant printers');
    await _syncRestaurantsPrinters();
    _changeLoadingText('getting pos multi sessions');
    await _syncPOSMultiSessions();
    if (isFirstSplash) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const Poses(),
          ),
          (route) => false);
    } else {
      Navigator.pop(context);
    }
    print(loadingPercentage);
  }

  _changeLoadingText(String newText) {
    loadingPercentage += 1;
    loadingText = newText;
    notifyListeners();
  }

  _customintList(Response<dynamic> result, String path) {
    if (result.data['result'] != null) {
      result.data['result'].forEach((e) {
        if (e[path] != null) return e[path] = List<int>.from(e[path]);
      });
    }
  }

  _posAddTypes(Response result) {
    _customintList(result, 'user_ids');
  }

  _usersAddType(Response result) {
    _customintList(result, 'pos_security_group_ids');
    _customintList(result, 'company_ids');
  }

  _posOrderTypeAddTypes(Response result) {
    _customintList(result, 'payment_method_ids');
  }

  _discountProgramsAddTypes(Response result) {
    _customintList(result, 'pos_category_ids');
    _customintList(result, 'pos_applied');
  }

  _promotionsAddTypes(Response result) {
    _customintList(result, 'discount_order_ids');
    _customintList(result, 'discount_ecommerce_category_ids');
    _customintList(result, 'discount_quantity_ids');
    _customintList(result, 'gift_condition_ids');
    _customintList(result, 'gift_free_ids');
    _customintList(result, 'discount_condition_ids');
    _customintList(result, 'discount_apply_ids');
    _customintList(result, 'price_ids');
    _customintList(result, 'special_category_ids');
    _customintList(result, 'multi_buy_ids');
    _customintList(result, 'product_ids');
    _customintList(result, 'special_customer_ids');
    _customintList(result, 'promotion_group_ids');
  }

  _couponsAddTypes(Response result) {
    _customintList(result, 'categ_ids');
  }

  _posGroupsAddTypes(Response result) {
    _customintList(result, 'pos_role_ids');
    _customintList(result, 'pos_user_ids');
  }

  _productNotesAddTypes(Response result) {
    _customintList(result, 'pos_category_ids');
  }

  _priceListAddTypes(Response result) {
    _customintList(result, 'country_group_ids');
  }

  _taxesAddTypes(Response result) {
    _customintList(result, 'children_tax_ids');
    _customintList(result, 'invoice_repartition_line_ids');
    _customintList(result, 'refund_repartition_line_ids');
  }

  _customersAddTypes(Response result) {
    _customintList(result, 'category_id');
  }

  _posCategoriesAddTypes(Response result) {
    _customintList(result, 'exclude_pos_ids');
    _customintList(result, 'restaurant_printer_ids');
  }

  _productAddTypes(Response result) {
    _customintList(result, 'taxes_id');
    _customintList(result, 'accessory_product_ids');
    _customintList(result, 'alternative_product_ids');
    _customintList(result, 'public_categ_ids');
    _customintList(result, 'extra_products');
  }

  _restaurantPrinterAddTypes(Response result) {
    _customintList(result, 'pos_order_type_ids');
    _customintList(result, 'pos_config_ids');
    _customintList(result, 'product_categories_ids');
  }

  _posMultiSessionAddTypes(Response result) {
    _customintList(result, 'pos_ids');
    _customintList(result, 'floor_ids');
    _customintList(result, 'fiscal_position_ids');
  }

  //Companies
  Future<bool> _syncCompanies() {
    return APIHelper.get(apiPath: '/pos_custom/get_all_companies', data: {
      "jsonrpc": "2.0",
      "params": {"company_ids": []}
    }).then(
      (result) => result.fold(
        (err) {
          return false;
        },
        (result) {
          store.box<Company>().removeAll();
          CompanyMapper mapper = CompanyMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<Company>().put(element);
          });
          return true;
        },
      ),
    );
  }

  //Companies
  Future<bool> _syncBranches() {
    return APIHelper.get(apiPath: '/pos_custom/get_all_branches', data: {
      "jsonrpc": "2.0",
      "params": {"branche_ids": []}
    }).then(
      (result) => result.fold(
        (err) {
          return false;
        },
        (result) {
          store.box<Branch1>().removeAll();
          Branch1Mapper mapper = Branch1Mapper.fromJson(result.data);
          mapper.result.forEach((element) {
            print(element);
            store.box<Branch1>().put(element);
          });
          print(store.box<Branch1>().getAll().first.companyId);
          return true;
        },
      ),
    );
  }

  //Return Reasons
  Future<bool> _syncReturnReasons() {
    return APIHelper.get(apiPath: '/pos_custom/get_all_return_reason', data: {
      "jsonrpc": "2.0",
      "params": {"return_reason_ids": []}
    }).then(
      (result) => result.fold(
        (err) {
          return false;
        },
        (result) {
          store.box<ReturnReason>().removeAll();
          ReturnReasonMapper mapper = ReturnReasonMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<ReturnReason>().put(element);
          });
          return true;
        },
      ),
    );
  }

  //pos configs
  Future<bool> _syncPOSs() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/get_all_pos_config_name', data: {
      "jsonrpc": "2.0",
      "params": {"pos_config_ids": []}
    }).then(
      (result) => result.fold(
        (err) {
          return false;
        },
        (result) {
          _posAddTypes(result);
          store.box<POS>().removeAll();
          POSMapper mapper = POSMapper.fromJson(result.data);
          mapper.result.forEach(
            (element) {
              try {
                store.box<POS>().put(element);
              } catch (e) {}
            },
          );
          return true;
        },
      ),
    );
  }

  //users
  Future<bool> _syncUsers() {
    return APIHelper.get(apiPath: '/pos_custom/get_all_users', data: {
      "jsonrpc": "2.0",
      "params": {"company_ids": []}
    }).then(
      (result) => result.fold(
        (err) {
          return false;
        },
        (result) {
          _usersAddType(result);
          store.box<User>().removeAll();
          UserMapper mapper = UserMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<User>().put(element);
          });
          print("store.box<User>().getAll()");
          print(store.box<User>().getAll());
          return true;
        },
      ),
    );
  }

  //driver
  Future<bool> _syncDrivers() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/get_all_driver_data', data: {
      "jsonrpc": "2.0",
      "params": {"driver_ids": []}
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          store.box<Driver>().removeAll();
          DriverMapper mapper = DriverMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<Driver>().put(element);
          });
          print("store.box<Driver>().getAll()");
          print(store.box<Driver>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncPaymentMethods() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_pos_payment_method_data',
        data: {
          "jsonrpc": "2.0",
          "params": {"payment_method_ids": []}
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          store.box<PaymentMethod>().removeAll();
          PaymentMethodMapper mapper =
              PaymentMethodMapper.fromJson(result.data);
          for (var element in mapper.result) {
            store.box<PaymentMethod>().put(element);
          }
          print("store.box<PaymentMethod>().getAll()");
          print(store.box<PaymentMethod>().getAll());
          return true;
        },
      ),
    );
  }

  //pos types
  Future<bool> _syncPOSTypes() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/all_get_pos_type', data: {
      "jsonrpc": "2.0",
      "params": {"pos_type_ids": []}
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          store.box<POSType>().removeAll();
          POSTypeMapper mapper = POSTypeMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<POSType>().put(element);
          });
          print("store.box<POSType>().getAll()");
          print(store.box<POSType>().getAll());
          return true;
        },
      ),
    );
  }

  //key types
  Future<bool> _syncKeyTypes() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/all_get_key_type', data: {
      "jsonrpc": "2.0",
      "params": {"key_type_ids": []}
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          store.box<KeyType>().removeAll();
          KeyTypeMapper mapper = KeyTypeMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<KeyType>().put(element);
          });
          print("store.box<KeyType>().getAll()");
          print(store.box<KeyType>().getAll());
          return true;
        },
      ),
    );
  }

  //scrap reason
  Future<bool> _syncScrapReasons() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/all_get_scrap_reason', data: {
      "jsonrpc": "2.0",
      "params": {"scrap_reason_ids": []}
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          store.box<ScrapReasons>().removeAll();
          ScrapReasonsMapper mapper = ScrapReasonsMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<ScrapReasons>().put(element);
          });
          print("store.box<ScrapReasons>().getAll()");
          print(store.box<ScrapReasons>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncDiscountPrograms() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_discount_program_data',
        data: {
          "jsonrpc": "2.0",
          "params": {"discount_program_ids": []}
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _discountProgramsAddTypes(result);
          store.box<DiscountProgram>().removeAll();
          DiscountProgramMapper mapper =
              DiscountProgramMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<DiscountProgram>().put(element);
          });
          print("store.box<DiscountProgram>().getAll()");
          print(store.box<DiscountProgram>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncPOSOrderTypes() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_pos_order_type_data',
        data: {
          "jsonrpc": "2.0",
          "params": {"pos_order_type_ids": []}
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _posOrderTypeAddTypes(result);
          store.box<POSOrderType>().removeAll();
          POSOrderTypeMapper mapper = POSOrderTypeMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<POSOrderType>().put(element);
          });
          print("store.box<POSOrderType>().getAll()");
          print(store.box<POSOrderType>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncPromotions() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_pos_promotion_data',
        data: {
          "jsonrpc": "2.0",
          "params": {"pos_promotion_ids": []}
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _promotionsAddTypes(result);
          store.box<Promotion>().removeAll();
          PromotionMapper mapper = PromotionMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<Promotion>().put(element);
          });
          print("store.box<Promotion>().getAll()");
          print(store.box<Promotion>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncCoupons() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/get_all_coupon', data: {
      "jsonrpc": "2.0",
      "params": {
        "applied_app": "pos",
        "coupon_ids": [3],
      }
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _couponsAddTypes(result);
          store.box<Coupon>().removeAll();
          CouponMapper mapper = CouponMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<Coupon>().put(element);
          });
          print("store.box<Coupon>().getAll()");
          print(store.box<Coupon>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncPOSSecurityRoles() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_pos_security_role_data',
        data: {
          "jsonrpc": "2.0",
          "params": {
            "security_role_ids": [1, 2]
          }
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          store.box<POSSecurityRole>().removeAll();
          POSSecurityRoleMapper mapper =
              POSSecurityRoleMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<POSSecurityRole>().put(element);
          });
          print("store.box<POSSecurityRole>().getAll()");
          print(store.box<POSSecurityRole>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncPOSGroups() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_pos_security_group_data',
        data: {
          "jsonrpc": "2.0",
          "params": {
            "security_group_ids": [],
          }
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _posGroupsAddTypes(result);
          store.box<POSGroup>().removeAll();
          POSGroupMapper mapper = POSGroupMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<POSGroup>().put(element);
          });
          print("store.box<POSGroup>().getAll()");
          print(store.box<POSGroup>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncFloors() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_restaurant_floor_data',
        data: {
          "jsonrpc": "2.0",
          "params": {
            "restaurant_floor_ids": [],
          }
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          store.box<Floor>().removeAll();
          store.box<TableId>().removeAll();
          FloorMapper mapper = FloorMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            print(element.toJson());
            store.box<Floor>().put(element);
            element.tableIdsFromJson!.forEach((e) {
              if (e['user_ids'] != null) {
                e['user_ids'] = List<int>.from(e['user_ids']);
              }
              final TableId id = TableId.fromJson(e);
              id.floor.target = element;
              store.box<TableId>().put(id);
            });
          });
          print("store.box<Floor>().getAll()");
          print(store.box<Floor>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncProductNotes() {
    return APIHelper.get(apiPath: '/pos_custom/get_all_product_note', data: {
      "jsonrpc": "2.0",
      "params": {
        "product_note_ids": [],
      }
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _productNotesAddTypes(result);
          store.box<ProductNote>().removeAll();
          ProductNoteMapper mapper = ProductNoteMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<ProductNote>().put(element);
          });
          return true;
        },
      ),
    );
  }

  Future<bool> _syncPriceLists() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/get_all_price_list', data: {
      "jsonrpc": "2.0",
      "params": {
        "price_list_ids": [],
      }
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _priceListAddTypes(result);
          store.box<PriceList>().removeAll();
          PriceListMapper mapper = PriceListMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<PriceList>().put(element);
          });
          print("store.box<PriceList>().getAll()");
          print(store.box<PriceList>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncTables() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/get_all_tables', data: {
      "jsonrpc": "2.0",
      "params": {
        "table_ids": [1],
      }
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          store.box<table.Table>().removeAll();
          table.TableMapper mapper = table.TableMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<table.Table>().put(element);
          });
          print("store.box<table.Table>().getAll()");
          print(store.box<table.Table>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncTaxes() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/get_all_taxes', data: {
      "jsonrpc": "2.0",
      "params": {
        "taxes_ids": [1],
      }
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _taxesAddTypes(result);
          store.box<Tax>().removeAll();
          TaxMapper mapper = TaxMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<Tax>().put(element);
          });
          print("store.box<table.Table>().getAll()");
          print(store.box<Tax>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncCustomers() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/get_all_customer_data', data: {
      "jsonrpc": "2.0",
      "params": {
        "customer_data_ids": [],
      }
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _customersAddTypes(result);
          store.box<Customer>().removeAll();
          CustomerMapper mapper = CustomerMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<Customer>().put(element);
          });
          print("store.box<table.Table>().getAll()");
          print(store.box<Customer>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncPOSCategories() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_pos_category_data',
        data: {
          "jsonrpc": "2.0",
          "params": {
            "pos_category_ids": [3],
          }
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _posCategoriesAddTypes(result);
          store.box<POSCategory>().removeAll();
          POSCategoryMapper mapper = POSCategoryMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<POSCategory>().put(element);
          });
          print("store.box<table.Table>().getAll()");
          print(store.box<POSCategory>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncProductCategories() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_product_category_data',
        data: {
          "jsonrpc": "2.0",
          "params": {
            "product_category_ids": [1],
          }
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          store.box<ProductCategory>().removeAll();
          ProductCategoryMapper mapper =
              ProductCategoryMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<ProductCategory>().put(element);
          });
          print("store.box<table.Table>().getAll()");
          print(store.box<ProductCategory>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncProducts() {
    print('sync');
    return APIHelper.get(apiPath: '/pos_custom/get_all_product_data', data: {
      "jsonrpc": "2.0",
      "params": {
        "product_ids": [],
      }
    }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _productAddTypes(result);
          store.box<Product>().removeAll();
          ProductMapper mapper = ProductMapper.fromJson(result.data);
          for (var element in mapper.result) {
            store.box<Product>().put(element);
          }
          print("store.box<table.Table>().getAll()");
          print(store.box<Product>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncRestaurantsPrinters() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_restaurant_printer_data',
        data: {
          "jsonrpc": "2.0",
          "params": {
            "restaurant_printer_ids": [],
          }
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _restaurantPrinterAddTypes(result);
          store.box<RestaurantPrinter>().removeAll();
          RestaurantPrinterMapper mapper =
              RestaurantPrinterMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<RestaurantPrinter>().put(element);
          });
          print(store.box<RestaurantPrinter>().getAll());
          return true;
        },
      ),
    );
  }

  Future<bool> _syncPOSMultiSessions() {
    print('sync');
    return APIHelper.get(
        apiPath: '/pos_custom/get_all_pos_multi_session_data',
        data: {
          "jsonrpc": "2.0",
          "params": {
            "multi_session_ids": [],
          }
        }).then(
      (result) => result.fold(
        (err) {
          print('call error');
          return false;
        },
        (result) {
          _posMultiSessionAddTypes(result);
          store.box<POSMultiSession>().removeAll();
          POSMultiSessionMapper mapper =
              POSMultiSessionMapper.fromJson(result.data);
          mapper.result.forEach((element) {
            store.box<POSMultiSession>().put(element);
          });
          print(store.box<POSMultiSession>().getAll());
          return true;
        },
      ),
    );
  }
}
