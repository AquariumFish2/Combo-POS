import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/controllers/split_order_controller.dart';
import 'package:pos/screens/home/overlays/order_options/layout/split/widgets/order_list_tile.dart';
import 'package:pos/screens/home/overlays/order_options/layout/split/widgets/split_buttons.dart';

import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../../variables/colors.dart';

class BillSplit extends StatelessWidget {
  const BillSplit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 79,
          child: InkWell(
            onTap: () {
              context.read<HomeController>().toggleBillDivider();
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  width: 100.w,
                  height: 100.h,
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 5.h + 120,
          bottom: 5.h,
          right: 5.w,
          left: 5.w,
          child: Container(
            decoration: BoxDecoration(
              color: CustomColors.modalBG.withOpacity(.40),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 34.0, right: 35, left: 35),
              child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Split Order',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    const Text(
                      'Select item you want split',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: (70.h - 154),
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 35.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 20,
                                      horizontal: 4,
                                    ),
                                    child: GestureDetector(
                                      // onTap: () => context
                                      //     .read<OrderController>()
                                      //     .selectAllLinesToSplit(),
                                      child: const Text(
                                        'select all',
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: (context
                                            .read<SplitOrderController>()
                                            .currentOrderLines
                                            .isNotEmpty)
                                        ? ListView.builder(
                                            controller: ScrollController(),
                                            itemCount: context
                                                .watch<SplitOrderController>()
                                                .currentOrderLines
                                                .length,
                                            itemBuilder: ((context, index) =>
                                                OrderListTile(
                                                  split: () => context
                                                      .read<
                                                          SplitOrderController>()
                                                      .splitLine(context
                                                          .read<
                                                              SplitOrderController>()
                                                          .currentOrderLines[index]),
                                                  line: context
                                                      .read<
                                                          SplitOrderController>()
                                                      .currentOrderLines[index],
                                                )),
                                          )
                                        : Container(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: CustomColors.darkPurple,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 35.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 20.0,
                                        horizontal: 4,
                                      ),
                                      child: GestureDetector(
                                        // onTap: () => context
                                        //     .read<OrderController>()
                                        //     .regainAllSplittedLines(),
                                        child: const Text(
                                          'select all',
                                          style:
                                              TextStyle(color: Colors.white70),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: (context
                                                      .read<OrderController>()
                                                      .order !=
                                                  null &&
                                              context
                                                  .read<SplitOrderController>()
                                                  .splittedOrderLines
                                                  .isNotEmpty)
                                          ? ListView.builder(
                                              controller: ScrollController(),
                                              itemCount: context
                                                  .watch<SplitOrderController>()
                                                  .splittedOrderLines
                                                  .length,
                                              itemBuilder: ((context, index) =>
                                                  OrderListTile(
                                                    split: () => context
                                                        .read<
                                                            SplitOrderController>()
                                                        .regainSplittedLine(context
                                                            .read<
                                                                SplitOrderController>()
                                                            .splittedOrderLines[index]),
                                                    line: context
                                                        .watch<
                                                            SplitOrderController>()
                                                        .splittedOrderLines[index],
                                                  )),
                                            )
                                          : Container(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SplitButtons(),
                  ]),
            ),
          ),
        ),
        Positioned(
          top: 120,
          left: (50.w) - 34,
          child: CircleAvatar(
            radius: 34,
            backgroundColor: const Color(0xFFD70060),
            child: Center(
                child: SvgPicture.asset('assets/images/ic_extension_24px.svg')),
          ),
        ),
      ],
    );
  }
}
