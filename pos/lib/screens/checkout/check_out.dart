import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/controllers/cash_control_controller.dart';
import 'package:pos/controllers/checkout_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../variables/colors.dart';
import 'widgets/header/check_out_header.dart';
import 'widgets/left_half/left_half_of_check_out.dart';
import 'widgets/right_half/right_half_of_check_out.dart';
import 'overlays/cashcontrol/cash_control.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darkPurple,

      body: FutureBuilder(future: context.read<CheckOutController>().fetchData(context),
        builder: (context, snap) {
        
        return Consumer<CheckOutController>(builder: (context, controller, _) {
          return Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 68, top: 30, right: 68, bottom: 0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/check_out_background.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Column(
                  children: [
                    const CheckOutHeader(),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(
                            child: LeftHalfOfCheckOut(),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 0),
                              decoration: BoxDecoration(
                                  color:
                                      CustomColors.darkPurple.withOpacity(.55),
                                  shape: BoxShape.rectangle,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(36))),
                              child: const RightHalfOfCheckOut(),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              if (controller.showCashControl) CashControl()
            ],
          );
        });
      }),
    );
  }
}
