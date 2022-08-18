import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:pos/data/database/payment_method.dart';
import 'package:provider/provider.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        (context.read<PaymentNumPadController>().total ==
                context
                    .read<PaymentNumPadController>()
                    .checkWhatWePaid(context))
            ? context.read<OrderController>().saveOrder(context)
            : context.read<PaymentNumPadController>().addingPay(context);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: (context.watch<PaymentNumPadController>().total ==
                  context
                      .read<PaymentNumPadController>()
                      .checkWhatWePaid(context))
              ? Color(0xFF32a427)
              : Colors.white,
        ),
        child: Center(
            child: Text(
          "Save",
          style: TextStyle(
            fontSize: 20,
            color: (context.watch<PaymentNumPadController>().total ==
                    context
                        .read<PaymentNumPadController>()
                        .checkWhatWePaid(context))
                ? Colors.white
                : Colors.black,
          ),
        )),
      ),
    );
  }
}
