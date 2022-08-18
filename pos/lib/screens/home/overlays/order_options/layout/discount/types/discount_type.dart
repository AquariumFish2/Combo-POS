import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/order_option_controller.dart';
import 'package:provider/provider.dart';

import '../../../../modals_triangle_pointer.dart';

class DiscountTypes extends StatelessWidget {
  const DiscountTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 343,
          top: 185,
          child: Container(
            width: 267,
            height: 267,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 14.0, left: 75, right: 75, bottom: 11),
                          child: FittedBox(
                              fit: BoxFit.cover,
                              child: Text(
                                'chose discount type',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(30)),
                          width: 241,
                          height: 194,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Static',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Container(
                                height: 1,
                                color: Colors.white24,
                                width: 230,
                              ),
                              const Text(
                                'Rate',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Container(
                                height: 1,
                                color: Colors.white24,
                                width: 230,
                              ),
                              const Text(
                                'Special',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Container(
                                height: 1,
                                color: Colors.white24,
                                width: 230,
                              ),
                              InkWell(
                                onTap: (() {
                                  context
                                      .read<OrderOptionController>()
                                      .toggleDiscountTypes();
                                  context
                                      .read<HomeController>()
                                      .toggleOrderOptionsPopup();
                                }),
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: (110 + 20 + 10) + (45 * 2) + (45 / 2),
          left: 320,
          child: RotatedBox(
            quarterTurns: 3,
            child: CustomPaint(
              painter: TrianglePainter(
                strokeColor: Colors.white.withOpacity(.4),
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
      ],
    );
  }
}
