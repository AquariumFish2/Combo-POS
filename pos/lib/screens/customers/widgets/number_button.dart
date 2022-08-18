import 'package:flutter/material.dart';

import '../../../variables/colors.dart';

class NumberButton extends StatelessWidget {
  final String number;
  final bool small;
  final bool doubleWidth;
  final withBackGround;
  final Function callBack;

  const NumberButton({
    Key? key,
    required this.number,
    required this.callBack,
    this.small = false,
    this.doubleWidth = false,
    this.withBackGround = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callBack(),
      child: Container(
        height: 65,
        width: doubleWidth ? 134 : 65,
        child: Center(
          child: Text(
            number,
            style: TextStyle(
              fontSize: small ? 30 : 40,
              color: withBackGround
                  ? CustomColors.blackPurple
                  : CustomColors.lighterPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: withBackGround ? Colors.white : Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
    );
  }
}
