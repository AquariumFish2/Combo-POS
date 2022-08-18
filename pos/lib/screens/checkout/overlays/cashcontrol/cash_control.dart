import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/cash_control_controller.dart';
import 'package:pos/controllers/checkout_controller.dart';
import 'package:pos/screens/checkout/overlays/cashcontrol/pad_num_row.dart';
import 'package:pos/screens/checkout/overlays/cashcontrol/total_container.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'cash_control_notes_text_field.dart';
import 'cash_control_open_session_button.dart';
import 'cash_control_pad_last_row.dart';

class CashControl extends StatelessWidget {
  CashControl({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: GestureDetector(
              onTap: () =>
                  context.read<CheckOutController>().toggleCashController(),
              child: Container(
                width: 100.w,
                height: 100.h,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 35.w, vertical: 5.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black54,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      'OPENING CASH CONTROL',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  TotalContainer(),
                  SizedBox(
                      width: 230,
                      child: Text('Opening cash',
                          style: TextStyle(
                              color: Colors.white, height: 2, fontSize: 18))),
                  SizedBox(height: 10),
                  PadNumRow(rowNums: [1, 2, 3]),
                  PadNumRow(rowNums: [4, 5, 6]),
                  PadNumRow(rowNums: [7, 8, 9]),
                  CashControlPadLastRow(),
                  CashControlNotesTextField(),
                  OpenSessionButton(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
