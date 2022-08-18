import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/controllers/checkout_controller.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/side_menu_controller.dart';
import 'package:pos/controllers/users_pin_code_controller.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../home/home.dart';
import '../../../../variables/colors.dart';

class LeftHalfOfCheckOut extends StatelessWidget {
  const LeftHalfOfCheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: context.read<CheckOutController>().checkSharedPref(context),
        builder: (context, snapshot) {
          return Consumer<CheckOutController>(
              builder: (context, controller, _) {
            return ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    Container(
                      height: 33.h,
                      width: 260,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.pinkBorder),
                    ),
                    Container(
                      height: 30.h,
                      width: 220,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.pinkBorder),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 48),
                      height: 27.h,
                      width: 180,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff8d0e3c).withOpacity(0.5),
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                          )
                        ],
                        shape: BoxShape.circle,
                        color: CustomColors.pink,
                        image: const DecorationImage(
                          image: AssetImage("assets/images/photo.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context
                                  .read<UsersPinCodeController>()
                                  .selectedUser!
                                  .name!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              context
                                  .read<UsersPinCodeController>()
                                  .selectedUser!
                                  .posUserType!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w100),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.info,
                        size: 24,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat('dd MMM yy').format(DateTime.now()),
                        style: const TextStyle(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        'Access',
                        style: TextStyle(color: CustomColors.pink),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  if (!controller.sessionOpened)
                    SizedBox(
                      height: 8.h,
                      child: TextButton(
                        onPressed: () {
                          context
                              .read<HomeController>()
                              .changeSelectedMenuItem(MenuItems.board);
                          context
                              .read<CheckOutController>()
                              .toggleCashController(type: FunTypes.start);
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Start session',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          backgroundColor: MaterialStateProperty.all(
                            CustomColors.pink,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (controller.sessionOpened)
                    SizedBox(
                      height: 8.h,
                      child: TextButton(
                        onPressed: () {
                          context
                              .read<HomeController>()
                              .changeSelectedMenuItem(MenuItems.board);
                          context
                              .read<CheckOutController>()
                              .toggleCashController(type: FunTypes.end);
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'End session',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          backgroundColor: MaterialStateProperty.all(
                            CustomColors.pink,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (controller.sessionOpened)
                    const SizedBox(
                      height: 16,
                    ),
                  if (controller.sessionOpened)
                    SizedBox(
                      height: 8.h,
                      child: TextButton(
                        onPressed: () {
                          context
                              .read<HomeController>()
                              .changeSelectedMenuItem(MenuItems.board);
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                              (route) => false);
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Resume session',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          backgroundColor: MaterialStateProperty.all(
                            CustomColors.checkoutResumeSession,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 8.h,
                    child: TextButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Close Window',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      style: ButtonStyle(
                        alignment: Alignment.centerLeft,
                        backgroundColor: MaterialStateProperty.all(
                          CustomColors.checkoutCloseWindow,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 8.h,
                    child: TextButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Open Drawer',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      style: ButtonStyle(
                        alignment: Alignment.centerLeft,
                        backgroundColor: MaterialStateProperty.all(
                          CustomColors.checkoutOPenDrawer,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ]);
          });
        });
  }
}
