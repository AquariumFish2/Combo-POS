import 'package:flutter/material.dart';
import 'package:pos/screens/payment_processes/widgets/selectable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../variables/texts.dart';

class TileWithSelectables extends StatelessWidget {
  const TileWithSelectables(
      {Key? key, required this.selectables, required this.title})
      : super(key: key);
  final String title;
  final List<String> selectables;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF1B041B),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20.w,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 12, left: 20),
                child: Text(
                  title,
                  style: TextStyles.whiteDetailsStyle,
                ),
              ),
            ),
            Spacer(),
            ...List.generate(selectables.length,
                (index) => Selectable(text: selectables[index])),
          ],
        ),
      ),
    );
  }
}
