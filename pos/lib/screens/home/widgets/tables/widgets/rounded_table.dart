import 'package:flutter/material.dart';
import 'package:pos/controllers/floor_controller.dart';
import 'package:pos/data/database/floor.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';

class RoundedTable extends StatelessWidget {
  RoundedTable({
    Key? key,
    required this.tableId,
  }) : super(key: key);
  TableId tableId;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: tableId.positionV,
      left: tableId.positionH,
      child: Column(
        children: [
          InkWell(
            onTap: (tableId.locked!)
                ? null
                : () => context.read<FloorController>().chosingTable(tableId),
            child: Container(
              height: tableId.height,
              width: tableId.width,
              decoration: BoxDecoration(
                color: tableId.locked!
                    ? CustomColors.pink
                    : (context.watch<FloorController>().chosenTable != null)
                        ? (context.watch<FloorController>().chosenTable!.odooId ==
                                tableId.odooId)
                            ? Colors.green
                            : CustomColors.tabsGreyBG
                        : CustomColors.tabsGreyBG,
                shape: BoxShape.circle,
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
          if (tableId.locked!) const SizedBox(height: 15),
          if (tableId.locked!)
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(tableId.name!,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700)),
            ),
          if (tableId.locked!)
            const SizedBox(
              height: 10,
            ),
          if (tableId.locked!)
            const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Order No.",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          if (tableId.locked!)
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '${tableId.odooId}',
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
        ],
      ),
    );
  }
}
