import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/floor_controller.dart';
import 'package:pos/controllers/homeContentController.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../controllers/home_controller.dart';
import '../../../../variables/colors.dart';
import '../modals_triangle_pointer.dart';

class TablePopover extends StatelessWidget {
  const TablePopover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: GestureDetector(
          onTap: () => context.read<HomeController>().toggleTablePopover(),
          child: Container(
            color: Colors.transparent,
            height: 100.h,
            width: 100.w,
          ),
        )),
        Positioned(
          top: 135,
          left: 70,
          child: SizedBox(
            width: 270,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 35,
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
                    context
                        .read<HomeContentController>()
                        .changeHomePageContents(HomeContents.tables, context);
                    context.read<FloorController>().setTempTable();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: double.infinity,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black.withOpacity(.6),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Change Table",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black.withOpacity(.6),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Change Table",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.red.shade900,
                                  ),
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
