import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/customer_controller.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/screens/home/overlays/customer_overLay/overlay/widgets/paynow_box.dart';
import 'package:pos/screens/home/overlays/customer_overLay/overlay/widgets/paynow_num_pad.dart';
import 'package:pos/screens/home/overlays/customer_overLay/overlay/widgets/paynow_pay_button.dart';
import 'package:provider/provider.dart';

class WalletPayOverLay extends StatelessWidget {
  const WalletPayOverLay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: InkWell(
          onTap: () {
            context.read<HomeController>().togglePayWithWallet();
            context.read<HomeController>().toggleCustomerOverLay();
          },
        )),
        Positioned(
          left: 130,
          top: 153,
          width: 321,
          height: 440,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:30.0),
                  child: Column(
                    children: const[
                      PayNowBox(),
                      PayNowNumPad(),
                      PayNowPayButton(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
