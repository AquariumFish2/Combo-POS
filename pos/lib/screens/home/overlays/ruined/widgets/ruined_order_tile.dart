import 'package:flutter/material.dart';
import 'package:pos/variables/texts.dart';

class RuinedOrderTile extends StatelessWidget {
  const RuinedOrderTile(
      {Key? key,
      required this.quanitity,
      required this.name,
      required this.price})
      : super(key: key);
  final int quanitity;
  final String name;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15, bottom: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right:12.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white,width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  '$quanitity',
                  style: TextStyles.whiteSmallDetailsStyle,
                ),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyles.whiteSmallDetailsStyle,
          ),
          const Spacer(),
          Text(
            '$price',
            style: TextStyles.whiteSmallDetailsStyle,
          ),
        ],
      ),
    );
  }
}
