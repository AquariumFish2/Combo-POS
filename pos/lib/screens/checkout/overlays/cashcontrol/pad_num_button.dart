import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:pos/controllers/cash_control_controller.dart';
import 'package:provider/provider.dart';

class PadNumButton extends StatelessWidget {
  const PadNumButton({Key? key, required this.num}) : super(key: key);
  final int num;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CashControlController>(context, listen: false)
            .addingNum(num);
        print(Provider.of<CashControlController>(context, listen: false).total);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 4),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(5)),
          height: 46,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              '$num',
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
          ),
        ),
      ),
    );
  }
}
