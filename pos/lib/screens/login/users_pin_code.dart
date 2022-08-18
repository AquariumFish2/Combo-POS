import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/controllers/layout_controller.dart';
import '../../controllers/users_pin_code_controller.dart';
import 'package:provider/provider.dart';

import '../../variables/colors.dart';
import '../checkout/widgets/header/check_out_header.dart';
import 'widgets/log_in_password_num_pad.dart';
import 'widgets/log_in_password_users_list.dart';

class PickUserPage extends StatelessWidget {
  const PickUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darkPurple,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/check_out_background.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 68,
                right: 46,
                top: 48,
              ),
              child: CheckOutHeader(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  right: 20,
                  left: 20,
                  bottom: 0,
                ),
                child: Row(
                  children: [
                    LogInPasswordUsersList(),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 330, child: const LogInPasswordNumPad()),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
