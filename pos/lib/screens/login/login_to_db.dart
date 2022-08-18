import 'package:flutter/material.dart';
import 'package:pos/screens/splash/splash.dart';
import 'package:provider/provider.dart';

import '../../controllers/login_to_db_controller.dart';
import '../../variables/colors.dart';

class LogInToDatabase extends StatelessWidget {
  const LogInToDatabase({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextEditingController urlTextController =
        TextEditingController(text: 'https://democ.combotech.cf/');
    final TextEditingController userNameController =
        TextEditingController(text: 'mobileapp');
    final TextEditingController passwordController =
        TextEditingController(text: 'mobileapp');
    bool saveButtonDisabled = false;

    return Scaffold(
        backgroundColor: CustomColors.darkPurple,
        body: Container(
          padding: const EdgeInsets.only(left: 0, top: 30, bottom: 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/check_out_background.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 36,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      'Digital Technologies',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 330,
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
                          topLeft: Radius.circular(36),
                          topRight: Radius.circular(36),
                        ),
                      ),
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 68, right: 48, left: 48),
                            child: AuthTextField(
                              controller: urlTextController,
                              label: "URL",
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 28, right: 48, left: 48),
                            child: SizedBox(
                                height: 36,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: SizedBox(
                                        height: 36,
                                        child: OutlinedButton(
                                          onPressed: () async {
                                            await context
                                                .read<
                                                    LoginToDatabaseController>()
                                                .getAllDatabases();
                                          },
                                          child: Text(
                                            'Save',
                                            style: TextStyle(
                                              color: saveButtonDisabled
                                                  ? CustomColors.darkGrey
                                                  : CustomColors.pink,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                            ),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              saveButtonDisabled
                                                  ? Colors.grey
                                                  : Colors.white,
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  8.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(flex: 2, child: Container())
                                  ],
                                )),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 42, left: 48, right: 48),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              iconDisabledColor: Colors.red,
                              hint: Builder(builder: (context) {
                                String? selectedDB = context
                                    .watch<LoginToDatabaseController>()
                                    .selectedDatabase;
                                return Text(
                                  selectedDB ?? "Select Database...",
                                  style: TextStyle(
                                      color: CustomColors.textFieldColor,
                                      fontWeight: FontWeight.w300),
                                );
                              }),
                              icon: const Padding(
                                  padding: EdgeInsets.only(bottom: 12),
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xffA3A2AC),
                                  )),
                              elevation: 0,
                              style: const TextStyle(color: Color(0xffA3A2AC)),
                              underline: Container(
                                height: 0.4,
                                color: const Color(0xffA3A2AC),
                              ),
                              onChanged: (newValue) {
                                context
                                    .read<LoginToDatabaseController>()
                                    .selectDatabase(newValue);
                              },
                              items: (context
                                          .watch<LoginToDatabaseController>()
                                          .databases ??
                                      [])
                                  .map<DropdownMenuItem<String>>(
                                      (dynamic value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 12.0),
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 50, right: 48, left: 48),
                            child: AuthTextField(
                              controller: userNameController,
                              label: "Enter Your Username",
                              icon: Icons.account_circle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 38, right: 48, left: 48),
                            child: AuthTextField(
                              controller: passwordController,
                              label: "Password",
                              icon: Icons.lock,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 90, right: 48, left: 48, bottom: 30),
                            child: SizedBox(
                                height: 50,
                                child: OutlinedButton(
                                  onPressed: () {
                                    context
                                        .read<LoginToDatabaseController>()
                                        .authenticateUser(
                                          context: context,
                                          username: userNameController.text,
                                          password: passwordController.text,
                                        );
                                    
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
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    Key? key,
    required this.label,
    this.icon,
    required this.controller,
  }) : super(key: key);
  final String label;
  final IconData? icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
        color: CustomColors.textFieldColor,
        fontSize: 15,
      ),
      decoration: InputDecoration(
        suffixIcon: icon != null
            ? Padding(
                padding: EdgeInsets.only(bottom: 12, top: 12),
                child: Icon(
                  icon,
                  size: 21,
                  color: CustomColors.textFieldColor,
                ),
              )
            : null,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: CustomColors.textFieldColor,
            width: 0.4,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: CustomColors.pink,
          ),
        ),
        labelText: label,
        floatingLabelStyle: TextStyle(color: CustomColors.pink, fontSize: 15),
        labelStyle: TextStyle(
          color: CustomColors.textFieldColor,
          fontWeight: FontWeight.w300,
          fontSize: 15,
        ),
      ),
    );
  }
}
