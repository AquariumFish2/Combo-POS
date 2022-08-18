import 'package:flutter/material.dart';
import 'package:pos/variables/colors.dart';

class Total extends StatelessWidget {
  const Total({
    Key? key,
    required this.total,
    this.isPopup = false,
  }) : super(key: key);

  final double total;
  final bool isPopup;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            child: Row(
              children: [
                Text(
                  "Bill Total",
                  style: TextStyle(
                    color: isPopup ? CustomColors.blackPurple : Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            total.toString() + " SR",
            style: TextStyle(
                color: isPopup ? CustomColors.blackPurple : Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "choose Pay Method",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isPopup ? CustomColors.blackPurple : Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
