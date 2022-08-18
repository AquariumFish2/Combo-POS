import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pos/controllers/side_menu_controller.dart';
import 'package:pos/screens/home/widgets/body/widgets/side_menu.dart';
import 'package:pos/screens/printer_auth/printer_auth_screen.dart';
import 'package:pos/screens/settings/settings.dart';
import 'package:provider/provider.dart';

import '../../../controllers/home_controller.dart';
import '../../../variables/colors.dart';
import '../home.dart';

class SettingsSideMenu extends StatelessWidget {
  SettingsSideMenu({Key? key, this.isTheSingleMenu = false}) : super(key: key);
  bool isTheSingleMenu;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.hardEdge,
      color: CustomColors.menuBG,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
        ),
      ),
      child: ListView(
        clipBehavior: Clip.hardEdge,
        controller: ScrollController(),
        children: [
          const MenuHeadItem(icon: Icons.list),
          const MenuItem(text: 'POS settings', icon: Icons.settings),
          const MenuItem(text: 'Change User', icon: Icons.settings),
          const MenuItem(text: 'Sync', icon: Icons.settings),
          const MenuItem(text: 'POS', icon: Icons.settings),
          InkWell(
            onTap: () {
              context.read<SideMenuController>().toggleSettingMenuInHome();
              context.read<HomeController>().toggleMenu();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => PrinterAuthScreen()),
                (route) => false,
              );
            },
            child: const MenuItem(text: 'Printing', icon: Icons.settings),
          ),
          const MenuItem(text: 'Connection Settings', icon: Icons.settings),
          InkWell(
            onTap: () {
              context.read<SideMenuController>().toggleSettingMenuInHome();
              context.read<HomeController>().toggleMenu();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
                (route) => false,
              );
            },
            child: const MenuItem(
                text: 'Application Settings', icon: Icons.settings),
          ),
          const MenuItem(text: 'Import', icon: Icons.settings),
        ],
      ),
    );
  }
}

class MenuHeadItem extends StatelessWidget {
  final IconData icon;
  const MenuHeadItem({
    required this.icon,
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
          Icon(
            icon,
            color: CustomColors.menuText,
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool active;
  const MenuItem({
    this.active = false,
    required this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: active ? CustomColors.menuBGActive : Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: active ? CustomColors.menuTextActive : CustomColors.menuText,
          ),
          const SizedBox(width: 30),
          Expanded(
            child: SizedBox(
              height: 25,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  text,
                  style: TextStyle(
                    color: active
                        ? CustomColors.menuTextActive
                        : CustomColors.menuText,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
