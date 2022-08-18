import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/cash_control_controller.dart';
import 'package:pos/controllers/homeContentController.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:pos/screens/home/overlays/modal_overlay.dart';
import 'package:pos/screens/home/overlays/paynow_overlay/widgets/payment_types/payment_types_menu.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../../controllers/home_controller.dart';
import '../../../../controllers/order_controller.dart';
import '../../../../variables/colors.dart';
import 'package:provider/provider.dart';

class PayNow extends StatelessWidget {
  const PayNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      height: 100.h,
      width: 100.w,
      child: InkWell(
        child: SizedBox(
          child: Stack(
            children: [
              Positioned(
                top: 80,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                    child: InkWell(
                      onTap: () {
                        context.read<HomeController>().closeAllOpenModals();
                      },
                      child: Container(
                        width: 100.w,
                        height: 100.h,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ),
              const PaymentTypesMenu(),
              Positioned(
                bottom: 0,
                left: 20,
                child: InkWell(
                  onTap: () {
                    context
                        .read<HomeContentController>()
                        .changeHomePageContents(HomeContents.pay, context);
                    context
                        .read<PaymentNumPadController>()
                        .getPayments(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    margin: const EdgeInsets.only(top: 150),
                    decoration: BoxDecoration(
                      color: CustomColors.green,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    height: 60,
                    width: 320,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Pay Now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Text(
                              '${((context.watch<OrderController>().totalPrice * 100).ceilToDouble()) / 100}',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
