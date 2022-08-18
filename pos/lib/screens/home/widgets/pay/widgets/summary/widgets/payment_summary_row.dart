import 'package:flutter/material.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:pos/data/database/pay.dart';
import 'package:pos/screens/home/widgets/pay/widgets/summary/widgets/payment_summary_container.dart';
import 'package:provider/provider.dart';

class PaymentSummaryRow extends StatelessWidget {
  PaymentSummaryRow({Key? key, required this.pay}) : super(key: key);
  Pay pay;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(children: [
        PaymentSummaryContainer(content: '${pay.aquirded}'),
        const VerticalDivider(
          width: 1,
        ),
        PaymentSummaryContainer(
            content: '${((pay.money * 100).ceilToDouble()) / 100}'),
        const VerticalDivider(
          width: 1,
        ),
        PaymentSummaryContainer(content: '${pay.aquirded-pay.money}'),
        const VerticalDivider(
          width: 1,
        ),
        PaymentSummaryContainer(
          content: '${pay.type}',
          paymentMethod: pay,
        ),
      ]),
    );
  }
}
