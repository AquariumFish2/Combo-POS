import 'package:flutter/material.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/extra.dart';
import 'package:provider/provider.dart';

class ExtraTile extends StatelessWidget {
  const ExtraTile({
    Key? key,
    required this.extra,
  }) : super(key: key);
  final Extra extra;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<OrderController>().toggleSelectionExtra(extra);
      },
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                width: 1,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: (extra.isSelected)
              ? MaterialStateProperty.all(
                  Colors.white,
                )
              : MaterialStateProperty.all(
                  Colors.white.withOpacity(0),
                )),
      child: Row(
        children: [
          Text(
            extra.name,
            style: TextStyle(
                color: (extra.isSelected ? Colors.black : Colors.white),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
          
          Spacer(),
          Text(
            'SR ${extra.price.toString()}',
            style: TextStyle(
                color: (extra.isSelected ? Colors.black : Colors.white),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 6,
          ),
          if (extra.isSelected)
            const Icon(
              Icons.cancel,
              size: 20,
              color: Colors.black,
            )
        ],
      ),
    );
  }
}
