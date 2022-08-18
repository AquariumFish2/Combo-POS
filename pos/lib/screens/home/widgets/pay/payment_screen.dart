import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/screens/home/home.dart';
import 'package:provider/provider.dart';
import '../../../../controllers/home_controller.dart';
import '../body/widgets/side_panel.dart';
import 'payment_side_pannel.dart';
import '../../../../variables/colors.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imagesList = [
      "assets/images/pexels-photo-417473@2x.png",
      "assets/images/pexels-photo-988595@2x.png",
      "assets/images/pexels-photo-1576280@2x.png"
    ];
    return Scaffold(
      backgroundColor: CustomColors.darkPurple,
      body: Container(
        padding: const EdgeInsets.only(top: 36, left: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/check_out_background.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<HomeController>()
                        .changeSelectedMenuItem(MenuItems.board);

                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: ((context) => Home())),
                        (route) => false);
                  },
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 36,
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
            Expanded(
              child: Container(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    children: [
                      PaymentSidePanel(),
                      Expanded(
                          flex: 2,
                          child: ListView(
                            children: [
                              CarouselSlider(
                                options: CarouselOptions(
                                  height: 340,
                                  enlargeStrategy:
                                      CenterPageEnlargeStrategy.scale,
                                  viewportFraction: 0.8,
                                  autoPlayAnimationDuration:
                                      const Duration(milliseconds: 100),
                                  autoPlay: false,
                                  enableInfiniteScroll: true,
                                  enlargeCenterPage: true,
                                ),
                                items: imagesList
                                    .map(
                                      (item) => Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(item),
                                                  fit: BoxFit.fitWidth),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: <Color>[
                                                    Colors.transparent,
                                                    Colors.transparent,
                                                    Colors.transparent,
                                                    Colors.black
                                                        .withOpacity(0.8),
                                                  ],
                                                  stops: [
                                                    0.1,
                                                    0.3,
                                                    0.6,
                                                    0.9,
                                                  ]),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                    .toList(),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 32.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 16.0),
                                          child: Image.asset(
                                              'assets/images/ic_person_24px.png'),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 36.0),
                                          child: Text(
                                            'Mohammed',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 36.0),
                                          child: SizedBox(
                                            width: 1,
                                            height: 24,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(.4)),
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          '0506913622',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 40, bottom: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 180,
                                              padding: const EdgeInsets.only(
                                                  top: 16,
                                                  bottom: 16,
                                                  left: 16,
                                                  right: 60),
                                              decoration: BoxDecoration(
                                                  color: Color(0xff5BAE25),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(4))),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Total balance',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Image.asset(
                                                        'assets/images/wallet_icon_24px.png'),
                                                  ),
                                                  const Text(
                                                    '60 SR',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 33),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              width: 130,
                                              padding: const EdgeInsets.only(
                                                  top: 16,
                                                  bottom: 16,
                                                  left: 16),
                                              decoration: const BoxDecoration(
                                                  color: Color(0xff00A1CB),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(4))),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'New Balance',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                  ),
                                                  const Text('+1.5 SR',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18)),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 24.0),
                                                    child: Text(
                                                      'Points',
                                                      style: TextStyle(
                                                          color: Colors.black
                                                              .withOpacity(0.6),
                                                          fontSize: 14),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 36.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              OutlinedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Color(
                                                                0xff585456)),
                                                    shape: MaterialStateProperty
                                                        .all(RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0))),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 24.0,
                                                            left: 24,
                                                            top: 12,
                                                            bottom: 12),
                                                    child: Text(
                                                      'Pay from wallet',
                                                      style: TextStyle(
                                                          color: Colors.white
                                                              .withOpacity(
                                                                  0.34),
                                                          fontSize: 16),
                                                    ),
                                                  )),
                                              Container(
                                                width: 128,
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 32.0, bottom: 16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'For every 100 riyals 10 points',
                                                style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.34),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w100),
                                              ),
                                              Container(
                                                width: 126,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
