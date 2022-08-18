import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pos/variables/colors.dart';

class OrderModel extends StatelessWidget {
  const OrderModel({
    Key? key,
    required this.POS,
    required this.order,
    required this.table,
    required this.time,
    required this.total,
    required this.index,
  }) : super(key: key);
  final String POS;
  final String table;
  final String time;
  final String order;
  final double total;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:
              index == 0 ? const Color(0xFF311F34) :const Color(0xFF493349),
        ),
        child: Row(
          children: [
            Column(
              children: [
                const Text(
                  'POS',
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(POS, style: TextStyle(color: Colors.white),),
              ],
            ),
             VerticalDivider(color: Colors.grey.withOpacity(0.2),),
            Column(
              children: [
                const Text('Table', style: TextStyle(color: Colors.white),),
                Spacer(),
                Text(table, style: TextStyle(color: Colors.white),),
              ],
            ),
             VerticalDivider(color: Colors.grey.withOpacity(0.2),),
            Column(
              children: [
                const Text('Order', style: TextStyle(color: Colors.white),),
                Spacer(),
                Text(order, style: TextStyle(color: Colors.white),),
              ],
            ),
             VerticalDivider(color: Colors.grey.withOpacity(0.2),),
            Column(
              children: [
                const Text('Time', style: TextStyle(color: Colors.white),),
                Spacer(),
                Text(time, style: TextStyle(color: Colors.white),),
              ],
            ),
             VerticalDivider(color: Colors.grey.withOpacity(0.2),),
            Spacer(),
            Column(
              children: [
                const Text('Total', style: TextStyle(color: Colors.white),),
                Spacer(),
                Text('$total', style: TextStyle(color: Colors.white),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
