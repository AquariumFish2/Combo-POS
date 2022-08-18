import 'package:flutter/material.dart';
import 'package:pos/controllers/cash_control_controller.dart';
import 'package:pos/controllers/checkout_controller.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:provider/provider.dart';

import 'cash_control.dart';

class CashControlBox extends StatelessWidget {
  const CashControlBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return (!Provider.of<CashControlController>(context).show)
          ? Center(
              child: InkWell(
                onTap: () {
                  Provider.of<CheckOutController>(context, listen: false)
                      .toggleCashController();
                },
                child: Container(
                  color: Colors.white,
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Text(
                      Provider.of<CashControlController>(context).savedTotal,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          : CashControl();
    });
  }
}
