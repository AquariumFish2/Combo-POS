import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/screens/customers/customers_screen.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../modals_triangle_pointer.dart';

class CustomerOverLay extends StatelessWidget {
  const CustomerOverLay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: InkWell(
            onTap: () => context.read<HomeController>().toggleCustomerOverLay(),
            child: Container(
              height: 100.h,
              width: 100.w,
              decoration: const BoxDecoration(color: Colors.transparent),
            ),
          ),
        ),
        Positioned(
          top: 134,
          left: 175,
          child: CustomPaint(
            painter: TrianglePainter(
              strokeColor: Colors.white.withOpacity(.5),
              strokeWidth: 10,
              paintingStyle: PaintingStyle.fill,
            ),
            child: const SizedBox(
              height: 30,
              width: 34,
            ),
          ),
        ),
        Positioned(
          width: 267,
          height: 185,
          top: 164,
          left: 118,
          child: Container(
            decoration: BoxDecoration(
              color: CustomColors.modalBG.withOpacity(0.6),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 13.0,
                vertical: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: CustomColors.lightPurple.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 10),
                  child: Column(children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          context
                              .read<HomeController>()
                              .toggleCustomerOverLay();
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => CustomersScreen(),
                              ),
                              (route) => false);
                        },
                        child: const Center(
                          child: Text(
                            'Change Customer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      height: 1,
                      width: 200,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          context
                              .read<HomeController>()
                              .toggleCustomerOverLay();
                          context.read<HomeController>().togglePayWithWallet();
                        },
                        child: const Center(
                          child: Text(
                            'Pay with wallet',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      height: 1,
                      width: 200,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => context
                            .read<HomeController>()
                            .toggleCustomerOverLay(),
                        child: const Center(
                          child: Text(
                            'Close',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
