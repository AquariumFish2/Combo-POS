import 'package:flutter/material.dart';
import 'package:pos/data/database/line.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderListTile extends StatelessWidget {
  const OrderListTile({Key? key, required this.line, required this.split})
      : super(key: key);
  final Line line;
  final Function? split;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell(
        onTap: () => split!(),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '${line.qty} X',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: SizedBox(
                    height: 22,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.contain ,
                      child: Text(
                        line.fullProductName!,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
