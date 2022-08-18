import 'package:flutter/material.dart';
import 'package:pos/controllers/paynow_with_wallet_controller.dart';
import 'package:provider/provider.dart';

class PayNowBox extends StatelessWidget {
  const PayNowBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 221,
      height: 90,
      color: Colors.white,
      child: FittedBox(
        fit: BoxFit.contain,
        child: (context.watch<PayNowWithWalletController>().total.isNotEmpty)
            ? Text(context.watch<PayNowWithWalletController>().total)
            : Text('add numbers'),
      ),
    );
  }
}
