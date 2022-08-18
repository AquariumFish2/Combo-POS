import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pos/screens/home/widgets/body/widgets/side_menu.dart';
import 'package:pos/screens/home/widgets/header.dart';
import 'package:pos/screens/payment_processes/widgets/tile_with_details.dart';
import 'package:pos/screens/payment_processes/widgets/tile_with_selectables.dart';
import 'package:pos/screens/payment_processes/widgets/title_row.dart';
import 'package:pos/variables/colors.dart';
import 'package:pos/variables/texts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controllers/side_menu_controller.dart';
import '../../variables/buttons.dart';
import '../home/overlays/settings_side_menu.dart';

class PaymentProcesses extends StatelessWidget {
  PaymentProcesses({Key? key}) : super(key: key);
  final GlobalKey<SliderMenuContainerState> _menuKey =
      GlobalKey<SliderMenuContainerState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Header(
            isSinglePage: true,
            singlePageTitle: 'My Session',
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Builder(
              builder: (context) {
                return Row(
                  children: [
                    SizedBox(
                      width: 320,
                      child: SideMenu(
                        sideMenuInHome: false,
                        menuKey: _menuKey,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 100.w - 320,
                          decoration: const BoxDecoration(
                            color: Color(0xFF412941),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 57.0, top: 85, right: 56),
                            child: ListView(
                              children: const [
                                TitleRow(),
                                SizedBox(
                                  height: 6,
                                ),
                                TileWithSelectables(
                                  title: 'POSes in Multi session',
                                  selectables: [
                                    'shop(not used)',
                                    'bar(not used)',
                                  ],
                                ),
                                TileWithSelectables(
                                  selectables: [
                                    'Main Floor',
                                    'Patio',
                                  ],
                                  title: 'Restaurant Floors',
                                ),
                                TileWithSelectables(
                                  selectables: [],
                                  title: 'One Waiter Per Table',
                                ),
                                TileWithSelectables(
                                  selectables: [],
                                  title: 'Active',
                                ),
                                TileWithSelectables(
                                  selectables: [],
                                  title: 'Sync Server',
                                ),
                                TileWithSelectables(
                                  selectables: [],
                                  title: 'Fiscal Positions',
                                ),
                                TileWithDetails(
                                    details: 'My Company (San Francisco)',
                                    title: 'Company')
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
          if (context.watch<SideMenuController>().isSettingMenuOpenedInHome)
            Positioned(
              child: SettingsSideMenu(),
              height: 100.h,
              left: 260,
              width: 300,
              top: 80,
            ),
        ],
      ),
    );
  }
}
