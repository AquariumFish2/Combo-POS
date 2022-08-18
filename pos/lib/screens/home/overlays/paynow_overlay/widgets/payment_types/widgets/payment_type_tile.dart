import 'package:flutter/material.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/pos_order_type.dart';
import 'package:provider/provider.dart';

class PaymentTypeTile extends StatelessWidget {
  PaymentTypeTile({Key? key, required this.orderType}) : super(key: key);
  POSOrderType orderType;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<OrderController>().setOrderType(orderType, context);
      },
      child: Container(
        height: 48,
        width: 350,
        decoration: BoxDecoration(
          color: (context.watch<OrderController>().order != null)
              ? (orderType.odooId ==
                      context.watch<OrderController>().order!.orderTypeId)
                  ? Color(0xFF322738)
                  : null
              : null,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 28),
              child: Icon(
                Icons.money,
                color: (context.watch<OrderController>().order != null)
                    ? (orderType.odooId ==
                            context.watch<OrderController>().order!.orderTypeId)
                        ? Colors.pink
                        : Colors.white54
                    : Colors.white54,
              ),
            ),
            Text(
              orderType.name!,
              style: TextStyle(
                color: (context.watch<OrderController>().order != null)
                    ? (orderType.odooId ==
                            context.watch<OrderController>().order!.orderTypeId)
                        ? Colors.pink
                        : Colors.white54
                    : Colors.white54,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
