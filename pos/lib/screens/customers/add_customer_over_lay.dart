import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/controllers/customer_controller.dart';
import 'package:pos/screens/customers/widgets/code_and_username.dart';
import 'package:pos/screens/customers/widgets/customer_num_pad.dart';
import 'package:pos/screens/customers/widgets/name_and_mobile.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../home/widgets/pay/widgets/pay_pad/widgets/num_pad.dart';
import '../../variables/colors.dart';

class AddCustomerOverLay extends StatelessWidget {
  const AddCustomerOverLay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomerController>(
        builder: (context, customerController, _) {
      print(100.w);
      return Stack(
        children: [
          Positioned.fill(
            child: InkWell(
              onTap:()=> (context)
                  .read<CustomerController>()
                  .toggleAddCustomerOverLay(),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(36),
                  topLeft: Radius.circular(36),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.35),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(36),
                            topRight: Radius.circular(36))),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 35,
            left: 20,
            width: 20.w,
            child: OutlinedButton(
              onPressed: () {
                context.read<CustomerController>().toggleAddCustomerOverLay();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Text(
                        'Add customer',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                ),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xff585456)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
            ),
          ),
          Positioned(
            height: 100.h,
            width: 33.w,
            left: 33.w,
            child: Padding(
              padding: EdgeInsets.only(top: 56),
              child: Container(
                padding: const EdgeInsets.only(
                    top: 28, bottom: 28, right: 48, left: 48),
                decoration: BoxDecoration(
                    color: CustomColors.darkPurple,
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.3),
                        blurRadius: 3,
                        spreadRadius: 0.6,
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(36),
                        topRight: Radius.circular(36))),
                child: Column(
                  children: [
                    if (customerController.addNameAndMobile)
                      NameAndMobileDialog(),
                    if (customerController.showNumPad) const CustomerNumPad(),
                    if (customerController.addCodeAndUserName)
                      CodeAndUserNameDialog(),
                  ],
                ),
              ),
            ),
          )
        ],
      );
    });
  }
}
