import 'package:flutter/material.dart';
import 'package:pos/variables/texts.dart';

import '../../../variables/buttons.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Padding(
          padding:const EdgeInsets.only(top: 10, bottom: 12, left: 20),
          child: Text(
            'My Session',
            style: TextStyles.whiteDetailsStyle,
          ),
        ),
        const Spacer(),
        ElevatedButton(
          style: ButtonStyles.circularWhiteButton,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              children: const [
                Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
                Text(
                  'EDIT',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
