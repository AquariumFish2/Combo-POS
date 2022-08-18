import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReturnOrderButton extends StatelessWidget {
  const ReturnOrderButton(
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
      onPressed: () {},
      child: SizedBox(
        width: 20.w,
        height: 55,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
