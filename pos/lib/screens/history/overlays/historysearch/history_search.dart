import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/history_layout_controller.dart';
import 'package:pos/screens/home/overlays/modals_triangle_pointer.dart';
import 'package:pos/screens/history/overlays/historysearch/widgets/search_button_row.dart';
import 'package:pos/screens/history/overlays/historysearch/widgets/search_text_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../variables/colors.dart';

class HistorySearch extends StatelessWidget {
  HistorySearch({Key? key}) : super(key: key);
  final List<String> historySearchCredi = [
    'Date',
    'Time',
    'Order #',
    'Order type',
    'Customer',
    'Payment method',
    'Cashier',
    'Shift Number',
    'Driver name',
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 37,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: 100.w,
                height: 100.h,
                color: Color(0xFF412941).withOpacity(0.5),
              ),
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: (50.w) - 45,
          child: InkWell(
            onTap: () {
              Provider.of<HistoryLayoutController>(context, listen: false)
                  .toggleHistorySearch();
            },
            child: const Icon(
              Icons.display_settings_rounded,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 130,
          left: (50.w) - 48,
          child: CustomPaint(
            painter: TrianglePainter(
              strokeColor: CustomColors.modalBG.withOpacity(.3),
              strokeWidth: 10,
              paintingStyle: PaintingStyle.fill,
            ),
            child: const SizedBox(
              height: 30,
              width: 34,
            ),
          ),
        ),
        Positioned(
          top: 160,
          left: 25.w,
          right: 25.w,
          child: Container(
            decoration: BoxDecoration(
              color: CustomColors.modalBG.withOpacity(.30),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 10),
                  child: Text(
                    'History Search',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            SearchTextFields(
                                firstTitle: historySearchCredi[0],
                                secondTitle: historySearchCredi[1]),
                            SearchTextFields(
                                firstTitle: historySearchCredi[2],
                                secondTitle: historySearchCredi[3]),
                            SearchTextFields(
                                firstTitle: historySearchCredi[4],
                                secondTitle: historySearchCredi[5]),
                            SearchTextFields(
                                firstTitle: historySearchCredi[6],
                                secondTitle: historySearchCredi[7]),
                            SearchTextFields(
                              firstTitle: historySearchCredi[8],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SearchButtonRow(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
