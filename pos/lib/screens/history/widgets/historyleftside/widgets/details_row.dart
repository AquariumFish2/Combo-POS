import 'package:flutter/material.dart';
import 'package:pos/screens/history/widgets/historyleftside/widgets/details_row_item.dart';
import 'package:pos/variables/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: CustomColors.lighterPurple),
      width: 50.w,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            DetailsRowItem(
              title: 'From',
              content: '27/10/2021',
            ),
            DetailsRowItem(
              title: 'To',
              content: '28/10/2021',
            ),
            DetailsRowItem(
              title: 'Shift',
              content: 'All',
            ),
          ],
        ),
      ),
    );
  }
}
