import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../home/widgets/body/widgets/side_menu.dart';
import '../../variables/colors.dart';

class SellingPointsScreen extends StatelessWidget {
  const SellingPointsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'combo_test';
    String dropdownPosValue = 'POS1';
    return SafeArea(
        child: Scaffold(
            backgroundColor: CustomColors.pink,
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, right: 20, left: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 22,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'App settings',
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.settings,
                            size: 20,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(36),
                        topRight: Radius.circular(36)),
                    color: CustomColors.lighterPurple,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 246,
                        decoration: const BoxDecoration(
                            color: Color(0xff271D27),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(36))),
                        child: Column(
                          children: [
                            Expanded(
                                child: ListView(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: CustomColors.menuBGLight,
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(36))),
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  height: 58,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Selling Points',
                                        style: TextStyle(
                                            color: Color(0xff999999),
                                            fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),
                                const MenuItem(
                                    text: 'Continue', icon: Icons.store),
                                const MenuItem(text: 'Board', icon: Icons.tv),
                                const MenuItem(
                                    text: 'Reports', icon: Icons.description),
                                const MenuItem(
                                    text: 'Point of sales',
                                    icon: Icons.point_of_sale_rounded),
                                const MenuHeadItem(text: 'Settings'),
                                const MenuItem(
                                    text: 'App settings', icon: Icons.settings),
                                const MenuItem(
                                    text: 'Upload Database',
                                    icon: Icons.file_upload_outlined),
                                const MenuItem(
                                    text: 'Printing Operations',
                                    icon: Icons.local_print_shop_outlined),
                                const MenuItem(
                                    text: 'Payment Operation',
                                    icon: Icons.payment),
                                const MenuItem(
                                    text: 'Apps', icon: Icons.apps_outlined),
                                const MenuHeadItem(
                                  text: 'User',
                                ),
                                const MenuItem(
                                  text: 'Change Password',
                                  icon: Icons.dialpad,
                                ),
                                const MenuItem(
                                  text: 'Lock screen',
                                  icon: Icons.lock,
                                ),
                                const MenuHeadItem(
                                  text: 'Language',
                                ),
                                const MenuItem(
                                    text: 'English', icon: Icons.language)
                              ],
                            ))
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                        children: [
                          const Spacer(flex: 1),
                          Expanded(
                              flex: 100.w > 900 ? 1 : 2,
                              child: Container(
                                margin: const EdgeInsets.only(top: 56),
                                decoration: BoxDecoration(
                                    color: CustomColors.darkPurple,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24))),
                                child: ListView(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 38, right: 48, left: 48),
                                      child: TextFormField(
                                        style: const TextStyle(
                                            color: Color(0xffA3A2AC),
                                            fontSize: 15),
                                        decoration: InputDecoration(
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xffA3A2AC),
                                                        width: 0.4)),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: CustomColors.pink)),
                                            labelText: 'Link',
                                            labelStyle: TextStyle(
                                                color: Color(0xffA3A2AC),
                                                fontSize: 15)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 28, right: 48, left: 48),
                                      child: SizedBox(
                                          height: 26,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: OutlinedButton(
                                                  onPressed: () {},
                                                  child: FittedBox(
                                                    child: Text(
                                                      'Save',
                                                      style: TextStyle(
                                                          color:
                                                              CustomColors.pink,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.white),
                                                    shape: MaterialStateProperty
                                                        .all(RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0))),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 2, child: Container())
                                            ],
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 60, right: 48, left: 48),
                                      child: Text(
                                        'Data',
                                        style: TextStyle(
                                            color: CustomColors.pink,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 48, right: 48),
                                      child: Wrap(
                                        children: [
                                          DropdownButton<String>(
                                            isExpanded: true,
                                            value: dropdownValue,
                                            icon: const Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 12),
                                                child: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Color(0xffA3A2AC),
                                                )),
                                            elevation: 0,
                                            style: const TextStyle(
                                                color: Color(0xffA3A2AC)),
                                            underline: Container(
                                              height: 0.4,
                                              color: const Color(0xffA3A2AC),
                                            ),
                                            onChanged: (String? newValue) {},
                                            items: <String>['combo_test']
                                                .map<DropdownMenuItem<String>>(
                                                    (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 12.0),
                                                  child: Wrap(
                                                    children: [
                                                      Text(
                                                        value,
                                                        style: const TextStyle(
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 32, right: 48, left: 48),
                                      child: Text(
                                        'POS',
                                        style: TextStyle(
                                            color: CustomColors.pink,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 48, right: 48),
                                      child: DropdownButton<String>(
                                        isExpanded: true,
                                        value: dropdownPosValue,
                                        icon: const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 12),
                                            child: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Color(0xffA3A2AC),
                                            )),
                                        elevation: 0,
                                        style: const TextStyle(
                                            color: Color(0xffA3A2AC)),
                                        underline: Container(
                                          height: 0.4,
                                          color: const Color(0xffA3A2AC),
                                        ),
                                        onChanged: (String? newValue) {},
                                        items: <String>['POS1']
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12.0),
                                              child: Text(
                                                value,
                                                style: const TextStyle(
                                                    fontSize: 15),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 28, right: 48, left: 48),
                                      child: SizedBox(
                                          height: 26,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: OutlinedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Save',
                                                    style: TextStyle(
                                                        color:
                                                            CustomColors.pink,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.white),
                                                    shape: MaterialStateProperty
                                                        .all(RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0))),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 2, child: Container())
                                            ],
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 38, right: 48, left: 48),
                                      child: TextFormField(
                                        obscureText: true,
                                        style: const TextStyle(
                                            color: Color(0xffA3A2AC),
                                            fontSize: 15),
                                        decoration: InputDecoration(
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xffA3A2AC),
                                                        width: 0.4)),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: CustomColors.pink)),
                                            labelText: 'Password',
                                            labelStyle: TextStyle(
                                                color: Color(0xffA3A2AC),
                                                fontSize: 15)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 28, right: 48, left: 48),
                                      child: SizedBox(
                                          height: 26,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: OutlinedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Save',
                                                    style: TextStyle(
                                                        color:
                                                            CustomColors.pink,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11),
                                                  ),
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.white),
                                                    shape: MaterialStateProperty
                                                        .all(RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0))),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 2, child: Container())
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(child: Container()),
                        ],
                      ))
                    ],
                  ),
                ))
              ],
            )));
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  const MenuItem({
    required this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: const EdgeInsets.only(left: 20),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: CustomColors.menuText,
          ),
          const SizedBox(width: 30),
          Text(
            text,
            style: TextStyle(
              color: CustomColors.menuText,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeController {}
