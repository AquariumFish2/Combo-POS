import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pos/screens/network_printer/widgets/network_printer_list_tile.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/texts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controllers/side_menu_controller.dart';
import '../../variables/colors.dart';
import '../home/overlays/settings_side_menu.dart';
import '../home/widgets/body/widgets/side_menu.dart';
import '../home/widgets/header.dart';

class NetworkPrinterScreen extends StatelessWidget {
  const NetworkPrinterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titles = ['Kitchen/192.168.100.23'];
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
                      width: 30.w,
                      child: SettingsSideMenu(),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 70.w,
                          decoration: const BoxDecoration(
                            color: Color(0xFF412941),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 40.0, top: 50, right: 56),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.arrow_back_ios_new_outlined,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      'Network Printer',
                                      style: TextStyles.whiteDetailsStyle,
                                    ),
                                  ],
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      NetworkPrinterListTile(
                                    title: titles[index],
                                  ),
                                  itemCount: 1,
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => Container(
                                      margin: EdgeInsets.symmetric(vertical: 4),
                                      height: 45,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF1B041B),
                                      ),
                                      child: Row(),
                                    ),
                                    itemCount: 10,
                                  ),
                                ),
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
        ],
      ),
    );
  }
}
