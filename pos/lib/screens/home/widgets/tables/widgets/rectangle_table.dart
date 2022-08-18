import 'package:flutter/material.dart';
import 'package:pos/controllers/floor_controller.dart';
import 'package:pos/data/database/floor.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';

class RectangleTable extends StatelessWidget {
  RectangleTable({
    Key? key,
    required this.tableId,
  }) : super(key: key);
  final TableId tableId;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: tableId.positionV,
      left: tableId.positionH,
      child: InkWell(
        onTap: () => context.read<FloorController>().chosingTable(tableId),
        child: Container(
          height: tableId.height,
          width: tableId.width,
          decoration: BoxDecoration(
            color: tableId.locked!
                ? CustomColors.pink
                : tableId.locked!
                    ? CustomColors.pink
                    : (context.watch<FloorController>().chosenTable != null)
                        ? (context
                                    .watch<FloorController>()
                                    .chosenTable!
                                    .odooId ==
                                tableId.odooId)
                            ? Colors.green
                            : CustomColors.tabsGreyBG
                        : CustomColors.tabsGreyBG,
          ),
          child: Center(
            child: FittedBox(
              child: Text(
                tableId.name!,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
