import 'package:flutter/material.dart';
import 'package:pos/controllers/cash_control_controller.dart';
import 'package:provider/provider.dart';

class CashControlBackButton extends StatelessWidget {
  const CashControlBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CashControlController>(context, listen: false)
            .removingNum();
      },
      child: const SizedBox(
        height: 47,
        child: Icon(
          Icons.backspace_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
