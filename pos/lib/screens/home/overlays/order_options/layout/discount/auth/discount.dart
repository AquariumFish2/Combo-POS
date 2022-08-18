import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/users_pin_code_controller.dart';
import 'package:pos/screens/home/overlays/order_options/layout/discount/auth/widgets/buttons/discount_buttons.dart';
import 'package:pos/screens/home/overlays/order_options/layout/discount/auth/widgets/numpad/numpad.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../modals_triangle_pointer.dart';
import '../../../../triangle_clipper.dart';

class DiscountLayOut extends StatelessWidget {
  const DiscountLayOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 343,
          right: 59,
          top: 140,
          bottom: 59,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                width: 60.w,
                height: double.infinity,
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
                        children: [
                          const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context
                                    .read<UsersPinCodeController>()
                                    .selectedUser!
                                    .name!,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  context
                                      .read<UsersPinCodeController>()
                                      .selectedUser!
                                      .posUserType!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                  ))
                            ],
                          ),
                          const Spacer(
                            flex: 30,
                          ),
                          const Text(
                            'change user',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100.h - (140 + 59 + 60 + 8.h + 60),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const NumPad(),
                    ),
                    const DiscountButtons(),
                  ]),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: (110 + 20 + 10) + (45 * 2) + (45 / 2),
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
