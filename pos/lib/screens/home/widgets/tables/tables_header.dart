import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/data/database/floor.dart';
import 'package:pos/main.dart';
import 'package:pos/screens/home/home.dart';
import 'package:pos/screens/home/widgets/tables/widgets/floor_tab.dart';
import 'package:provider/provider.dart';

import '../../../../controllers/floor_controller.dart';
import '../../../../controllers/home_controller.dart';
import '../../../../variables/colors.dart';
import '../../overlays/online_orders_modal/widgets/data/status_tab.dart';
import '../../overlays/online_orders_modal/widgets/status_tabs.dart';

class TablesHeader extends StatelessWidget {
  const TablesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: context.read<FloorController>().getAllFloors(),
        builder: (context, snap) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF412941),
                            borderRadius: BorderRadius.circular(10)),
                        height: 45,
                        child: (snap.connectionState == ConnectionState.waiting)
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Center(
                                    child: Text(
                                      'getting data...',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            : ListView(
                                // shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                controller: ScrollController(),
                                children: [
                                    ...context
                                        .read<FloorController>()
                                        .floors
                                        .map(
                                          (e) => FloorTab(
                                            floor: e,
                                          ),
                                        )
                                        .toList(),
                                  ]),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      onTap: () => context
                          .read<FloorController>()
                          .closingWithoutSaving(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: const Text(
                          "Close",
                          style: TextStyle(fontSize: 16),
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 11,
                        width: 11,
                        decoration:
                            BoxDecoration(color: CustomColors.tabsGreyBG),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Available",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(color: CustomColors.pink),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Taken",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
