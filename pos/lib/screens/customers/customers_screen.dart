import 'dart:ui';

import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos/controllers/customer_controller.dart';
import 'package:pos/controllers/layout_controller.dart';
import 'package:pos/screens/customers/widgets/customer_modal_overlay.dart';
import 'package:pos/screens/home/home.dart';
import 'package:pos/screens/home/overlays/local_orders_modal/local_orders_modal.dart';
import 'package:pos/screens/home/overlays/modal_overlay.dart';
import 'package:pos/screens/splash/splash.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controllers/home_controller.dart';
import '../../controllers/order_controller.dart';
import '../../helpers/az_item.dart';
import '../../variables/colors.dart';
import 'add_customer_over_lay.dart';
import 'widgets/customer_list_item.dart';

class CustomersScreen extends StatelessWidget {
  CustomersScreen({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.pink,
        body: Stack(
          children: [
            FutureBuilder(
              future: context.read<CustomerController>().getAllCustomers(),
              builder: (context, snap) {
                return Consumer<CustomerController>(
                  builder: (context, customerController, __) {
                    return Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 12, left: 20, right: 20, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 330,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          context
                                              .read<HomeController>()
                                              .changeSelectedMenuItem(
                                                  MenuItems.board);
                                          Navigator.of(context)
                                              .pushAndRemoveUntil(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Home()),
                                                  (route) => false);
                                        },
                                        child: Image.asset(
                                          'assets/images/logo.png',
                                          height: 23,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () => (context
                                                .read<HomeController>()
                                                .toggleLocalOrdersModal()),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  "Order No.",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11),
                                                ),
                                                Text(
                                                  context
                                                      .watch<OrderController>()
                                                      .getOrderNumber(),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: GestureDetector(
                                              onTap: () => context
                                                  .read<OrderController>()
                                                  .addNewOrder(context),
                                              child: SvgPicture.asset(
                                                'assets/images/plus.svg',
                                                height: 20,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Image.asset(
                                          'assets/images/Layer_2.png'),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          'assets/images/shopping-basket.svg'),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    GestureDetector(
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SplashScreen(
                                                isFirstSplash: false)),
                                      ),
                                      child: SvgPicture.asset(
                                          'assets/images/ic_sync_24px.svg'),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/ic_wifi_24px.svg'),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/ic_move_to_inbox_24px.svg'),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/ic_local_printshop_24px.svg'),
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
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: CustomColors.grey),
                                          ),
                                        )
                                      ]),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: CustomColors.darkPurple,
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(36),
                                          topRight: Radius.circular(36))),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    left: 20, right: 20),
                                                height: 120,
                                                child: Center(
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 16.w),
                                                        child: SizedBox(
                                                          width: 20.w,
                                                          child: OutlinedButton(
                                                            onPressed: () {
                                                              context
                                                                  .read<
                                                                      CustomerController>()
                                                                  .toggleAddCustomerOverLay();
                                                            },
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 16.0,
                                                                      bottom:
                                                                          16),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: const [
                                                                  Icon(
                                                                    Icons
                                                                        .person,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 20,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 6,
                                                                  ),
                                                                  Expanded(
                                                                    child: Text(
                                                                      'Add customer',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .clip,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            style: ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStateProperty.all(
                                                                      const Color(
                                                                          0xff412941)),
                                                              shape: MaterialStateProperty.all(
                                                                  RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30.0))),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 2,
                                                        child: Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          6.0),
                                                              child:
                                                                  OutlinedButton(
                                                                      onPressed:
                                                                          () {
                                                                        context
                                                                            .read<CustomerController>()
                                                                            .getSearchedCustomers(searchController.text);
                                                                      },
                                                                      style:
                                                                          ButtonStyle(
                                                                        backgroundColor:
                                                                            MaterialStateProperty.all(const Color(0xff251C25)),
                                                                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(30.0))),
                                                                      ),
                                                                      child:
                                                                          const Padding(
                                                                        padding: EdgeInsets.only(
                                                                            right:
                                                                                8.0,
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                10,
                                                                            bottom:
                                                                                10),
                                                                        child:
                                                                            Text(
                                                                          'Search',
                                                                          style: TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 13),
                                                                        ),
                                                                      )),
                                                            ),
                                                            Expanded(
                                                                child: SizedBox(
                                                              height: 35,
                                                              child: Container(
                                                                child:
                                                                    TextField(
                                                                  controller:
                                                                      searchController,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        const Color(
                                                                            0xff251C25),
                                                                    hintStyle: const TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        color: Colors
                                                                            .white),
                                                                    hintText:
                                                                        'Write here search words...',
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30.0),
                                                                    ),
                                                                  ),
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Center(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                right: 140, left: 140, top: 12),
                                            decoration: BoxDecoration(
                                                color:
                                                    CustomColors.lighterPurple),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 16.0,
                                                          left: 16),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            child: Image.asset(
                                                              'assets/images/ic_person_24px.png',
                                                              width: 14,
                                                              height: 14,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 8,
                                                          ),
                                                          const Text(
                                                            'customer name',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 17),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 1,
                                                        height: 26,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.30)),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {},
                                                        child: const Text(
                                                          'mobile number',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 17),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 1,
                                                        height: 26,
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.30)),
                                                        ),
                                                      ),
                                                      const Text(
                                                        'total balance',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 17),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: AzListView(
                                                    indexBarData: const [],
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 16,
                                                            bottom: 8,
                                                            right: 42,
                                                            left: 42),
                                                    data: customerController
                                                        .customers
                                                        .map((e) => AZItem(
                                                            title: e.name!,
                                                            tag: e.name![0]))
                                                        .toList(),
                                                    itemCount: context
                                                        .watch<
                                                            CustomerController>()
                                                        .searchedCustomers
                                                        .length,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      // final item =
                                                      //     customerController
                                                      //             .modifiedList[
                                                      //         index];
                                                      return CustomerListItem(
                                                        customer: customerController
                                                                .searchedCustomers[
                                                            index],
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                context
                                        .watch<CustomerController>()
                                        .isAddCustomerShown
                                    ? const AddCustomerOverLay()
                                    : Container()
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            if (context.watch<HomeController>().localOrdersModal)
              const CustomerModalOverlay(),
            if (context.watch<HomeController>().localOrdersModal)
              const LocalOrdersModal()
          ],
        ),
      ),
    );
  }
}
