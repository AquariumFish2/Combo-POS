import 'package:flutter/material.dart';
import 'package:pos/screens/home/overlays/ruined/widgets/ruined_button.dart';

class RuinedButtonRow extends StatelessWidget {
  const RuinedButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          RuinedButton(
            backGroundColor: Colors.white,
            textColor: Colors.black,
            title: 'Cancel',
            
          ),
          RuinedButton(
              backGroundColor: Colors.pink,
              textColor: Colors.white,
              title: 'OK')
        ],
      ),
    );
  }
}
