import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pos/controllers/homeContentController.dart';
import 'package:pos/controllers/side_menu_controller.dart';
import 'package:pos/screens/checkout/check_out.dart';
import 'package:pos/screens/history/history_screen.dart';
import 'package:pos/screens/payment_processes/payment_processes.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../controllers/home_controller.dart';
import '../../../../../variables/colors.dart';
import '../../../../apps/apps.dart';
import '../../../../settings/settings.dart';
import '../../../home.dart';

class SideMenu extends StatelessWidget {
  final GlobalKey<SliderMenuContainerState> menuKey;
  final bool sideMenuInHome;
  const SideMenu(
      {Key? key, required this.menuKey, required this.sideMenuInHome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: GestureDetector(
            onTap: () =>context.read<HomeController>().toggleMenu(),
            child: Container(
              color: Colors.transparent,
              height: 100.h,
              width: 100.w,
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
              ),
              color: CustomColors.menuBG,
            ),
            child: ListView(
              clipBehavior: Clip.hardEdge,
              controller: ScrollController(),
              children: [
                const MenuHeadItem(text: "Point Of Sale"),
                InkWell(
                  onTap: () {
                    print('check menuItem');
                    print(context.read<HomeController>().menuItem);
                    if (context.read<HomeController>().menuItem !=
                        MenuItems.stopSession) {
                      if (sideMenuInHome) {
                        context.read<HomeController>().toggleMenu();
                      }
                      context
                          .read<HomeController>()
                          .changeSelectedMenuItem(MenuItems.stopSession);
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const CheckOut()),
                          (route) => false);
                    }
                  },
                  child: const MenuItem(
                    menuItem: MenuItems.stopSession,
                    text: 'Stop Session',
                    icon: Icons.shopping_bag_outlined,
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (context.read<HomeController>().menuItem !=
                        MenuItems.board) {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => Home()),
                        (route) => false,
                      );
                      context
                          .read<HomeContentController>()
                          .changeHomePageContents(HomeContents.home, context);
                      context
                          .read<HomeController>()
                          .changeSelectedMenuItem(MenuItems.board);
                    }
                  },
                  child: const MenuItem(
                    text: 'Board',
                    icon: Icons.monitor,
                    menuItem: MenuItems.board,
                  ),
                ),
                InkWell(
                  onTap: (() {
                    if (context.read<HomeController>().menuItem !=
                        MenuItems.history) {
                      if (sideMenuInHome)
                        context.read<HomeController>().toggleMenu();
                      context
                          .read<HomeController>()
                          .changeSelectedMenuItem(MenuItems.history);
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const HistoryScreen(),
                        ),
                        (route) => false,
                      );
                    }
                  }),
                  child: const MenuItem(
                    text: 'History',
                    icon: Icons.timer_rounded,
                    menuItem: MenuItems.history,
                  ),
                ),
                const MenuItem(
                  text: 'Reports',
                  icon: Icons.insert_chart_outlined_outlined,
                  menuItem: MenuItems.reports,
                ),
                const MenuItem(
                  text: 'POS Offers',
                  icon: Icons.local_play_outlined,
                  menuItem: MenuItems.posOffers,
                ),
                const MenuHeadItem(text: "Settings"),
                InkWell(
                  onTap: () {
                    context
                        .read<SideMenuController>()
                        .toggleSettingMenuInHome();
                  },
                  child: const MenuItem(
                    text: 'App Settings',
                    icon: Icons.settings,
                    menuItem: MenuItems.appSettings,
                  ),
                ),
                const MenuItem(
                  text: 'Upload Database',
                  icon: Icons.file_upload_outlined,
                  menuItem: MenuItems.uploadDatabase,
                ),
                const MenuItem(
                  text: 'Printer Operations',
                  icon: Icons.local_print_shop_outlined,
                  menuItem: MenuItems.printerOperations,
                ),
                InkWell(
                  onTap: () {
                    if (context.read<HomeController>().menuItem !=
                        MenuItems.paymentProcesses) {
                      context
                          .read<HomeController>()
                          .changeSelectedMenuItem(MenuItems.paymentProcesses);
                      if (sideMenuInHome)
                        context.read<HomeController>().toggleMenu();
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => PaymentProcesses(),
                        ),
                        (route) => false,
                      );
                    }
                  },
                  child: const MenuItem(
                    text: 'Payment Processes',
                    icon: Icons.payment,
                    menuItem: MenuItems.paymentProcesses,
                  ),
                ),
                MenuItem(
                    onTap: () {
                      if (context.read<HomeController>().menuItem !=
                          MenuItems.applications) {
                        context
                            .read<HomeController>()
                            .changeSelectedMenuItem(MenuItems.applications);
                        if (sideMenuInHome)
                          context.read<HomeController>().toggleMenu();
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => AppsPage(),
                          ),
                          (route) => false,
                        );
                      }
                    },
                    text: 'Applications',
                    icon: Icons.apps_outlined,
                    menuItem: MenuItems.applications),
                const MenuHeadItem(
                  text: 'User',
                ),
                const MenuItem(
                  text: 'Change Password',
                  icon: Icons.dialpad,
                  menuItem: MenuItems.changePassword,
                ),
                const MenuItem(
                  text: 'Applications',
                  icon: Icons.apps_outlined,
                  menuItem: MenuItems.applications1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MenuHeadItem extends StatelessWidget {
  final String text;
  const MenuHeadItem({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: CustomColors.menuBGLight,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(color: CustomColors.menuText, fontSize: 17),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final MenuItems menuItem;
  final Function? onTap;
  const MenuItem({
    required this.text,
    required this.icon,
    required this.menuItem,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: context.watch<HomeController>().menuItem == menuItem
            ? CustomColors.menuBGActive
            : Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: context.watch<HomeController>().menuItem == menuItem
                ? CustomColors.menuTextActive
                : CustomColors.menuText,
          ),
          const SizedBox(width: 30),
          Text(
            text,
            style: TextStyle(
              color: context.watch<HomeController>().menuItem == menuItem
                  ? CustomColors.menuTextActive
                  : CustomColors.menuText,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
