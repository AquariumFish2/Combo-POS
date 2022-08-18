import 'package:flutter/material.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:pos/data/database/pay.dart';
import 'package:pos/data/database/payment_method.dart';
import 'package:provider/provider.dart';

class PaymentSummaryContainer extends StatelessWidget {
  PaymentSummaryContainer({Key? key, required this.content, this.paymentMethod})
      : super(key: key);
  final String content;
  Pay? paymentMethod;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          children: [
            FittedBox(
              child: Text(
                content,
                softWrap: true,
              ),
            ),
            if (paymentMethod == null) const SizedBox(width: 1),
            if (paymentMethod != null) const Spacer(),
            if (paymentMethod != null)
              GestureDetector(
                  onTap: () => context
                      .read<PaymentNumPadController>()
                      .removingPay(paymentMethod!,context),
                  child: const Icon(Icons.cancel, size: 16)),
            // VerticalDivider(color: Colors.black,width: 2,),
          ],
        ),
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.rectangle),
        padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
      ),
    );
  }
}
