import 'package:flutter/material.dart';
import 'package:pos/controllers/paynow_with_wallet_controller.dart';
import 'package:provider/provider.dart';

class PayNowBackButton extends StatelessWidget {
  const PayNowBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: ()=>context.read<PayNowWithWalletController>().backTotal(),
      child: const SizedBox(
        height: 46,
        width: 99,
        child: Icon(
          Icons.backspace_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
