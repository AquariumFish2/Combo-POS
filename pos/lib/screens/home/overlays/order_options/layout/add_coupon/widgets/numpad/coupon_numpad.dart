import 'package:flutter/material.dart';
import 'package:pos/screens/home/overlays/order_options/layout/add_coupon/widgets/numpad/widgets/coupon_number_button.dart';
import 'package:pos/screens/home/overlays/order_options/layout/add_coupon/widgets/numpad/widgets/coupon_remove_button.dart';
import 'package:pos/screens/home/overlays/order_options/layout/add_coupon/widgets/numpad/widgets/coupon_text_box.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NumPad extends StatelessWidget {
  const NumPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      // padding: EdgeInsets.symmetric(horizontal:10 .w),
      width: 25.w,
      child: ListView(
        controller: ScrollController(),
        children: [
          const CouponTextBox(),
          Row(
            children: const [
              CouponNumberButton(number: 1),
              CouponNumberButton(number: 2),
              CouponNumberButton(number: 3),
            ],
          ),
          Row(
            children: const [
              CouponNumberButton(number: 4),
              CouponNumberButton(number: 5),
              CouponNumberButton(number: 6),
            ],
          ),
          Row(
            children: const [
              CouponNumberButton(number: 7),
              CouponNumberButton(number: 8),
              CouponNumberButton(number: 9),
            ],
          ),
          Row(
            children: [
              Expanded(child: Container()),
              const CouponNumberButton(number: 0),
              const CouponRemoveButton(),
            ],
          )
        ],
      ),
    );
  }
}
