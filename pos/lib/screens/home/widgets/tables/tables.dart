import 'package:flutter/material.dart';
import 'package:pos/controllers/floor_controller.dart';
import 'package:pos/screens/home/widgets/tables/widgets/rectangle_table.dart';
import 'package:pos/screens/home/widgets/tables/widgets/rounded_table.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/texts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../../variables/colors.dart';
import '../../../../controllers/home_controller.dart';

class TablesContainer extends StatelessWidget {
  const TablesContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: FutureBuilder(
          future: context.read<FloorController>().getAllFloors(),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                  backgroundColor: Colors.black38,
                ),
              );
            } else {
              print(context.read<FloorController>().floors);
              return Column(
                children: [
                  Container(
                    height: 60.h,
                    padding: EdgeInsets.only(left: 430, right: 100),
                    child: Stack(
                      children: [
                        ...context
                            .watch<FloorController>()
                            .currentFloorTables
                            .map((element) {
                          if (element.shape == 'square') {
                            return RectangleTable(
                              tableId: element,
                            );
                          } else {
                            return RoundedTable(
                              tableId: element,
                            );
                          }
                        }).toList(),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 430, right: 100, top: 15),
                    child: ElevatedButton(
                      onPressed: () =>
                          context.read<FloorController>().savingTable(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'save',
                            style: TextStyles.whiteButtonsStyle,
                          ),
                        ],
                      ),
                      style: ButtonStyles.semiSharpWhiteButton,
                    ),
                  )
                ],
              );
            }
          }),
    );
  }
}
