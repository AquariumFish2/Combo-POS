import 'package:flutter/material.dart';
import 'package:pos/data/database/line.dart';

class ProductLine extends StatelessWidget {
  ProductLine({Key? key, required this.line}) : super(key: key);
  Line line;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            shape: BoxShape.circle,
          ),
          margin: EdgeInsets.only(right: 20),
          constraints: const BoxConstraints(minHeight: 30, minWidth: 30),
          child: Center(
            child: Text(
              line.qty!,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            line.fullProductName!,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        Text(
          "${((double.parse(line.priceUnit!) * 100).ceilToDouble()) / 100}",
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
