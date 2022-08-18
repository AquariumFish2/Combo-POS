import 'package:flutter/material.dart';
import 'package:pos/data/database/customer.dart';
import 'package:pos/screens/customers/widgets/bottom_button.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controllers/customer_controller.dart';

class CodeAndUserNameDialog extends StatelessWidget {
  CodeAndUserNameDialog({Key? key}) : super(key: key);
  TextEditingController userName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () => context.read<CustomerController>().numPadTextTap(),
                child: Column(
                  children: [
                    Text(
                      context.read<CustomerController>().code,
                      style: const TextStyle(
                        color: Color(0xffA3A2AC),
                        fontSize: 31,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: 1.2,
                            color: Color(0xFFA3A2AC),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: userName,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(bottom: 15),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xffA3A2AC).withOpacity(.5),
                    ),
                  ),
                  hintText: 'Enter your username',
                  suffixIcon: Icon(
                    Icons.account_circle,
                    color: Color(0xFFA3A2AC),
                  ),
                  hintStyle: const TextStyle(
                    color: Color(0xffA3A2AC),
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                style: const TextStyle(
                  color: Color(0xffA3A2AC),
                  fontSize: 31,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
          Positioned(
            bottom: 5.h,
            child: BottomButton(
              text: 'Enter',
              fun: () => context
                  .read<CustomerController>()
                  .codeAndUserNameButton(userName.text, context),
            ),
          )
        ],
      ),
    );
  }
}
