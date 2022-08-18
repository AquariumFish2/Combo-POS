import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pos/screens/network_printer/network_printer.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/texts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controllers/side_menu_controller.dart';
import '../../variables/colors.dart';
import '../home/overlays/settings_side_menu.dart';
import '../home/widgets/body/widgets/side_menu.dart';
import '../home/widgets/header.dart';

class PrinterAuthScreen extends StatelessWidget {
  const PrinterAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Header(
            isSinglePage: true,
            singlePageTitle: 'App Settings',
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
                      child: SettingsSideMenu(
                        isTheSingleMenu: true,
                      ),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 100.w - 320,
                            decoration: const BoxDecoration(
                              color: Color(0xFF412941),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top:70.0),
                                child: Container(
                                  width: 100.w-(65.w),
                                  decoration: BoxDecoration(
                                    color: CustomColors.darkPurple,
                                    shape: BoxShape.rectangle,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            const Color(0xff8d0e3c).withOpacity(0.2),
                                        blurRadius: 17.0, // soften the shadow
                                        spreadRadius: 1.0,
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(36),
                                      topRight: Radius.circular(36),
                                    ),
                                  ),
                                  child: ListView(
                                    padding: EdgeInsets.only(left: 40, right: 40),
                                    children: [
                                      SizedBox(
                                        width: 50,
                                        child: Image.asset(
                                            'assets/images/logo-pink.png'),
                                      ),
                                      Text(
                                        'Printer Name:',
                                        style: TextStyles.pinkDetailsStyle,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextField(
                                        style: TextStyles.pinkDetailsStyle,
                                        cursorColor: Colors.pink,
                                        decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.pink,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.pink,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                        'IP',
                                        style: TextStyles.pinkDetailsStyle,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextField(
                                        style: TextStyles.pinkDetailsStyle,
                                        cursorColor: Colors.pink,
                                        decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.pink,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.pink,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                'save',
                                                style: TextStyles.whiteButtonsStyle,
                                              ),
                                              style:
                                                  ButtonStyles.semiSharpWhiteButton,
                                            ),
                                          ),
                                          const Expanded(flex: 1, child: SizedBox())
                                        ],
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        NetworkPrinterScreen()),
                                                (route) => false,
                                              );
                                            },
                                            child: Text(
                                              'Network Printers',
                                              style:
                                                  TextStyles.whiteSmallDetailsStyle,
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Discovery Printer',
                                              style:
                                                  TextStyles.whiteSmallDetailsStyle,
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Test Print',
                                              style:
                                                  TextStyles.whiteSmallDetailsStyle,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
