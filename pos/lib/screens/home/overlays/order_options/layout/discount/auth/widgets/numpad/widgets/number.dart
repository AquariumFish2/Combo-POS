import 'package:flutter/material.dart';
import 'package:pos/controllers/order_option_controller.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({Key? key, required this.number}) : super(key: key);
  final int number;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: .025 * (100.w + 100.h),
        child: InkWell(
          onTap: (() =>
              context.read<OrderOptionController>().addNumToUserPassword(
                    number.toString(),
                  )),
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            color: const Color(0xff514a4f),
            child: SizedBox(
              child: Center(
                child: Text(
                  number.toString(),
                  style: const TextStyle(fontSize: 25, color: Colors.white70),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
