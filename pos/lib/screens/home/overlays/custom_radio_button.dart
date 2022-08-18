import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final text;

  const CustomRadioButton({Key? key, this.text = 'Add Mayo'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.white),
            color: Colors.pink),
      ),
      const SizedBox(
        width: 4,
      ),
      Flexible(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style:const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      )
    ]);
  }
}
