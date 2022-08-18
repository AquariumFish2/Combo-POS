import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/data/database/floor.dart';
import 'package:pos/data/database/order.dart';
import 'package:pos/data/database/pos.dart';
import 'package:pos/main.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectedOrder extends StatelessWidget {
  final Order1 order;
  const SelectedOrder({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<OrderController>().selectOrder(order, context),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // padding: EdgeInsets.only(left: 20,top: 20,right: 10,bottom: 20),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(.4),
            border: Border.all(color: CustomColors.pink),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 8.h,
                decoration: BoxDecoration(
                    border: Border(
                        right:
                            BorderSide(color: Colors.white.withOpacity(.3)))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FittedBox(
                      child: Text(
                        "POS",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FittedBox(
                      child: Text(
                        staticStore
                            .box<POS>()
                            .getAll()
                            .firstWhere(
                                (element) => order.posId == element.odooId)
                            .name!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 8.h,
                decoration: BoxDecoration(
                    border: Border(
                        right:
                            BorderSide(color: Colors.white.withOpacity(.3)))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FittedBox(
                      child: Text(
                        "Table",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FittedBox(
                      child: Text(
                        (order.tableId != null)
                            ? staticStore
                                .box<TableId>()
                                .getAll()
                                .firstWhere((element) =>
                                    element.odooId == order.tableId)
                                .name!
                            : '-',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 8.h,
                decoration: BoxDecoration(
                    border: Border(
                        right:
                            BorderSide(color: Colors.white.withOpacity(.3)))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FittedBox(
                      child: Text(
                        "Order",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FittedBox(
                      child: Text(
                        order.name!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FittedBox(
                      child: Text(
                        "Time",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FittedBox(
                      child: Text(
                        order.time!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FittedBox(
                      child: Text(
                        "Total",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FittedBox(
                      child: Text(
                        "${order.amountTotal} SAR",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
