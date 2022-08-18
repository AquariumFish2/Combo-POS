import 'package:flutter/material.dart';
import 'package:pos/controllers/add_coupon_controller.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/controllers/order_option_controller.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CouponButtons extends StatelessWidget {
  const CouponButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5.w, right: 2.w),
              child: ElevatedButton(
                style: ButtonStyles.circularWhiteButton,
                onPressed: () {
                  context.read<OrderOptionController>().toggleAddCoupon();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 2.w, right: 5.w),
              child: ElevatedButton(
                style: ButtonStyles.circularPinkButton,
                onPressed: () {
                  context.read<AddCouponController>().save(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: const Text(
                    'OK',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
