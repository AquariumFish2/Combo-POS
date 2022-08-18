import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsRowItem extends StatelessWidget {
  const DetailsRowItem({Key? key, required this.title, required this.content})
      : super(key: key);
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: 14.w,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:8.0),
        child: Row(
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                '$title:',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Flexible(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  content,
                  style: TextStyle(color: Color(0xFFF62661)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
