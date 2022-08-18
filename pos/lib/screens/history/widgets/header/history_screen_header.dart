import 'package:flutter/material.dart';
import 'package:pos/screens/home/home.dart';
import 'package:provider/provider.dart';
import '../../../../controllers/home_controller.dart';
import '../../../../variables/colors.dart';

class HistoryScreenHeader extends StatelessWidget {
  const HistoryScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        height: 60,
        padding: const EdgeInsets.only(bottom: 33.12),
        decoration: BoxDecoration(
          color: CustomColors.pink,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 19,
                top: 10,
              ),
              child: GestureDetector(
                  onTap: () {
                    context
                        .read<HomeController>()
                        .changeSelectedMenuItem(MenuItems.board);

                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => Home()),
                        (route) => false);
                  },
                  child: Image.asset('assets/images/logo.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 39.0, top: 10),
              child: Row(
                children: const [
                  Text(
                    'History',
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Icon(
                      Icons.history,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
