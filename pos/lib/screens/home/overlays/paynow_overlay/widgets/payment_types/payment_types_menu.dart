import 'package:flutter/material.dart';
import 'package:pos/data/database/pos_order_type.dart';
import 'package:pos/main.dart';
import 'package:pos/screens/home/overlays/paynow_overlay/widgets/payment_types/widgets/payment_type_tile.dart';
import 'package:pos/screens/home/overlays/paynow_overlay/widgets/payment_types/widgets/payment_types_menu_header.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentTypesMenu extends StatelessWidget {
  const PaymentTypesMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      child: Container(
        // padding: const EdgeInsets.only(left: 30, right: 30),
        // margin: const EdgeInsets.only(top: 120),
        decoration: const BoxDecoration(
          color: Color(0xFF271D27),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        height: 100.h,
        width: 350,
        child: Column(
          children: [
            PaymentTypesMenuHeader(
              title: 'طريقة الدفع',
            ),
            ...staticStore
                .box<POSOrderType>()
                .getAll()
                .map((e) => PaymentTypeTile(orderType: e))
                .toList(),
          ],
        ),
      ),
    );
  }
}
