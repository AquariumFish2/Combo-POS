import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:pos/controllers/split_order_controller.dart';
import 'package:pos/data/database/branch.dart';
import 'package:pos/data/database/session.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:pos/controllers/add_coupon_controller.dart';
import 'package:pos/controllers/categories_controller.dart';
import 'package:pos/controllers/customer_controller.dart';
import 'package:pos/controllers/floor_controller.dart';
import 'package:pos/controllers/homeContentController.dart';
import 'package:pos/controllers/order_note_controller.dart';
import 'package:pos/controllers/order_option_controller.dart';
import 'package:pos/controllers/paynow_with_wallet_controller.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/controllers/side_menu_controller.dart';
import 'package:pos/controllers/sync_controller.dart';
import 'package:pos/root.dart';
import 'package:pos/screens/client/client_log_in.dart';
import 'package:pos/screens/history/history_screen.dart';
import 'package:pos/screens/payment_processes/payment_processes.dart';
import 'package:pos/screens/printer_auth/printer_auth_screen.dart';
import 'package:pos/screens/splash/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controllers/branch_controller.dart';
import 'controllers/cash_control_controller.dart';
import 'controllers/checkout_controller.dart';
import 'controllers/companyController.dart';
import 'controllers/history_layout_controller.dart';
import 'controllers/home_controller.dart';
import 'controllers/layout_controller.dart';
import 'controllers/local_order_controller.dart';
import 'controllers/login_to_db_controller.dart';
import 'controllers/online_orders_controller.dart';
import 'controllers/order_controller.dart';
import 'controllers/payment_num_pad_controller.dart';
import 'controllers/pos_page_data.dart';
import 'controllers/users_pin_code_controller.dart';
import 'objectbox.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await pathProvider.getApplicationDocumentsDirectory();
  print(directory.path);
  final shared = await SharedPreferences.getInstance();
  shared.clear();
  final Store store = await openStore();
  staticStore = store;
  runApp(MyApp(store: store));
}

late Store staticStore;

class MyApp extends StatelessWidget {
  final Store store;
  const MyApp({Key? key, required this.store}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StyledToast(
      locale: const Locale('en', 'US'),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<SyncController>(
            create: (context) => SyncController(store: store, context: context),
          ),
          ChangeNotifierProvider(
            create: (context) => SideMenuController(),
          ),
          ChangeNotifierProvider(
            create: (context) => CustomerController(),
          ),
          ChangeNotifierProvider(
            create: (context) => PosController(),
          ),
          ChangeNotifierProvider<LayoutController>(
            create: (context) => LayoutController(context: context),
          ),
          ChangeNotifierProvider<HomeController>(
            create: (context) => HomeController(),
          ),
          ChangeNotifierProvider<LoginToDatabaseController>(
            create: (context) => LoginToDatabaseController(context: context),
          ),
          ChangeNotifierProvider(
            create: (context) => LoginToDatabaseController(context: context),
          ),
          ChangeNotifierProvider(
            create: (context) => CompanyController(),
          ),
          ChangeNotifierProvider(
            create: (context) => BranchController(),
          ),
          ChangeNotifierProvider(
            create: (context) => POSPageDataGetter(context: context),
          ),
          ChangeNotifierProvider(
            create: ((context) => CheckOutController()),
          ),
          ChangeNotifierProvider(
            create: (context) => CashControlController(),
          ),
          ChangeNotifierProvider(
            create: (context) => HistoryLayoutController(),
          ),
          ChangeNotifierProvider(
            create: (context) => OrderController(),
          ),
          ChangeNotifierProvider<LocalOrdersController>(
            create: (_) => LocalOrdersController(),
          ),
          ChangeNotifierProvider<OnlineOrdersController>(
            create: (_) => OnlineOrdersController(),
          ),
          ChangeNotifierProvider<PaymentNumPadController>(
            create: (context) => PaymentNumPadController(total: 0),
          ),
          ChangeNotifierProvider(
            create: (context) => UsersPinCodeController(),
          ),
          ChangeNotifierProvider(
            create: (context) => FloorController(),
          ),
          ChangeNotifierProvider(
            create: (context) => HomeContentController(),
          ),
          ChangeNotifierProvider(
            create: (context) => OrderNoteController(),
          ),
          ChangeNotifierProvider(
            create: (context) => CategoriesController(),
          ),
          ChangeNotifierProvider(
            create: (context) => OrderOptionController(),
          ),
          ChangeNotifierProvider(
            create: (context) => PayNowWithWalletController(),
          ),
          ChangeNotifierProvider(
            create: (context) => AddCouponController(),
          ),
          ChangeNotifierProvider(
            create: (context) => SplitOrderController(),
          ),
        ],
        child: ResponsiveSizer(
          builder: (context, orientation, devType) => MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: RootWidget(),
          ),
        ),
      ),
    );
  }
}
