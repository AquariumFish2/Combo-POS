import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../selling_points/selling_points_screen.dart';
import 'login_to_db.dart';

class EnterPinCode extends StatelessWidget {
  const EnterPinCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/chef.png'),
                  fit: BoxFit.fitHeight)),
          child: Stack(
            children: [
              Positioned(
                bottom: 50,
                left: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                      child: Image.asset('assets/images/logo-white.png'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Digital Technologies",
                      style: TextStyle(color: Colors.white, fontSize: 7),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInToDatabase(),
                        ),
                        (route) => false,
                      );
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Center(
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                    child: Container(
                      height: 468,
                      width: 630,
                      decoration: BoxDecoration(
                        color: HSLColor.fromColor(Colors.white)
                            .withHue(0.16)
                            .toColor()
                            .withOpacity(0.19),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70,
                                child:
                                    Image.asset('assets/images/logo-white.png'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Digital Technologies",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            'Enter your Pin Code',
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ClipRRect(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                              child: Container(
                                height: 60,
                                margin:
                                    const EdgeInsets.only(right: 60, left: 60),
                                decoration: BoxDecoration(
                                  color: HSLColor.fromColor(Colors.black)
                                      .withHue(0.4)
                                      .toColor()
                                      .withOpacity(0.2),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    PinCodeTextField(
                                      onChanged: (String value) {},
                                      length: 6,
                                      obscureText: true,
                                      textStyle:
                                          TextStyle(color: Color(0xffA3A2AC)),
                                      obscuringCharacter: '*',
                                      appContext: context,
                                      pinTheme: PinTheme(
                                          shape: PinCodeFieldShape.underline,
                                          fieldHeight: 40,
                                          fieldWidth: 24,
                                          activeFillColor: Colors.white,
                                          inactiveColor: Color(0xff828282)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 46,
                          ),
                          SizedBox(
                              height: 40,
                              width: 200,
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SellingPointsScreen()),
                                    (route) => false,
                                  );
                                },
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11),
                                ),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
