import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../controllers/users_pin_code_controller.dart';
import '../../home/home.dart';
import '../../home/widgets/pay/widgets/pay_pad/widgets/num_pad.dart';
import '../../../variables/colors.dart';
import 'package:provider/provider.dart';

class LogInPasswordNumPad extends StatelessWidget {
  const LogInPasswordNumPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
          color: CustomColors.darkPurple,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff8d0e3c).withOpacity(0.2),
              blurRadius: 17.0, // soften the shadow
              spreadRadius: 1.0,
            ),
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(36), topRight: Radius.circular(36))),
      child: Center(
        child: Stack(
          children: [
            ListView(
              controller: ScrollController(),
              children: [
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  readOnly: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 15),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    hintText:
                        context.watch<UsersPinCodeController>().hintStars(),
                    hintStyle: TextStyle(
                      color: context
                              .watch<UsersPinCodeController>()
                              .pinCode
                              .isEmpty
                          ? CustomColors.textFieldColor
                          : CustomColors.pink,
                      fontSize: 45,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  style: const TextStyle(
                    color: Color(0xffA3A2AC),
                    fontSize: 45,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: NumberButton(
                        number: "1",
                        small: true,
                        callBack: () {
                          context
                              .read<UsersPinCodeController>()
                              .addNumberToPinCode('1');
                        },
                        withBackGround: false,
                      ),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: "2",
                          small: true,
                          callBack: () {
                            context
                                .read<UsersPinCodeController>()
                                .addNumberToPinCode('2');
                          },
                          withBackGround: false),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: "3",
                          small: true,
                          callBack: () {
                            context
                                .read<UsersPinCodeController>()
                                .addNumberToPinCode('3');
                          },
                          withBackGround: false),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: NumberButton(
                        number: "4",
                        small: true,
                        callBack: () {
                          context
                              .read<UsersPinCodeController>()
                              .addNumberToPinCode('4');
                        },
                        withBackGround: false,
                      ),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: "5",
                          small: true,
                          callBack: () {
                            context
                                .read<UsersPinCodeController>()
                                .addNumberToPinCode('5');
                          },
                          withBackGround: false),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: "6",
                          small: true,
                          callBack: () {
                            context
                                .read<UsersPinCodeController>()
                                .addNumberToPinCode('6');
                          },
                          withBackGround: false),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: NumberButton(
                        number: "7",
                        small: true,
                        callBack: () {
                          context
                              .read<UsersPinCodeController>()
                              .addNumberToPinCode('7');
                        },
                        withBackGround: false,
                      ),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: "8",
                          small: true,
                          callBack: () {
                            context
                                .read<UsersPinCodeController>()
                                .addNumberToPinCode('8');
                          },
                          withBackGround: false),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: "9",
                          small: true,
                          callBack: () {
                            context
                                .read<UsersPinCodeController>()
                                .addNumberToPinCode('9');
                          },
                          withBackGround: false),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: NumberButton(
                        number: " ",
                        callBack: () {},
                        withBackGround: false,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: NumberButton(
                            number: "0",
                            small: true,
                            callBack: () {
                              context
                                  .read<UsersPinCodeController>()
                                  .addNumberToPinCode('0');
                            },
                            withBackGround: false),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          context
                              .read<UsersPinCodeController>()
                              .deleteLastNumberFromPinCode();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Icon(
                            Icons.backspace,
                            size: 28,
                            color: CustomColors.pink,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                  width: 280,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      context
                          .read<UsersPinCodeController>()
                          .authenticate(context);
                    },
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                          color: CustomColors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: CustomColors.pink),
                      backgroundColor: CustomColors.darkPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
