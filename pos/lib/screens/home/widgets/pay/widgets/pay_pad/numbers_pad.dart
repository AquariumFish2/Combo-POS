import 'package:flutter/material.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:provider/provider.dart';
import 'widgets/delete_button.dart';
import 'widgets/dot_button.dart';
import 'widgets/num_pad.dart';

class NumbersPad extends StatelessWidget {
  const NumbersPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    addNumber(String number) {
      context.read<PaymentNumPadController>().typeNumber(number);
    }

    addAmount(double amount) {
      context.read<PaymentNumPadController>().addAmount(amount);
    }

    return Column(
      children: [
        Row(
          children: [
            NumberButton(
              number: '1',
              callBack: () {
                addNumber('1');
              },
            ),
            NumberButton(
              number: '2',
              callBack: () {
                addNumber('2');
              },
            ),
            NumberButton(
              number: '3',
              callBack: () {
                addNumber('3');
              },
            ),
            NumberButton(
              number: '+5',
              small: true,
              callBack: () {
                addAmount(5);
              },
            ),
          ],
        ),
        Row(
          children: [
            NumberButton(
              number: '4',
              callBack: () {
                addNumber('4');
              },
            ),
            NumberButton(
              number: '5',
              callBack: () {
                addNumber('5');
              },
            ),
            NumberButton(
              number: '6',
              callBack: () {
                addNumber('6');
              },
            ),
            NumberButton(
              number: '+10',
              small: true,
              callBack: () {
                addAmount(10);
              },
            ),
          ],
        ),
        Row(
          children: [
            NumberButton(
              number: '7',
              callBack: () {
                addNumber('7');
              },
            ),
            NumberButton(
              number: '8',
              callBack: () {
                addNumber('8');
              },
            ),
            NumberButton(
              number: '9',
              callBack: () {
                addNumber('9');
              },
            ),
            NumberButton(
              number: '+50',
              small: true,
              callBack: () {
                addAmount(50);
              },
            ),
          ],
        ),
        Row(
          children: [
            NumberButton(
              number: '0',
              doubleWidth: true,
              callBack: () {
                addNumber('0');
              },
            ),
            const DotButton(),
            const DeleteButton(),
          ],
        ),
      ],
    );
  }
}
