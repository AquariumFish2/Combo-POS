import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pos/screens/home/overlays/order_options/layout/add_coupon/widgets/numpad/coupon_numpad.dart';
import 'package:pos/screens/home/overlays/order_options/layout/add_coupon/widgets/numpad/widgets/coupon_buttons.dart';
import 'package:pos/variables/texts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../modals_triangle_pointer.dart';
import '../../../triangle_clipper.dart';

class AddCoupon extends StatelessWidget {
  const AddCoupon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 343,
            right: 59,
            top: 135,
            bottom: 59,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.4),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Add Coupon',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25))
                              ],
                            )),
                        Container(
                          height: 100.h - (179 + 59 + 60 + 8.h),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const NumPad(),
                            ],
                          ),
                        ),
                        const CouponButtons(),
                      ]),
                    ),
                  ),
                ))),
        Positioned(
          top: 100,
          left: 343,
          right: 54,
          child: CircleAvatar(
            radius: 34,
            backgroundColor: const Color(0xFFD70060),
            child: Center(
                child: SvgPicture.asset('assets/images/ic_extension_24px.svg')),
          ),
        ),
        Positioned(
          top: (110 + 20 + 10) + (45 * 8) + (45 / 2),
          left: 320,
          child: RotatedBox(
            quarterTurns: 3,
            child: ClipPath(
              clipper: TriangleClipper(),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: CustomPaint(
                  painter: TrianglePainter(
                    strokeColor: Colors.white.withOpacity(.27),
                    strokeWidth: 10,
                    paintingStyle: PaintingStyle.fill,
                  ),
                  child: const SizedBox(
                    height: 23,
                    width: 23,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
