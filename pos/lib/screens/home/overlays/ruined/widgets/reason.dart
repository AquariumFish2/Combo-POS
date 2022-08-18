import 'package:flutter/material.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/texts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Reason extends StatelessWidget {
  const Reason({Key? key, required this.reasonTitle}) : super(key: key);
  final String reasonTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        style: ButtonStyles.semiSharpWhiteButton,
        onPressed: () {},
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 5.w,
                  height: 20,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.contain,
                    child: Text(
                      reasonTitle,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            InkWell(
              child: Padding(
                padding: EdgeInsets.all(.5.w),
                child: Container(
                  color: Colors.pink,
                  child: Padding(
                    padding: EdgeInsets.all(.25.w),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
