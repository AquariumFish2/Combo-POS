import 'package:flutter/material.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        (context.read<PaymentNumPadController>().paymentMethodHasBank)
            ? null
            : context.read<PaymentNumPadController>().removeNumber();
      },
      child: Container(
        height: 65,
        width: 65,
        child: Center(
          child: Icon(
            Icons.backspace,
            color: CustomColors.blackPurple,
          ),
        ),
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: (context.watch<PaymentNumPadController>().total ==
                  context
                      .read<PaymentNumPadController>()
                      .checkWhatWePaid(context))
              ? Colors.grey[300]
              : Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
    );
  }
}
