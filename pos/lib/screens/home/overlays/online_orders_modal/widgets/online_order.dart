import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../controllers/online_orders_controller.dart';
import '../../../../../data/models/online_order.dart';
import '../../../../../variables/colors.dart';
import 'item.dart';
import 'price_item.dart';

class Order extends StatelessWidget {
  final OnlineOrder order;
  const Order({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              context
                  .read<OnlineOrdersController>()
                  .toggleOrderOpenStatus(order.id);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Order No. : 2111021221330021",
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Text(
                          "22-05-2021",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "22:25:01",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    if (!order.payed && !order.open)
                      InkWell(
                        onTap: () => context
                            .read<OnlineOrdersController>()
                            .togglePayOnOnlineOrderPopup(),
                        child: SizedBox(
                          width: 200,
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.credit_card,
                                      size: 40,
                                    ),
                                    Text(
                                      "Bank",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 1,
                                height: double.infinity,
                                color: CustomColors.pink,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.payments_outlined,
                                      color: CustomColors.pink,
                                      size: 40,
                                    ),
                                    Text(
                                      "Cash",
                                      style: TextStyle(
                                          color: CustomColors.pink,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/swyft.png'),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Transform.rotate(
                        angle: order.open ? -1 * math.pi / 2 : 1 * math.pi / 2,
                        child: const Icon(Icons.chevron_right),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 2,
            color: Colors.black,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
          ),
          if (order.open)
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            constraints: const BoxConstraints(minWidth: 120),
                            child: const Text("Qty"),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            constraints: const BoxConstraints(minWidth: 300),
                            child: const Text("Item"),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            constraints: const BoxConstraints(minWidth: 120),
                            child: const Text("Price"),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                          flex: 6,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const OrderItem(),
                    const SizedBox(
                      height: 10,
                    ),
                    const OrderItem(),
                    const SizedBox(
                      height: 10,
                    ),
                    const OrderItem(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: const [
                    SubtotalRow(),
                    SizedBox(
                      height: 5,
                    ),
                    SubtotalRow(),
                    SizedBox(
                      height: 5,
                    ),
                    SubtotalRow(),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Container(
                  height: 2,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Container(
                              constraints: const BoxConstraints(minWidth: 120),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              decoration: BoxDecoration(
                                  color: CustomColors.greenButton,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(1000))),
                              child: const Text(
                                "Acceptance",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              constraints: const BoxConstraints(minWidth: 120),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      1000,
                                    ),
                                  ),
                                  border: Border.all(color: Colors.black)),
                              child: const Text(
                                "Cancel",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => context
                            .read<OnlineOrdersController>()
                            .togglePayOnOnlineOrderPopup(),
                        child: Container(
                          height: 90,
                          width: 220,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.credit_card,
                                      size: 40,
                                    ),
                                    Text(
                                      "Bank",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 1,
                                height: double.infinity,
                                color: CustomColors.pink,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.payments_outlined,
                                      color: CustomColors.pink,
                                      size: 40,
                                    ),
                                    Text(
                                      "Cash",
                                      style: TextStyle(
                                          color: CustomColors.pink,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }
}
