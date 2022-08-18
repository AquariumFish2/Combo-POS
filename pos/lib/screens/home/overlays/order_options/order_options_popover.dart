import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/controllers/order_option_controller.dart';
import 'package:pos/controllers/split_order_controller.dart';
import 'package:pos/screens/home/overlays/order_options/layout/add_coupon/add_coupon.dart';
import 'package:pos/screens/home/overlays/order_options/layout/discount/auth/discount.dart';
import 'package:pos/screens/home/overlays/order_options/layout/discount/types/discount_type.dart';
import 'package:pos/screens/home/overlays/order_options/layout/order_type/order_type.dart';
import 'package:pos/screens/home/overlays/order_options/layout/price_list/price_list.dart';
import 'package:pos/screens/home/overlays/order_options/widgets/option_item.dart';
import 'package:pos/screens/home/overlays/ruined/ruined.dart';
import 'package:provider/provider.dart';
import '../../../../variables/colors.dart';

import '../modals_triangle_pointer.dart';
import '../triangle_clipper.dart';

class OrderOptionsPopup extends StatelessWidget {
  const OrderOptionsPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<OrderOptionController>(
        builder: (context, orderOptionController, _) {
      return Stack(
        children: [
          Positioned(
            top: 110,
            left: 50,
            child: SizedBox(
              width: 270,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 45,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: ClipRRect(
                        child: ClipPath(
                          clipper: TriangleClipper(),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                            child: CustomPaint(
                              painter: TrianglePainter(
                                strokeColor: Colors.white.withOpacity(.41),
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
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 23),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: CustomColors.modalBG.withOpacity(0),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
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
                                child: const Text(
                                  "Options Menu",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.5),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    OptionItem(
                                      text: "Price List",
                                      show: () => orderOptionController
                                          .togglePriceList(),
                                    ),
                                    OptionItem(
                                      text: "Order Type",
                                      show: () => orderOptionController
                                          .toggleOrderTypes(),
                                    ),
                                    OptionItem(
                                      text: "Discount",
                                      show: () => orderOptionController
                                          .toggleDiscountLayout(),
                                    ),
                                    OptionItem(
                                      text: "Scarp",
                                      show: () => Provider.of<HomeController>(
                                              context,
                                              listen: false)
                                          .toggleRuinedOverlay(),
                                    ),
                                    const OptionItem(text: "Add Note"),
                                    const OptionItem(text: "Print"),
                                    InkWell(
                                      child: OptionItem(
                                        text: "Delete",
                                        show: () {
                                          context
                                              .read<OrderController>()
                                              .deleteCurrentOrder(context);
                                          context
                                              .read<HomeController>()
                                              .toggleOrderOptionsPopup();
                                        },
                                      ),
                                    ),
                                    OptionItem(
                                      text: "Split Bill",
                                      show: () =>
                                          Provider.of<SplitOrderController>(
                                                  context,
                                                  listen: false)
                                              .checkSplitable(context),
                                    ),
                                    OptionItem(
                                      text: 'Add Copoun',
                                      show: () => orderOptionController
                                          .toggleAddCoupon(),
                                    ),
                                    const OptionItem(
                                        text: 'transfer to another table'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (orderOptionController.discount) const DiscountLayOut(),
          if (orderOptionController.discountTypes) const DiscountTypes(),
          if (orderOptionController.priceList) const PriceList(),
          if (orderOptionController.orderTypes) const OrderType(),
          if (orderOptionController.addCoupon) const AddCoupon(),
        ],
      );
    });
  }
}
// if (Provider.of<HomeController>(context).isRuinedOpen)
//   const Ruined(),

