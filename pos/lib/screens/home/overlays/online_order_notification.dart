import 'dart:ui';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controllers/home_controller.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../../../variables/colors.dart';

import 'modals_triangle_pointer.dart';

class OnlineOrderNotification extends StatelessWidget {
  const OnlineOrderNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: GestureDetector(
          onTap: () =>
              context.read<HomeController>().toggleOnlineOrderNotification(),
          child: Container(
            color: Colors.transparent,
            height: 100.h,
            width: 100.w,
          ),
        )),
        Positioned(
          top: 58,
          right: 220,
          child: SizedBox(
            height: 80,
            width: 270,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 30,
                  child: CustomPaint(
                    painter: TrianglePainter(
                      strokeColor: Colors.white.withOpacity(.4),
                      strokeWidth: 10,
                      paintingStyle: PaintingStyle.fill,
                    ),
                    child: const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<HomeController>().toggleOnlineOrdersModal();
                  },
                  child: Container(
                    height: 80,
                    width: 270,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: CustomColors.modalBG.withOpacity(0),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                        // blendMode: BlendMode.multiply,
                        child: Container(
                          color: Colors.white.withOpacity(.4),
                          padding: const EdgeInsets.only(right: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 55,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/hunger.png'),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Title",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Text(
                                                "1 min ago",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black
                                                      .withOpacity(.6),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Text(
                                            "Description is more than one line so this one line so this widget will not fit it!",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    )
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
