import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos/controllers/homeContentController.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/screens/home/home.dart';
import 'package:pos/screens/splash/splash.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../controllers/home_controller.dart';
import '../../../variables/colors.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  final bool isSinglePage;
  final String singlePageTitle;
  const Header(
      {Key? key,
      this.isSinglePage = false,
      this.singlePageTitle = 'App settings'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(color: CustomColors.pink),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 330,
              height: 65,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () async {
                      SharedPreferences sharedPreferences =
                          await SharedPreferences.getInstance();
                      sharedPreferences.remove(SharedPrefrencesPath.accessToken);
                    },
                    child: GestureDetector(
                      onTap: () {
                        context
                            .read<HomeContentController>()
                            .changeHomePageContents(HomeContents.home, context);
                        context
                            .read<HomeController>()
                            .changeSelectedMenuItem(MenuItems.board);
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => Home()),
                            (route) => false);
                      },
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 23,
                      ),
                    ),
                  ),
                  if (!isSinglePage)
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            context
                                .read<HomeController>()
                                .toggleLocalOrdersModal();
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Order No.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                              Text(
                                context
                                    .watch<OrderController>()
                                    .getOrderNumber(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => context
                              .read<OrderController>()
                              .addNewOrder(context),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SvgPicture.asset(
                              'assets/images/plus.svg',
                              height: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                ],
              ),
            ),
            if (!isSinglePage)
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      context
                          .read<HomeController>()
                          .toggleOnlineOrderNotification();
                    },
                    child:
                        SvgPicture.asset('assets/images/shopping-basket.svg'),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                      onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  SplashScreen(isFirstSplash: false),
                            ),
                          ),
                      child:
                          SvgPicture.asset('assets/images/ic_sync_24px.svg')),
                  const SizedBox(
                    width: 25,
                  ),
                  SvgPicture.asset('assets/images/ic_wifi_24px.svg'),
                  const SizedBox(
                    width: 25,
                  ),
                  SvgPicture.asset('assets/images/ic_move_to_inbox_24px.svg'),
                  const SizedBox(
                    width: 25,
                  ),
                  SvgPicture.asset('assets/images/ic_local_printshop_24px.svg'),
                  const SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 23,
                    child: Stack(children: [
                      SvgPicture.asset(
                          'assets/images/ic_notifications_24px.svg'),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          child: const Text(
                            "10",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: CustomColors.grey),
                        ),
                      )
                    ]),
                  ),
                ],
              )
            else
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    singlePageTitle,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
