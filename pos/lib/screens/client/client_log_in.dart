import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pos/screens/home/home.dart';

import '../../variables/colors.dart';
import '../home/widgets/pay/widgets/pay_pad/widgets/num_pad.dart';
import '../home/widgets/pay/payment_screen.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imagesList = [
      "assets/images/pexels-photo-417473@2x.png",
      "assets/images/pexels-photo-988595@2x.png",
      "assets/images/pexels-photo-1576280@2x.png"
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.only(top: 36, left: 20),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/check_out_background.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 420,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Image.asset(
                            "assets/images/logo.png",
                            height: 30,
                          ),
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 28, bottom: 28, right: 48, left: 48),
                        decoration: BoxDecoration(
                            color: CustomColors.darkPurple,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pink.withOpacity(0.3),
                                  blurRadius: 4,
                                  spreadRadius: 0.5,
                                  offset: const Offset(4, -2)),
                            ],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(36),
                                topRight: Radius.circular(36))),
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView(
                                children: [
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  TextField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(bottom: 15),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color(0xffA3A2AC).withOpacity(.5),
                                        ),
                                      ),
                                      hintText: "Enter your mobile number",
                                      hintStyle: const TextStyle(
                                        color: Color(0xffA3A2AC),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    style: const TextStyle(
                                      color: Color(0xffA3A2AC),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 36,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      NumberButton(
                                        number: "1",
                                        small: true,
                                        callBack: () {},
                                        withBackGround: false,
                                      ),
                                      NumberButton(
                                          number: "2",
                                          small: true,
                                          callBack: () {},
                                          withBackGround: false),
                                      NumberButton(
                                          number: "3",
                                          small: true,
                                          callBack: () {},
                                          withBackGround: false),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 36,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      NumberButton(
                                        number: "4",
                                        small: true,
                                        callBack: () {},
                                        withBackGround: false,
                                      ),
                                      NumberButton(
                                          number: "5",
                                          small: true,
                                          callBack: () {},
                                          withBackGround: false),
                                      NumberButton(
                                          number: "6",
                                          small: true,
                                          callBack: () {},
                                          withBackGround: false),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 36,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      NumberButton(
                                        number: "7",
                                        small: true,
                                        callBack: () {},
                                        withBackGround: false,
                                      ),
                                      NumberButton(
                                          number: "8",
                                          small: true,
                                          callBack: () {},
                                          withBackGround: false),
                                      NumberButton(
                                          number: "9",
                                          small: true,
                                          callBack: () {},
                                          withBackGround: false),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 36,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      NumberButton(
                                        number: " ",
                                        callBack: () {},
                                        withBackGround: false,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8),
                                        child: NumberButton(
                                            number: "0",
                                            small: true,
                                            callBack: () {},
                                            withBackGround: false),
                                      ),
                                      InkWell(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30),
                                          child: Icon(
                                            Icons.backspace,
                                            size: 28,
                                            color: CustomColors.pink,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 36,
                                  ),
                                  SizedBox(
                                      width: 280,
                                      height: 50,
                                      child: OutlinedButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushAndRemoveUntil(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PaymentScreen()),
                                            (route) => false,
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
                                          side: BorderSide(
                                              color: CustomColors.pink),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 340,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    viewportFraction: 0.8,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 100),
                    autoPlay: false,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                  ),
                  items: imagesList
                      .map(
                        (item) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(item), fit: BoxFit.fitWidth),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
