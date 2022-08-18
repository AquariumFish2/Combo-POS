import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../variables/colors.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.text, required this.fun})
      : super(key: key);
  final String text;
  final void Function() fun;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 33.w - (48 + 48),
        height: 8.h,
        child: OutlinedButton(
          onPressed: fun,
          child: Text(
            text,
            style: TextStyle(
                color: CustomColors.pink,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
          style: OutlinedButton.styleFrom(
            backgroundColor: CustomColors.darkPurple,
            side: BorderSide(color: CustomColors.pink),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
          ),
        ));
  }
}
