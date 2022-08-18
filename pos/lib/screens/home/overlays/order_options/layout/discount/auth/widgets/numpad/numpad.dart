import 'package:flutter/material.dart';
import 'package:pos/screens/home/overlays/order_options/layout/discount/auth/widgets/numpad/widgets/back_button.dart';
import 'package:pos/screens/home/overlays/order_options/layout/discount/auth/widgets/numpad/widgets/number.dart';
import 'package:pos/screens/home/overlays/order_options/layout/discount/auth/widgets/numpad/widgets/password_box.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NumPad extends StatelessWidget {
  const NumPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        // padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        children: [
          SizedBox(
            width: 28.w,
            child: ListView(
              controller: ScrollController(),
              children: [
                const Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'please enter the password',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 19,
                      ),
                    ),
                  ),
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: const PasswordBox(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Row(
                    children: const [
                      NumberButton(number: 1),
                      NumberButton(number: 2),
                      NumberButton(number: 3),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    NumberButton(number: 4),
                    NumberButton(number: 5),
                    NumberButton(number: 6),
                  ],
                ),
                Row(
                  children: const [
                    NumberButton(number: 7),
                    NumberButton(number: 8),
                    NumberButton(number: 9),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    const NumberButton(number: 0),
                    const RemoveButton(),
                  ],
                )
              ],
            ),
          ),
        ]);
  }
}
