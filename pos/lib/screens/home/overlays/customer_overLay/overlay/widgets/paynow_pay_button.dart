import 'package:flutter/material.dart';
import 'package:pos/controllers/paynow_with_wallet_controller.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/texts.dart';
import 'package:provider/provider.dart';

class PayNowPayButton extends StatelessWidget {
  const PayNowPayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyles.circularWhiteButton,
      onPressed: ()=>context.read<PayNowWithWalletController>().pay(context),
      child:  Padding(
        padding:const EdgeInsets.symmetric(horizontal: 70.0,vertical: 13),
        child: Text(
          'Pay',
          style: TextStyles.whiteButtonsStyle,
        ),
      ),
    );
  }
}
