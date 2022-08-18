import 'package:flutter/material.dart';
import 'package:pos/screens/home/overlays/customer_overLay/overlay/widgets/paynow_back_button.dart';
import 'package:pos/screens/home/overlays/customer_overLay/overlay/widgets/paynow_num_button.dart';

class PayNowNumPad extends StatelessWidget {
  const PayNowNumPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: SizedBox(
        width: 307,
        height: 207,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                PayNowNumButton(num: 1),
                PayNowNumButton(num: 2),
                PayNowNumButton(num: 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                PayNowNumButton(num: 4),
                PayNowNumButton(num: 5),
                PayNowNumButton(num: 6),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                PayNowNumButton(num: 7),
                PayNowNumButton(num: 8),
                PayNowNumButton(num: 9),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  height: 46,
                  width: 99,
                ),
                PayNowNumButton(num: 0),
                PayNowBackButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
