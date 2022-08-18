import 'package:flutter/material.dart';
import 'package:pos/controllers/history_layout_controller.dart';
import 'package:pos/screens/history/widgets/historyleftside/widgets/tools_row_item.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ToolsRow extends StatelessWidget {
  const ToolsRow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              // width: 50.w-(24),
              decoration: BoxDecoration(
                  color: const Color(0xFF311F34),
                  borderRadius: BorderRadius.circular(15)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ToolsRowItem(
                      text: 'Synced',
                      selected: true,
                    ),
                    ToolsRowItem(
                      text: 'Paid',
                      selected: false,
                    ),
                    ToolsRowItem(
                      text: 'Pendding',
                      selected: false,
                    ),
                    ToolsRowItem(
                      text: 'Void',
                      selected: false,
                    ),
                    ToolsRowItem(
                      text: 'Rejected',
                      selected: false,
                    ),
                    ToolsRowItem(
                      text: 'Delete',
                      selected: false,
                    ),
                    ToolsRowItem(
                      text: 'All',
                      last: true,
                      selected: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: InkWell(
              onTap: () {
                Provider.of<HistoryLayoutController>(context, listen: false)
                    .toggleHistorySearch();
              },
              child: const Icon(
                Icons.display_settings,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
