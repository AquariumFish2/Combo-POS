import 'package:flutter/material.dart';
import 'package:pos/controllers/history_layout_controller.dart';
import 'package:pos/screens/history/overlays/historysearch/history_search.dart';
import 'package:pos/screens/history/overlays/order_return/order_return.dart';
import 'package:pos/screens/history/widgets/historyleftside/history_left_side.dart';
import 'package:pos/screens/history/widgets/header/history_screen_header.dart';
import 'package:pos/screens/history/widgets/underheader/history_under_header.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        body: Builder(builder: (context) {
          return Consumer<HistoryLayoutController>(
            builder: (context, printerScreenController, _) => Container(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  const HistoryScreenHeader(),
                  const UnderHeader(),
                  const HistoryLeftSide(),
                  if (printerScreenController.historySearch) HistorySearch(),
                  if (printerScreenController.returnOverlay)
                    const OrderReturnOverlay(),
                ],
              ),
            ),
          );
        }),
       );
  }
}
