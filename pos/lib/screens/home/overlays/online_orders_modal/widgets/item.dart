import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: Text("1"),
        ),
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Eggplant Kebab - Plate"),
              Text("كباب بالباذنجان - صحن"),
            ],
          ),
        ),
        const Expanded(
          flex: 2,
          child: Text(
            "120.00 SR",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          child: Container(),
          flex: 6,
        )
      ],
    );
  }
}
