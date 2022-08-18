import 'package:flutter/material.dart';
import 'package:pos/controllers/payment_num_pad_controller.dart';
import 'package:pos/data/database/payment_method.dart';
import 'package:pos/main.dart';
import 'package:pos/screens/home/widgets/pay/widgets/header/widgets/payment_method_card.dart';
import '../../../../../../controllers/home_controller.dart';
import '../../../../../../variables/colors.dart';

import 'package:provider/provider.dart';

class PayHeader extends StatelessWidget {
  final bool isPopup;
  const PayHeader({Key? key, this.isPopup = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(vertical: 35),
      decoration: BoxDecoration(
        // color: isPopup ? Colors.transparent : Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: InkWell(
        onTap: () {
          context.read<HomeController>().togglePaymentSummary();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.5),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...staticStore
                    .box<PaymentMethod>()
                    .getAll()
                    .map((e) => PaymentMethodCard(paymentMethod: e))
                    .toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
