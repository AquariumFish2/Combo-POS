import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../controllers/home_controller.dart';

class RuinedButton extends StatelessWidget {
  const RuinedButton(
      {Key? key,
      required this.backGroundColor,
      required this.textColor,
      required this.title})
      : super(key: key);
  final String title;
  final Color backGroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backGroundColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      onPressed: () {
        context.read<HomeController>().toggleRuinedOverlay();
        context.read<HomeController>().toggleOrderOptionsPopup();
      },
      child: SizedBox(
        width: 17.w,
        height: 45,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
