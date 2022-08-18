import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/screens/home/overlays/ruined/widgets/reason.dart';
import 'package:pos/screens/home/overlays/ruined/widgets/ruined_order_tile.dart';
import 'package:pos/screens/home/overlays/ruined/widgets/total_loss.dart';
import 'package:pos/variables/texts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../variables/colors.dart';
import 'widgets/ruined_button_row.dart';

class Ruined extends StatelessWidget {
  const Ruined({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 79,
          child: InkWell(
            onTap: () {
              context.read<HomeController>().toggleRuinedOverlay();
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
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 160,
          bottom: 0,
          left: 25.w,
          right: 25.w,
          child: Container(
            decoration: BoxDecoration(
              color: CustomColors.modalBG.withOpacity(.50),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  width: 50.w,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30.0, bottom: 10),
                    child: Center(
                      child: Text(
                        'Products Scraping',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  height: 100.h - (160),
                  width: 50.w,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    height: 55.h,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      color: Colors.black45,
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          height: 40.h,
                                          width: 25.5.w,
                                          child: ListView(
                                              controller: ScrollController(),
                                              children: const [
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'pasta',
                                                  price: 79,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'Greek Salad',
                                                  price: 21,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'Chili',
                                                  price: 22,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'Penne',
                                                  price: 10,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'pasta',
                                                  price: 79,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'Greek Salad',
                                                  price: 21,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'Chili',
                                                  price: 22,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'Penne',
                                                  price: 10,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'pasta',
                                                  price: 79,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'Greek Salad',
                                                  price: 21,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'Chili',
                                                  price: 22,
                                                ),
                                                RuinedOrderTile(
                                                  quanitity: 1,
                                                  name: 'Penne',
                                                  price: 10,
                                                ),
                                              ]),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          height: 18.h,
                                          width: 25.5.w,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 44),
                                            child: Container(
                                                child: TotalLoss(
                                                    subTotal: 79, tax: 21)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: 55.h,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      color: Color(0xFF1A031A),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 43, left: 35, right: 26),
                                      child: ListView(
                                        controller: ScrollController(),
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 25.0),
                                            child: Text(
                                              'Reason',
                                              style:
                                                  TextStyles.whiteDetailsStyle,
                                            ),
                                          ),
                                          const Reason(
                                              reasonTitle: 'Hospitality'),
                                          const Reason(reasonTitle: 'Broken'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0, width: 50.w, child: const RuinedButtonRow()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
