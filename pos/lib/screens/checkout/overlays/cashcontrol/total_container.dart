import 'package:flutter/material.dart';
import 'package:pos/controllers/cash_control_controller.dart';
import 'package:provider/provider.dart';

class TotalContainer extends StatelessWidget {
  const TotalContainer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 5),
        child: Center(
          child: Consumer<CashControlController>(
              builder: (context, cashControlController, _) {
            return Text(
              cashControlController.total,
              style: const TextStyle(
                fontSize: 44,
              ),
            );
          }),
        ),
      ),
    );
  }
}
