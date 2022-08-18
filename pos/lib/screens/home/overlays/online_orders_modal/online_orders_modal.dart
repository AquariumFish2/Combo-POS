import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:pos/screens/home/widgets/pay/widgets/pay_pad/numbers_pad.dart';
import 'package:pos/screens/home/widgets/pay/widgets/pay_pad/widgets/save_button.dart';
import 'package:pos/screens/home/widgets/pay/widgets/total/total.dart';
import 'package:provider/provider.dart';

import '../../../../controllers/home_controller.dart';
import '../../../../controllers/online_orders_controller.dart';
import '../../../../data/models/online_order.dart';
import '../../../../variables/colors.dart';
import '../../widgets/pay/widgets/pay_pad/widgets/num_pad.dart';
import '../../widgets/pay/pay.dart';
import '../../widgets/pay/widgets/header/pay_header.dart';
import '../../widgets/pay/widgets/summary/payment_summary.dart';
import '../modals_triangle_pointer.dart';
import 'widgets/data/status_tab.dart';
import 'widgets/online_order.dart';
import 'widgets/status_tabs.dart';

class OrdersModal extends StatelessWidget {
  const OrdersModal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      List<OnlineOrder> orders =
          context.watch<OnlineOrdersController>().onlineOrders;
      return Positioned.fill(
        child: Stack(
          children: [
            Positioned(
              top: 68,
              right: 240,
              child: CustomPaint(
                painter: TrianglePainter(
                  strokeColor: CustomColors.modalBG,
                  strokeWidth: 10,
                  paintingStyle: PaintingStyle.fill,
                ),
                child: const SizedBox(
                  height: 30,
                  width: 34,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 95,
                bottom: 80,
                left: 200,
                right: 200,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
                color: CustomColors.modalBG.withOpacity(.95),
              ),
              child: ListView(
                controller: ScrollController(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 40),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const StatusTabs(
                          tabs: [
                            StatusTab(id: '1', text: "Pending", selected: true),
                            StatusTab(id: '2', text: "Accepted"),
                            StatusTab(id: '2', text: "Rejected"),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "Orders (6)",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (context
                      .watch<OnlineOrdersController>()
                      .payOnOnlineOrdersPopup) ...[
                    if (!context.watch<HomeController>().paymentSummary)
                      const PayHeader(isPopup: true),
                    context.watch<HomeController>().paymentSummary
                        ? Container(
                            padding: EdgeInsets.symmetric(horizontal: 200),
                            child: const PaymentSummary(),
                          )
                        : Total(
                            total:
                                context.read<PaymentNumPadController>().total,
                            isPopup: true,
                          ),
                    SizedBox(
                      height: context.watch<HomeController>().paymentSummary
                          ? 100
                          : 30,
                    ),
                    SizedBox(
                      height: 276,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NumbersPad(),
                          SaveButton(),
                        ],
                      ),
                    ),
                  ] else
                    for (var order in orders) Order(order: order),
                ],
              ),
            ),
            if (context.watch<OnlineOrdersController>().payOnOnlineOrdersPopup)
              Positioned(
                bottom: 120,
                right: 250,
                child: InkWell(
                  onTap: () => context
                      .read<OnlineOrdersController>()
                      .togglePayOnOnlineOrderPopup(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: const Text(
                      "Close",
                      style: TextStyle(fontSize: 16),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
          ],
        ),
      );
    });
  }
}
