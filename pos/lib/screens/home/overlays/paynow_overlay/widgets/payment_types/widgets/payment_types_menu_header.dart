import 'package:flutter/material.dart';
import 'package:pos/data/database/payment_method.dart';
import 'package:pos/main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentTypesMenuHeader extends StatelessWidget {
  PaymentTypesMenuHeader({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    print(staticStore.box<PaymentMethod>().getAll().first.toJson());
    return Container(
      width: 350,
      height: 58,
      decoration: const BoxDecoration(
          color: Color(0xFF392e38),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
