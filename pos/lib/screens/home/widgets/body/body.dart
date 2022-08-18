import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pos/controllers/homeContentController.dart';
import 'package:pos/screens/home/widgets/search/product_search_header.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../controllers/home_controller.dart';
import '../../../../variables/colors.dart';
import '../pay/pay.dart';
import '../pay/widgets/header/pay_header.dart';
import '../tables/tables.dart';
import '../tables/tables_header.dart';
import 'widgets/categories.dart';
import 'widgets/products.dart';
import 'widgets/side_panel.dart';

class Body extends StatelessWidget {
  const Body({Key? key, }) : super(key: key);
  // final GlobalKey<SliderMenuContainerState> menuKey;

  @override
  Widget build(BuildContext context) {
   
    return Consumer<HomeController>(builder: (context, homeController, _) { 
      return 
      Stack(
        children: [
          //TODO: fix states
          if (homeController.menuKey.currentState != null && homeController.isMenuOpen)
            Positioned(
              // left: 300,
              child: Container(
                height: 50,
                width: 50.w,
                color: CustomColors.darkPurple,
              ),
            ),
          Container(
            // margin: const sEdgeInsets.only(top: 80),
            decoration: BoxDecoration(
                color: CustomColors.lightPurple,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
                ),
            child: Column(
              children: [
                Container(
                  height: 130,
                  padding: const EdgeInsets.only(
                    left: 370,
                  ), //330 side panel width + 20 on each side padding
                  decoration: BoxDecoration(
                    color: CustomColors.darkPurple,
                    borderRadius: BorderRadius.only(
                      topLeft:  Radius.circular((homeController.menuKey.currentState != null && homeController.isMenuOpen)?0:30),
                      topRight:const  Radius.circular(30),
                    ),
                  ),
                  child: const HeaderContent(),
                ),
                const Expanded(
                  child: BodyContent(),
                ),
              ],
            ),
          ),
          const SidePanel(),
        ],
      );
    });
  }
}

class BodyContent extends StatelessWidget {
  const BodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (context.watch<HomeContentController>().homePageNowContains) {
      case HomeContents.home:
        return const Products();
      case HomeContents.tables:
        return const TablesContainer();
      case HomeContents.settings:
        return Container(
          color: Colors.redAccent,
          margin: const EdgeInsets.only(left: 360),
          child: const Center(
            child: Text("HI MAHMOUD"),
          ),
        );
      case HomeContents.search:
        return const Products();
      default:
        return const PayBody();
    }
  }
}

class HeaderContent extends StatelessWidget {
  const HeaderContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context.watch<HomeContentController>().homePageNowContains);
    switch (context.watch<HomeContentController>().homePageNowContains) {
      case HomeContents.home:
        return Categories();
      case HomeContents.tables:
        return const TablesHeader();
      case HomeContents.search:
        return ProductSearchHeader();
      default:
        return const PayHeader();
    }
  }
}
