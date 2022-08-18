import 'package:flutter/material.dart';
import 'package:pos/controllers/history_layout_controller.dart';
import 'package:pos/screens/home/home.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import './widgets/under_header_button.dart';
import 'package:provider/provider.dart';

class UnderHeader extends StatelessWidget {
  const UnderHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 37,
      width: 100.w,
      height: 121,
      child: Container(
        width: 100.w,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.black),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 19),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => Home()),
                        (route) => false),
                    child: const Text(
                      'back',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Orders',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(children: [
              Expanded(
                child: Container(),
              ),
              Expanded(
                  child: Row(
                children: [
                  UnderHeaderButton(
                    icon: Icons.print,
                    onTap: () {},
                    text: 'Print',
                  ),
                  UnderHeaderButton(
                    icon: Icons.refresh,
                    onTap: () {
                      context
                          .read<HistoryLayoutController>()
                          .toggleReturnOverlay();
                    },
                    text: 'Return',
                  ),
                  UnderHeaderButton(
                    icon: Icons.autorenew,
                    onTap: () {},
                    text: 'force sync',
                  ),
                ],
              ))
            ])
          ],
        ),
      ),
    );
  }
}
