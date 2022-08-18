import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/history_layout_controller.dart';
import 'package:pos/screens/history/overlays/historysearch/widgets/search_button_row.dart';
import 'package:pos/screens/history/overlays/order_return/widgets/return_order_button_row.dart';
import 'package:pos/screens/history/overlays/order_return/widgets/return_order_selectable_tile.dart';
import 'package:pos/variables/texts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../variables/colors.dart';

class OrderReturnOverlay extends StatelessWidget {
  const OrderReturnOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 37,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
              child: InkWell(
                onTap: () {
                  context.read<HistoryLayoutController>().toggleReturnOverlay();
                },
                child: Container(
                  width: 100.w,
                  height: 100.h,
                  color: Color(0xFF412941).withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 105,
          left: 100.w/6,
          right: 100.w/6,
          child: Container(
            decoration: BoxDecoration(
              color: CustomColors.modalBG.withOpacity(.30),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 34.0, bottom: 4),
                  child: Text(
                    'Return Order',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Text(
                  'Select item you want returned',
                  style: TextStyles.whiteSmallDetailsStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 52, bottom: 13, top: 29),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: const Text(
                                      'Select All',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const ReturnOrderSelectableTile(
                              selected: true,
                              quantity: 2,
                              orderName: 'popcorn cake',
                              price: 42,
                              selectedQuantity: 1,
                            ),
                            const ReturnOrderSelectableTile(
                              selected: false,
                              quantity: 3,
                              orderName: 'popcorn cake',
                              price: 42,
                              selectedQuantity: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const ReturnOrderButtonRow(),
              ],
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: (50.w) - 34,
          child: const CircleAvatar(
            radius: 34,
            backgroundColor: Color(0xFFD70060),
            child: Icon(
              Icons.refresh,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ],
    );
  }
}
