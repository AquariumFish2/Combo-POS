import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pos/controllers/cash_control_controller.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/controllers/side_menu_controller.dart';
import 'package:pos/screens/home/overlays/connection_overLay/disconnected_dialog.dart';
import 'package:pos/screens/home/overlays/customer_overLay/customer_overLay.dart';
import 'package:pos/screens/home/overlays/customer_overLay/overlay/wallet_pay_now_overlay.dart';
import 'package:pos/screens/home/overlays/menu_overlay.dart';
import 'package:pos/screens/home/overlays/order_options/layout/split/split.dart';
import 'package:pos/screens/home/overlays/ruined/ruined.dart';
import 'package:pos/screens/home/overlays/settings_side_menu.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/home_controller.dart';
import '../../variables/colors.dart';
import 'overlays/local_orders_modal/local_orders_modal.dart';
import 'overlays/modal_overlay.dart';
import 'overlays/online_order_notification.dart';
import 'overlays/online_orders_modal/online_orders_modal.dart';
import 'overlays/orders_details/order_details.dart';
import 'overlays/order_notes.dart';
import 'overlays/order_options/order_options_popover.dart';
import 'overlays/paynow_overlay/pay_now_modal.dart';
import 'overlays/table_popover/table_popover.dart';
import 'widgets/body/body.dart';
import 'widgets/body/widgets/side_menu.dart';
import 'widgets/header.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  final GlobalKey<SliderMenuContainerState> _menuKey =
      GlobalKey<SliderMenuContainerState>();
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('width:${100.w}');
    print('height:${100.h}'); 
    
    return Scaffold(
      key: _key,
      body: Builder(builder: (context) {
       context.read<HomeController>().setMenuKey(_menuKey);
        return Consumer<HomeController>(builder: (context, homeController, __) {
          final internetChecker =
              InternetConnectionChecker().onStatusChange.asBroadcastStream();
          return StreamBuilder<InternetConnectionStatus>(
              stream: internetChecker,
              builder: (context, internetConnectionState) {
                return Stack(
                  children: [
                    const Header(),
                    Container(
                      margin: const EdgeInsets.only(top: 80),
                      decoration: BoxDecoration(
                        color: CustomColors.darkPurple,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Stack(
                        children: [
                          SliderMenuContainer(
                            key: _menuKey,
                            appBarColor: CustomColors.pink,
                            sliderMenu:
                             SideMenu(
                              sideMenuInHome: true,
                              menuKey: _menuKey,
                            ),
                            isDraggable: false,
                            hasAppBar: false,
                             sliderMenuOpenSize: 300,
                            sliderMain: 
                            const Body(
                              // menuKey: _menuKey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (homeController.onlineOrdersModal ||
                        homeController.localOrdersModal ||
                        homeController.orderOptionsPopup)
                      const ModalOverLay(),
                    if (homeController.onlineOrdersModal) const OrdersModal(),
                    if (homeController.localOrdersModal)
                      const LocalOrdersModal(),
                    if (homeController.onlineOrderNotification)
                      const OnlineOrderNotification(),
                    if (homeController.tablePopover) const TablePopover(),
                    if (context.watch<OrderController>().orderDetails)
                      const OrderDetails(),
                    if (homeController.orderNotesPopup) OrderNotesPopup(),
                    if (homeController.payNow) const PayNow(),
                    if (homeController.orderOptionsPopup)
                      const OrderOptionsPopup(),
                    if (homeController.isBillDividerOpened) const BillSplit(),
                    if (homeController.isRuinedOpen) const Ruined(),
                    if (homeController.customerOverLay) const CustomerOverLay(),
                    if (homeController.payWithWallet) const WalletPayOverLay(),
                    //TODO : fix states
                    if (homeController.isMenuOpen) const MenuOverLay(),
                    if (context
                            .watch<SideMenuController>()
                            .isSettingMenuOpenedInHome &&
                        homeController.menuKey.currentState != null)
                      if (homeController.isMenuOpen)
                        Positioned(
                          top: 80,
                          child: SettingsSideMenu(),
                          height: 100.h,
                          left: 260,
                          width: 300,
                        ),
                    if (internetConnectionState.data ==
                        InternetConnectionStatus.disconnected)
                      DisconnectedDialog(),
                  ],
                );
              });
        });
      }),
    );
  }
}
