import 'package:flutter/material.dart';
import 'package:pos/screens/history/overlays/historysearch/widgets/history_search_button.dart';
import 'package:pos/screens/history/overlays/order_return/widgets/return_order_button.dart';

class ReturnOrderButtonRow extends StatelessWidget {
  const ReturnOrderButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          ReturnOrderButton(
            backGroundColor: Colors.white,
            textColor: Colors.black,
            title: 'Cancel',
          ),
          ReturnOrderButton(
              backGroundColor: Colors.pink,
              textColor: Colors.white,
              title: 'OK')
        ],
      ),
    );
  }
}
