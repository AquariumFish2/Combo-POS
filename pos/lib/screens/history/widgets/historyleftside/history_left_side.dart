import 'package:flutter/material.dart';
import 'package:pos/screens/history/widgets/historyleftside/widgets/details_row.dart';
import 'package:pos/screens/history/widgets/historyleftside/widgets/order_model.dart';
import 'package:pos/variables/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'widgets/tools_row.dart';

class HistoryLeftSide extends StatelessWidget {
  const HistoryLeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 75,
      left: 0,
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xFF412941),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        width: 50.w,
        height: 100.h,
        child: Column(
          children: [
            const ToolsRow(),
            const DetailsRow(),
            const Padding(
              padding: EdgeInsets.only(
                top: 19.0,
              ),
              child: Center(
                child: Text(
                  'Orders 7',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: ((context, index) => OrderModel(
                      index: index,
                      order: '7',
                      POS: 'POS1',
                      table: '-',
                      time: '05:35',
                      total: 0,
                    )),
                shrinkWrap: true,
                itemCount: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
