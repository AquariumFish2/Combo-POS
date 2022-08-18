import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/controllers/checkout_controller.dart';
import 'package:pos/screens/checkout/widgets/right_half/widgets/session_report_tile.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../../variables/colors.dart';

class RightHalfOfCheckOut extends StatelessWidget {
  const RightHalfOfCheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CheckOutController>(
        builder: (context, checkOutController, _) {
      return Stack(
        children: [
          Positioned(
            bottom: 30,
            height: 80.h,
            width: 40.w - (68),
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: ListView(
                scrollDirection: Axis.vertical,
                controller: ScrollController(),
                shrinkWrap: true,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28, right: 28, top: 20),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'Operations',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Icon(
                          Icons.playlist_add_check,
                          color: Colors.white,
                          size: 24,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  SessionReportTile(
                    title: 'Link',
                    content:
                        context.read<CheckOutController>().currentSession !=
                                null
                            ? context
                                .read<CheckOutController>()
                                .currentSession!
                                .dbLink
                            : null,
                  ),
                  SessionReportTile(
                    title: 'POS',
                    content:
                        context.read<CheckOutController>().currentSession !=
                                null
                            ? context
                                .read<CheckOutController>()
                                .currentSession!
                                .posName
                            : null,
                  ),
                  SessionReportTile(
                    title: 'Session Open By',
                    content:
                        context.read<CheckOutController>().currentSession !=
                                null
                            ? context
                                .read<CheckOutController>()
                                .currentSession!
                                .sessionOpenedBy
                            : null,
                  ),
                  SessionReportTile(
                      title: 'Session Number',
                      content:
                          context.read<CheckOutController>().currentSession !=
                                  null
                              ? (context
                                          .read<CheckOutController>()
                                          .currentSession!
                                          .sessionNumber !=
                                      null)
                                  ? context
                                      .read<CheckOutController>()
                                      .currentSession!
                                      .sessionNumber
                                      .toString()
                                  : null
                              : null),
                  SessionReportTile(
                    title: 'Session Status',
                    content:
                        context.read<CheckOutController>().currentSession !=
                                null
                            ? context
                                .read<CheckOutController>()
                                .currentSession!
                                .sessionStatus
                            : null,
                  ),
                  SessionReportTile(
                    title: 'Working Date',
                    content:
                        context.read<CheckOutController>().currentSession !=
                                null
                            ? context
                                .read<CheckOutController>()
                                .currentSession!
                                .workingDate
                            : null,
                  ),
                  SessionReportTile(
                    title: 'Session Start Time',
                    content:
                        context.read<CheckOutController>().currentSession !=
                                null
                            ? context
                                .read<CheckOutController>()
                                .currentSession!
                                .sessionStartTime
                            : null,
                  ),
                  SessionReportTile(
                    title: 'Session End Time',
                    content:
                        context.read<CheckOutController>().currentSession !=
                                null
                            ? context
                                .read<CheckOutController>()
                                .currentSession!
                                .sessionEndTime
                            : null,
                  ),
                  SessionReportTile(
                    title: 'Starting Credit',
                    content:
                        context.read<CheckOutController>().currentSession !=
                                null
                            ? (context
                                        .read<CheckOutController>()
                                        .currentSession!
                                        .startingCredit !=
                                    null)
                                ? context
                                    .read<CheckOutController>()
                                    .currentSession!
                                    .startingCredit
                                    .toString()
                                : null
                            : null,
                  ),
                  SessionReportTile(
                    title: 'Ending Credit',
                    content:
                        context.read<CheckOutController>().currentSession !=
                                null
                            ? (context
                                        .read<CheckOutController>()
                                        .currentSession!
                                        .endingCredit !=
                                    null)
                                ? context
                                    .read<CheckOutController>()
                                    .currentSession!
                                    .endingCredit
                                    .toString()
                                : null
                            : null,
                  ),
                  SessionReportTile(
                    title: 'Version',
                    content:
                        context.read<CheckOutController>().currentSession !=
                                null
                            ? context
                                .read<CheckOutController>()
                                .currentSession!
                                .version
                            : null,
                  ),
                   SessionReportTile(
                    title: 'User Name',
                    content: context.read<CheckOutController>().currentSession !=
                                null
                            ? context
                                .read<CheckOutController>()
                                .currentSession!
                                .userName
                            : null,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              height: 40,
              width: 40.w - (68),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Print last session report',
                  style: TextStyle(color: CustomColors.pink),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: CustomColors.pink),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ))
        ],
      );
    });
  }
}
