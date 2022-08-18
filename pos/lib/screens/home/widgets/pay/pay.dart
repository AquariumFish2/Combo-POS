import 'package:flutter/material.dart';
import 'package:pos/screens/home/widgets/pay/widgets/total/total.dart';
import '../../../../controllers/home_controller.dart';
import 'widgets/summary/payment_summary.dart';
import '../../../../controllers/payment_num_pad_controller.dart';
import 'widgets/pay_pad/widgets/num_pad.dart';
import 'package:provider/provider.dart';

class PayBody extends StatelessWidget {
  const PayBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 370),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              controller: ScrollController(),
              children: [
                SizedBox(
                  width: 500,
                  child: Builder(builder: (context) {
                    double total =
                        context.watch<PaymentNumPadController>().typedCash;
                    return context
                            .watch<PaymentNumPadController>()
                            .payments
                            .isNotEmpty
                        ? const PaymentSummary()
                        : Total(total: total);
                  }),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    scrollDirection: Axis.horizontal,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              height: 276,
                              width: 402,
                              margin: const EdgeInsets.only(bottom: 50),
                              child: const NumPadContainer(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
