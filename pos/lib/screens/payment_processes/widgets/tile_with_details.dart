import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../variables/texts.dart';

class TileWithDetails extends StatelessWidget {
  const TileWithDetails({Key? key, required this.details, required this.title})
      : super(key: key);
  final String title;
  final String details;
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
            const Spacer(),
            Expanded(
              flex: 20,
              child: SizedBox(
                height: 7.h,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 12, right: 20),
                  child: FittedBox(
                    alignment: Alignment.centerRight,
                    fit: BoxFit.contain,
                    child: Text(
                      details,
                      style: TextStyles.whiteDetailsStyle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
