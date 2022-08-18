import 'package:flutter/material.dart';

class SubtotalRow extends StatelessWidget {
  const SubtotalRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(minWidth: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [Text("Subtotal"), Text("المجموع")],
          ),
        ),
        const Text(
          "88.00",
          style: TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}