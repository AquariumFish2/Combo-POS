import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import '../home/overlays/online_orders_modal/widgets/data/status_tab.dart';
import '../home/overlays/online_orders_modal/widgets/status_tabs.dart';
import '../home/widgets/body/widgets/side_menu.dart';
import '../home/widgets/header.dart';
import '../../variables/colors.dart';

class AppsPage extends StatelessWidget {
  AppsPage({Key? key}) : super(key: key);
  final GlobalKey<SliderMenuContainerState> _menuKey =
      GlobalKey<SliderMenuContainerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Header(
          isSinglePage: true,
          singlePageTitle: 'Applications',
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
                          padding:
                              EdgeInsets.only(left: 60, right: 60, top: 50),
                          decoration: BoxDecoration(
                            color: CustomColors.lightPurple,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: GridView(
                            children: const [
                              AppItem(),
                              AppItem(),
                              AppItem(),
                              AppItem(),
                              AppItem(),
                              AppItem(),
                              AppItem(),
                              AppItem(),
                              AppItem(),
                            ],
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 230,
                                    childAspectRatio: .6),
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
      ]),
    );
  }
}

class AppItem extends StatelessWidget {
  const AppItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: CustomColors.darkPurple,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/hunger.png'))),
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Text(
                      "Add App",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
