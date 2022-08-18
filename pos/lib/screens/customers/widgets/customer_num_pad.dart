import 'package:flutter/material.dart';
import 'package:pos/controllers/customer_controller.dart';
import 'package:pos/screens/customers/widgets/bottom_button.dart';
import 'package:pos/screens/customers/widgets/number_button.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../variables/colors.dart';

class CustomerNumPad extends StatelessWidget {
  const CustomerNumPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SizedBox(
            height: 70.h,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 60,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  readOnly: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 15),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xffA3A2AC).withOpacity(.5),
                      ),
                    ),
                    hintText:
                        (context.watch<CustomerController>().code.isNotEmpty)
                            ? context.watch<CustomerController>().code
                            : 'add numbers',
                    hintStyle: const TextStyle(
                      color: Color(0xffA3A2AC),
                      fontSize: 31,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  style: const TextStyle(
                    color: Color(0xffA3A2AC),
                    fontSize: 31,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: NumberButton(
                        number: "1",
                        small: true,
                        callBack: () => context
                            .read<CustomerController>()
                            .addCodeValue('1'),
                        withBackGround: false,
                      ),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: "2",
                          small: true,
                          callBack: () => context
                              .read<CustomerController>()
                              .addCodeValue('2'),
                          withBackGround: false),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: '3',
                          small: true,
                          callBack: () => context
                              .read<CustomerController>()
                              .addCodeValue('3'),
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
                        number: '4',
                        small: true,
                        callBack: () => context
                            .read<CustomerController>()
                            .addCodeValue('4'),
                        withBackGround: false,
                      ),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: '5',
                          small: true,
                          callBack: () => context
                              .read<CustomerController>()
                              .addCodeValue('5'),
                          withBackGround: false),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: '6',
                          small: true,
                          callBack: () => context
                              .read<CustomerController>()
                              .addCodeValue('6'),
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
                        number: '7',
                        small: true,
                        callBack: () => context
                            .read<CustomerController>()
                            .addCodeValue('6'),
                        withBackGround: false,
                      ),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: '8',
                          small: true,
                          callBack: () => context
                              .read<CustomerController>()
                              .addCodeValue('8'),
                          withBackGround: false),
                    ),
                    Expanded(
                      child: NumberButton(
                          number: '9',
                          small: true,
                          callBack: () => context
                              .read<CustomerController>()
                              .addCodeValue('9'),
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
                      child: NumberButton(
                          number: "0",
                          small: true,
                          callBack: () => context
                              .read<CustomerController>()
                              .addCodeValue('0'),
                          withBackGround: false),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => context
                            .read<CustomerController>()
                            .deleteLastDigit(),
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
              ],
            ),
          ),
          Positioned(
            bottom: 5.h,
            child: BottomButton(
              text: 'Enter',
              fun: () =>
                  context.read<CustomerController>().NumPadButton(context),
            ),
          ),
        ],
      ),
    );
  }
}
