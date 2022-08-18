import 'package:flutter/material.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/texts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Selectable extends StatelessWidget {
  const Selectable({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8.0),
        child: ElevatedButton(
          
          style: ButtonStyles.semiSharpWhiteButton..padding,
          onPressed: () {},
          child: SizedBox(
            width: 10.w,
            height: 3.h,
            child: FittedBox(
              child: Text(
                text,
                style: TextStyles.whiteButtonsStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
