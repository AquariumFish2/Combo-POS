import 'package:flutter/material.dart';
import 'package:pos/screens/home/widgets/pay/widgets/pay_pad/widgets/save_button.dart';
import '../../../../../../../controllers/home_controller.dart';
import '../../../../../../../controllers/payment_num_pad_controller.dart';
import '../../../../../../../variables/colors.dart';
import 'package:provider/provider.dart';

import '../numbers_pad.dart';

class NumPadContainer extends StatelessWidget {
  const NumPadContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: const [
              NumbersPad(),
              SaveButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class NumberButton extends StatelessWidget {
  final String number;
  final bool small;
  final bool doubleWidth;
  final withBackGround;
  final Function callBack;

  const NumberButton({
    Key? key,
    required this.number,
    required this.callBack,
    this.small = false,
    this.doubleWidth = false,
    this.withBackGround = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (context.read<PaymentNumPadController>().total ==
              context.read<PaymentNumPadController>().checkWhatWePaid(context))
          ? null
          : () => callBack(),
      child: Container(
        height: 65,
        width: doubleWidth ? 134 : 65,
        child: Center(
          child: Text(
            number,
            style: TextStyle(
              fontSize: small ? 30 : 40,
              color: withBackGround
                  ? CustomColors.blackPurple
                  : CustomColors.lighterPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: withBackGround
              ? (context.watch<PaymentNumPadController>().total ==
                      context
                          .read<PaymentNumPadController>()
                          .checkWhatWePaid(context))
                  ? Colors.grey[300]
                  : Colors.white
              : Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
    );
  }
}
