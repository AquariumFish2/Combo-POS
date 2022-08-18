import 'package:flutter/material.dart';
import 'package:pos/controllers/add_coupon_controller.dart';
import 'package:pos/controllers/order_option_controller.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CouponNumberButton extends StatelessWidget {
  const CouponNumberButton({Key? key, required this.number}) : super(key: key);
  final int number;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => context.read<AddCouponController>().addDigit(number),
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.symmetric(horizontal: 2.5, vertical: 2.5),
          color: const Color(0xff514a4f),
          child: SizedBox(
            height: .02*(100.w+100.h),
            child: Center(
              child: Text(
                number.toString(),
                style: const TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
