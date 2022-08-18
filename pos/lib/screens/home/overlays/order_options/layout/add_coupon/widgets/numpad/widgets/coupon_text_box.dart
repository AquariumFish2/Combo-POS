import 'package:flutter/material.dart';
import 'package:pos/controllers/add_coupon_controller.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CouponTextBox extends StatelessWidget {
  const CouponTextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Container(
        height: 40,
        // width: 50.w,
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 1.w),
              child: SizedBox(
                width: 15.w,
                height: 20,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: (context.watch<AddCouponController>().code.isEmpty)
                      ? const Text(
                          'Enter coupon code here',
                          style: TextStyle(
                              color: Colors.black26,
                              fontStyle: FontStyle.italic,
                              fontSize: 15),
                        )
                      : Text(
                          context.watch<AddCouponController>().code,
                          style: const TextStyle(
                            color: Colors.black26,
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Consumer<AddCouponController>(
                builder: (context, addCouponController, _) {
              if (addCouponController.coupon == null) {
                return InkWell(
                  onTap: () => addCouponController.apply(context),
                  child: Text(
                    'APPLY',
                    style: TextStyle(
                        color: CustomColors.pink.withOpacity(0.7),
                        fontStyle: FontStyle.italic,
                        fontSize: 14),
                  ),
                );
              } else {
                return Text(
                  'APPLIED',
                  style: TextStyle(
                    fontSize: 14,
                    color: CustomColors.green,
                    fontStyle: FontStyle.italic,
                  ),
                );
              }
            }),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
