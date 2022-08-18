import 'package:flutter/material.dart';
import 'package:pos/controllers/paynow_with_wallet_controller.dart';
import 'package:provider/provider.dart';

class PayNowNumButton extends StatelessWidget {
  const PayNowNumButton({Key? key, required this.num}) : super(key: key);
  final int num;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<PayNowWithWalletController>().addTotal(num),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Container(
          height: 46,
          width: 99,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Center(
            child: Text(
              num.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
