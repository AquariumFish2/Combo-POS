import 'package:flutter/material.dart';
import 'package:pos/controllers/customer_controller.dart';
import 'package:pos/controllers/layout_controller.dart';
import 'package:pos/screens/customers/widgets/bottom_button.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NameAndMobileDialog extends StatelessWidget {
  NameAndMobileDialog({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  onSave(BuildContext context) {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        context.read<CustomerController>().nameAndMobileNextButton();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Form(
            key: _formKey,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0, top: 5.h),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter the mobile number',
                      hintStyle: const TextStyle(
                        color: Color(0xFFA3A2AC),
                        fontSize: 15,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFFA3A2AC),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: const Color(0xFFA3A2AC).withOpacity(.5),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFFA3A2AC),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(
                      color: Color(0xFFA3A2AC),
                      fontSize: 15,
                    ),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 4) {
                        context.read<LayoutController>().showToast(
                            text: 'Enter a valid mobile number',
                            type: ToastType.error);
                        return '';
                      }
                    },
                    onSaved: (value) {
                      context.read<CustomerController>().saveMobileNum(value!);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter the name',
                      hintStyle: const TextStyle(
                        color: Color(0xFFA3A2AC),
                        fontSize: 15,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFFA3A2AC),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: const Color(0xFFA3A2AC).withOpacity(.5),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xFFA3A2AC),
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.account_circle_rounded,
                        color: Color(0xFFA3A2AC),
                      ),
                    ),
                    style: const TextStyle(
                      color: Color(0xFFA3A2AC),
                      fontSize: 15,
                    ),
                    validator: (v) {
                      if (v!.isEmpty || v.length < 2) {
                        context.read<LayoutController>().showToast(
                            text: 'Enter a valid name', type: ToastType.error);
                        return '';
                      }
                    },
                    onSaved: (value) {
                      context.read<CustomerController>().saveName(value!);
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 5.h,
            child: BottomButton(
              text: 'Enter',
              fun: () => onSave(context),
            ),
          ),
        ],
      ),
    );
  }
}
