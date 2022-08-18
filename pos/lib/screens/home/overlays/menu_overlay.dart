import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/side_menu_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../variables/colors.dart';

class MenuOverLay extends StatelessWidget {
  const MenuOverLay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 300,
        height: 100.h,
        width: 100.w,
        child: GestureDetector(
          onTap: () {
            context.read<HomeController>().toggleMenu();
            (context.read<SideMenuController>().isSettingMenuOpenedInHome)
                ? context.read<SideMenuController>().toggleSettingMenuInHome()
                : null;
          },
          child: Container(
            color: Colors.transparent,
          ),
        ));
  }
}
