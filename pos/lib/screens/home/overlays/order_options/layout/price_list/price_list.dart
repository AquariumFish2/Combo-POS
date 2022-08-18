import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/screens/home/overlays/triangle_clipper.dart';
import 'package:provider/provider.dart';

import '../../../../../../controllers/home_controller.dart';
import '../../../../../../controllers/order_option_controller.dart';
import '../../../modals_triangle_pointer.dart';

class PriceList extends StatelessWidget {
  const PriceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 343,
          top: 145,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
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
                                    'price list',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'price 1',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Container(
                                    height: 1,
                                    color: Colors.white24,
                                    width: 190,
                                  ),
                                  const Text(
                                    'price 2',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Container(
                                    height: 1,
                                    color: Colors.white24,
                                    width: 190,
                                  ),
                                  const Text(
                                    'price 3',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Container(
                                    height: 1,
                                    color: Colors.white24,
                                    width: 190,
                                  ),
                                  InkWell(
                                    onTap: (() {
                                      context
                                          .read<OrderOptionController>()
                                          .togglePriceList();
                                      context
                                          .read<HomeController>()
                                          .toggleOrderOptionsPopup();
                                    }),
                                    child: const Text(
                                      'price 4',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
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
          ),
        ),
        Positioned(
          top: (110 + 20 + 10) + (45 * 0) + (45 / 2),
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
