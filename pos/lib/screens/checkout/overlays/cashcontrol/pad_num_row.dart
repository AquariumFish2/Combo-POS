import 'package:flutter/material.dart';
import 'package:pos/screens/checkout/overlays/cashcontrol/pad_num_button.dart';

class PadNumRow extends StatelessWidget {
  const PadNumRow({Key? key, required this.rowNums}) : super(key: key);
  final List<int> rowNums;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
      child: Row(
        children: List.generate(
          rowNums.length,
          (index) => Expanded(
            child: PadNumButton(
              num: rowNums[index],
            ),
          ),
        ),
      ),
    );
  }
}
