import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:pos/data/database/payment_method.dart';
import 'package:pos/main.dart';
import 'package:provider/provider.dart';

import '../../../../../../../data/database/pay.dart';

class PaymentMethodCard extends StatelessWidget {
  PaymentMethodCard({Key? key, required this.paymentMethod}) : super(key: key);
  PaymentMethod paymentMethod;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.5),
      child: GestureDetector(
        onTap: () {
          (context.read<PaymentNumPadController>().total ==
                  context
                      .read<PaymentNumPadController>()
                      .checkWhatWePaid(context))
              ? null
              : context
                  .read<PaymentNumPadController>()
                  .setPaymentMethod(paymentMethod, context);
        },
        onDoubleTap: () {
          (context.read<PaymentNumPadController>().total ==
                  context
                      .read<PaymentNumPadController>()
                      .checkWhatWePaid(context))
              ? null
              : context
                  .read<PaymentNumPadController>()
                  .onDoubleTap(paymentMethod, context);
        },
        child: Container(
          height: 51,
          decoration: BoxDecoration(
              color: (context.watch<PaymentNumPadController>().paymentMethod !=
                      null)
                  ? (paymentMethod.odooId ==
                          context
                              .watch<PaymentNumPadController>()
                              .paymentMethod!
                              .odooId)
                      ? Colors.pink
                      : (context.watch<PaymentNumPadController>().total ==
                              context
                                  .watch<PaymentNumPadController>()
                                  .checkWhatWePaid(context))
                          ? Colors.grey[300]
                          : Colors.white
                  : Colors.white,
              borderRadius: BorderRadius.circular(13)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 39.0),
            child: Center(
              child: Icon(
                (paymentMethod.name!.toUpperCase().contains("BANK"))
                    ? Icons.credit_card
                    : (paymentMethod.name!.toUpperCase().contains('CASH'))
                        ? Icons.payments
                        : Icons.person,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
