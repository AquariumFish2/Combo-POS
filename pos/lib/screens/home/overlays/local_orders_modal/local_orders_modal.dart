import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/order.dart';
import 'package:pos/main.dart';
import 'package:pos/screens/home/overlays/local_orders_modal/widgets/selected_order.dart';
import '../../../../data/models/local_order.dart';
import '../modals_triangle_pointer.dart';
import 'package:provider/provider.dart';

import '../../../../controllers/local_order_controller.dart';
import '../../../../variables/colors.dart';
import '../online_orders_modal/widgets/data/status_tab.dart';
import '../online_orders_modal/widgets/status_tabs.dart';
import '../triangle_clipper.dart';
import 'widgets/local_order.dart';

class LocalOrdersModal extends StatelessWidget {
  const LocalOrdersModal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: context.read<OrderController>().getAllOrders(),
        builder: (context, snap) {
          return Positioned.fill(
            child: Stack(
              children: [
                Positioned(
                  top: 68,
                  left: 280,
                  child: RotatedBox(
                    quarterTurns: 4,
                    child: ClipRRect(
                      child: ClipPath(
                        clipper: TriangleClipper(),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                          child: CustomPaint(
                            painter: TrianglePainter(
                              strokeColor: Colors.white.withOpacity(.4),
                              strokeWidth: 10,
                              paintingStyle: PaintingStyle.fill,
                            ),
                            child: const SizedBox(
                              height: 27,
                              width: 27,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 95,
                    bottom: 80,
                    left: 200,
                    right: 200,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: CustomColors.modalBG.withOpacity(0),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(40),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      // blendMode: BlendMode.multiply,
                      child: Container(
                        color: Colors.white.withOpacity(.4),
                        padding: EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const StatusTabs(
                                    tabs: [
                                      StatusTab(id: '1', text: "My Orders"),
                                      StatusTab(id: '2', text: "All Orders"),
                                    ],
                                  ),
                                  Text(
                                    "Orders (${(context.read<OrderController>().order != null) ? (context.read<OrderController>().allOrders.any((element) => element.id == context.read<OrderController>().order!.id)) ? context.read<OrderController>().allOrders.length : context.read<OrderController>().allOrders.length + 1 : context.read<OrderController>().allOrders.length})",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => context
                                        .read<OrderController>()
                                        .clearOrders(),
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: const Text("Void All"),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            if (context
                                    .watch<OrderController>()
                                    .allOrders
                                    .isEmpty &&
                                context.watch<OrderController>().order == null)
                              const Expanded(
                                  child: Center(
                                      child: Text(
                                'No Orders!',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ))),
                            Expanded(
                              child: ListView(
                                controller: ScrollController(),
                                children: [
                                  if (context
                                      .watch<OrderController>()
                                      .allOrders
                                      .isNotEmpty)
                                    ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      controller: ScrollController(),
                                      shrinkWrap: true,
                                      itemCount: context
                                          .watch<OrderController>()
                                          .allOrders
                                          .length,
                                      itemBuilder: (context, index) => Order(
                                        order: context
                                            .watch<OrderController>()
                                            .allOrders[index],
                                      ),
                                    ),
                                  if (context.watch<OrderController>().order !=
                                          null &&
                                      !staticStore.box<Order1>().getAll().any(
                                          (element) =>
                                              context
                                                  .watch<OrderController>()
                                                  .order!
                                                  .id ==
                                              element.id))
                                    SelectedOrder(
                                        order: context
                                            .read<OrderController>()
                                            .order!),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
