import 'package:flutter/material.dart';
import 'package:pos/controllers/cash_control_controller.dart';
import 'package:pos/controllers/checkout_controller.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:provider/provider.dart';

class OpenSessionButton extends StatelessWidget {
  const OpenSessionButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 40.0),
        child: Text(
          'Open session',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
      onPressed: () async {
        await Provider.of<CashControlController>(context, listen: false)
            .savingTotal(context);
      },
    );
  }
}
