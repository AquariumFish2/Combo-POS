import 'package:flutter/material.dart';
import 'package:pos/screens/checkout/overlays/cashcontrol/pad_num_button.dart';

import 'cash_control_back_button.dart';

class CashControlPadLastRow extends StatelessWidget {
  const CashControlPadLastRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
      child: Row(
        children: const [
          Expanded(child: SizedBox()),
          Expanded(child: PadNumButton(num: 0)),
          Expanded(child: CashControlBackButton()),
        ],
      ),
    );
  }
}
