import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controllers/side_menu_controller.dart';
import '../home/overlays/online_orders_modal/widgets/data/status_tab.dart';
import '../home/overlays/online_orders_modal/widgets/status_tabs.dart';
import '../home/overlays/settings_side_menu.dart';
import '../home/widgets/body/widgets/side_menu.dart';
import '../home/widgets/header.dart';
import '../../variables/colors.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);
  final GlobalKey<SliderMenuContainerState> _menuKey =
      GlobalKey<SliderMenuContainerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Header(
          isSinglePage: true,
        ),
        Container(
          margin: const EdgeInsets.only(top: 80),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Builder(builder: (context) {
            return Row(
              children: [
                SizedBox(
                  width: 320,
                  child: SideMenu(
                    sideMenuInHome: false,
                    menuKey: _menuKey,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: CustomColors.lightPurple,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: ListView(
                            padding: const EdgeInsets.only(
                              left: 60,
                              right: 60,
                              top: 10,
                            ),
                            children: const [
                              OptionGroupHeader(),
                              SwitchItem(),
                              SwitchItem(),
                              SelectItem(
                                tabs: [
                                  StatusTab(id: "1", text: "Label Here"),
                                  StatusTab(id: "2", text: "Label 2 Here"),
                                ],
                              ),
                              SelectItem(
                                tabs: [
                                  StatusTab(id: "1", text: "Label Here"),
                                  StatusTab(id: "2", text: "Label 2 Here"),
                                  StatusTab(id: "2", text: "Label 3 Here"),
                                ],
                              ),
                              OptionGroupHeader(),
                              SwitchItem(),
                              NumberItem(),
                              SwitchItem(),
                              SelectItem(
                                tabs: [
                                  StatusTab(id: "1", text: "Label Here"),
                                  StatusTab(id: "2", text: "Label 2 Here"),
                                  StatusTab(id: "2", text: "Label 3 Here"),
                                ],
                              ),
                              OptionGroupHeader(),
                              SwitchItem(),
                              NumberItem(),
                              SwitchItem(),
                              SwitchItem(),
                              SelectItem(
                                tabs: [
                                  StatusTab(id: "1", text: "Label Here"),
                                  StatusTab(id: "2", text: "Label 2 Here"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
        if (context.watch<SideMenuController>().isSettingMenuOpenedInHome)
          Positioned(
            child: SettingsSideMenu(),
            height: 100.h,
            left: 260,
            width: 300,
            top: 80,
          ),
      ]),
    );
  }
}

class OptionGroupHeader extends StatelessWidget {
  const OptionGroupHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
      child: Text(
        "Grouped Table View Header",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}

class SwitchItem extends StatefulWidget {
  const SwitchItem({Key? key}) : super(key: key);

  @override
  _SwitchItemState createState() => _SwitchItemState();
}

class _SwitchItemState extends State<SwitchItem> {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: CustomColors.darkPurple,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Title",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          CupertinoSwitch(
              value: active,
              onChanged: (val) {
                print(val);
                setState(() {
                  active = val;
                });
              })
        ],
      ),
    );
  }
}

class NumberItem extends StatefulWidget {
  const NumberItem({Key? key}) : super(key: key);

  @override
  _NumberItemState createState() => _NumberItemState();
}

class _NumberItemState extends State<NumberItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: CustomColors.darkPurple,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Title",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Container(
            width: 60,
            height: 24,
            decoration: BoxDecoration(color: Colors.white),
            child: TextField(
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                height: 1.5,
              ),
              showCursor: false,
              cursorHeight: 24,
              controller: TextEditingController(text: "10"),
            ),
          )
        ],
      ),
    );
  }
}

class SelectItem extends StatefulWidget {
  final List<StatusTab> tabs;
  const SelectItem({Key? key, required this.tabs}) : super(key: key);

  @override
  _SelectItemState createState() => _SelectItemState();
}

class _SelectItemState extends State<SelectItem> {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: CustomColors.darkPurple,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 1,
            child: Text(
              "Title",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Expanded(
            flex: 2,
            child: StatusTabs(
              expanded: true,
              tabs: widget.tabs,
              dark: true,
            ),
          )
        ],
      ),
    );
  }
}
