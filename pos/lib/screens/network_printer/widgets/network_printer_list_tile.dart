import 'package:flutter/material.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/texts.dart';

class NetworkPrinterListTile extends StatelessWidget {
  NetworkPrinterListTile({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      height: 45,
      decoration: const BoxDecoration(
        color: Color(0xFF1B041B),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 5),
        child: Row(
          children: [
            Expanded(
              flex: 20,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  title,
                  style: TextStyles.whiteDetailsStyle,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 12,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () {},
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Test Print',
                    style: TextStyles.whiteSmallDetailsStyle,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 10,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () {},
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Test Connection',
                    style: TextStyles.whiteButtonsStyle,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35.0, right: 5),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
