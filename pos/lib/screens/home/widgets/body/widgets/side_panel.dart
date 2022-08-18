import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/controllers/customer_controller.dart';
import 'package:pos/controllers/floor_controller.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/controllers/order_note_controller.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/controllers/side_menu_controller.dart';
import 'package:pos/data/database/order.dart';
import 'package:pos/data/database/pos_order_type.dart';
import 'package:pos/main.dart';
import 'package:pos/screens/home/widgets/body/widgets/product_line.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../../customers/customers_screen.dart';
import '../../../../../controllers/home_controller.dart';
import '../../../../../variables/colors.dart';

import 'package:provider/provider.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 100.h,
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.only(top: 20),
      // decoration: BoxDecoration(color: Colors.white),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black.withOpacity(0),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    context.read<HomeController>().toggleMenu();
                  },
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: CustomColors.lightPurple,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          1000,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Send",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (context.read<CustomerController>().selectedCustomer !=
                          null) {
                        context.read<HomeController>().toggleCustomerOverLay();
                      } else {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomersScreen(),
                          ),
                          (route) => false,
                        );
                      }
                    },
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: CustomColors.darkGrey,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            1000,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 18,
                            ),
                            if (context
                                    .watch<CustomerController>()
                                    .selectedCustomer !=
                                null)
                              Expanded(
                                child: Text(
                                  '${context.watch<CustomerController>().selectedCustomer!.name}',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      context.read<HomeController>().toggleTablePopover();
                    },
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: (context.watch<FloorController>().chosenTable !=
                                null)
                            ? Colors.green
                            : CustomColors.lightPurple,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            1000,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.title,
                            color: Colors.white,
                          ),
                          Text(
                            "Tables",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Container(
                    constraints: const BoxConstraints(minHeight: 100),
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    decoration: BoxDecoration(
                        color: CustomColors.darkGrey,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.2),
                              spreadRadius: 1,
                              blurRadius: 20)
                        ]),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            context
                                .read<HomeController>()
                                .toggleOrderOptionsPopup();
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(top: 5, left: 5),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Text(
                                  context
                                      .read<PosController>()
                                      .selectedPOS!
                                      .name!,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  (context.watch<OrderController>().order !=
                                          null)
                                      ? "${context.watch<OrderController>().order!.time} / ${(context.watch<OrderController>().order!.orderTypeId != null) ? staticStore.box<POSOrderType>().getAll().firstWhere((element) => element.odooId == context.watch<OrderController>().order!.orderTypeId).name : '--'}"
                                      : '--',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            context.read<OrderNoteController>().setTemp();
                            context
                                .read<HomeController>()
                                .toggleOrderNotesPopup();
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(right: 10, top: 5),
                            child: Icon(
                              Icons.assignment,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      margin: const EdgeInsets.only(top: 55),
                      padding: const EdgeInsets.only(bottom: 90),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: CustomColors.lightPurple,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(top: 10),
                              clipBehavior: Clip.hardEdge,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Consumer<OrderController>(
                                  builder: (context, orderController, _) {
                                if (orderController.order != null) {
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    clipBehavior: Clip.hardEdge,
                                    itemCount: orderController
                                        .currentOrderLines.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          orderController.selectLine(
                                              context,
                                              orderController
                                                  .currentOrderLines[index]);
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                              right: 20,
                                              top: 5,
                                              bottom: 5,
                                            ),
                                            color: index % 2 == 0
                                                ? CustomColors.lighterPurple
                                                : Colors.transparent,
                                            child: ProductLine(
                                              line: orderController
                                                  .currentOrderLines[index],
                                            )),
                                      );
                                    },
                                  );
                                } else
                                  return Container();
                              }),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Container(
                                  color: CustomColors.lighterPurple,
                                  // margin: const EdgeInsets.only(top: 10),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Subtotal",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        "${((context.watch<OrderController>().totalPrice * 100).ceilToDouble()) / 100}",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  // margin: const EdgeInsets.only(top: 10),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "tax",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        "0",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),

                                // const SizedBox(
                                //   height: 20,
                                // ),
                                SvgPicture.asset(
                                  'assets/images/zigzag.svg',
                                  fit: BoxFit.contain,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: InkWell(
                      onTap: () {
                        context.read<HomeController>().togglePayNow(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                            color: CustomColors.green,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                        height: 60,
                        width: 320,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Pay Now",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Text(
                                  ('${((context.watch<OrderController>().totalPrice * 100).ceilToDouble()) / 100}'),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
