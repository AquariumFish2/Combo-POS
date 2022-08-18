import 'package:flutter/material.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:pos/data/database/pay.dart';
import 'package:pos/main.dart';
import 'package:pos/screens/home/widgets/pay/widgets/summary/widgets/payment_summary_container.dart';
import 'package:pos/screens/home/widgets/pay/widgets/summary/widgets/payment_summary_row.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 40, right: (-215.3 + 32.5.w), left: (-215.3 + 32.5.w)),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Text(
                  "Acquired",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Expanded(
                  child: Text(
                "Cash",
                softWrap: true,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
              Expanded(
                  child: Text(
                "Change",
                softWrap: true,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
              Expanded(
                  child: Text(
                "Method",
                softWrap: true,
                style: TextStyle(color: Colors.white),
              )),
            ],
          ),
          const SizedBox(
            child: SizedBox(
              height: 8,
            ),
          ),
          Column(
            children: [
              ...context
                  .watch<PaymentNumPadController>()
                  .payments
                  .map((e) => PaymentSummaryRow(pay: e))
                  .toList()
            ],
          )
        ],
      ),
    );
  }
}
