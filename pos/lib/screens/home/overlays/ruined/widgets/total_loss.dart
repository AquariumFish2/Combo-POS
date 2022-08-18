import 'package:flutter/material.dart';
import 'package:pos/variables/texts.dart';

class TotalLoss extends StatelessWidget {
  const TotalLoss({Key? key, required this.subTotal, required this.tax})
      : super(key: key);
  final int subTotal;
  final int tax;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: const Color(0xFFC8C8C8).withOpacity(0.06),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 19.0, top: 8, bottom: 8),
                child: Text(
                  'Subtotal',
                  style: TextStyles.whiteSmallDetailsStyle,
                ),
              ),
              const Spacer(),
              Padding(
              padding: const EdgeInsets.only(right:15.0),
                child: Text(
                  '$subTotal',
                  style: TextStyles.whiteSmallDetailsStyle,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 19.0, top: 8, bottom: 8),
              child: Text(
                'Tax',
                style: TextStyles.whiteSmallDetailsStyle,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right:15.0),
              child: Text(
                '$tax',
                style: TextStyles.whiteSmallDetailsStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
