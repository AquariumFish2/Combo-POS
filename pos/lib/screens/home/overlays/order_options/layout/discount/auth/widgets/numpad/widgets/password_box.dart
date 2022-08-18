import 'package:flutter/material.dart';
import 'package:pos/controllers/order_option_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PasswordBox extends StatelessWidget {
  const PasswordBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(
        child: FittedBox(
          fit: BoxFit.cover,
          child: context.watch<OrderOptionController>().userPassword.isNotEmpty
              ? Text(
                  context.watch<OrderOptionController>().userPassword,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Text(
                  '0000',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
