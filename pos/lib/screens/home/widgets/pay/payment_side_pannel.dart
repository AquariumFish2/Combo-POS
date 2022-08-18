import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../../../controllers/order_controller.dart';
import '../../../../variables/colors.dart';

class PaymentSidePanel extends StatelessWidget {
  const PaymentSidePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,

      padding: const EdgeInsets.only(top: 8),
      // decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  constraints: const BoxConstraints(minHeight: 100),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                      color: CustomColors.darkGrey,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff8d0e3c).withOpacity(0.2),
                            blurRadius: 17.0, // soften the shadow
                            spreadRadius: 1.0)
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'order no',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 9),
                              ),
                              Text(
                                  context
                                      .watch<OrderController>()
                                      .getOrderNumber(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: const [
                              Text(
                                "POS1-1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "05:44 PM / Dine-in",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(right: 10, top: 5),
                          child: Icon(
                            Icons.assignment,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    margin: const EdgeInsets.only(top: 55),
                    padding: const EdgeInsets.only(bottom: 90),
                    decoration: BoxDecoration(
                      color: CustomColors.darkPurple,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: ListView(
                                clipBehavior: Clip.hardEdge,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, left: 8, top: 40, bottom: 4),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 0.5),
                                            shape: BoxShape.circle,
                                          ),
                                          margin:
                                              const EdgeInsets.only(right: 20),
                                          constraints: const BoxConstraints(
                                              minHeight: 30, minWidth: 30),
                                          child: const Center(
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ),
                                        const Expanded(
                                          child: Text(
                                            "Pasta",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                        ),
                                        const Text(
                                          "79",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Color(0xffC8C8C8).withOpacity(.06),
                                    padding: const EdgeInsets.only(
                                        right: 16, left: 8, top: 4, bottom: 4),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 0.5),
                                            shape: BoxShape.circle,
                                          ),
                                          margin:
                                              const EdgeInsets.only(right: 20),
                                          constraints: const BoxConstraints(
                                              minHeight: 30, minWidth: 30),
                                          child: const Center(
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ),
                                        const Expanded(
                                          child: Text(
                                            "Greek Salad",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                        ),
                                        const Text(
                                          "21",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 16, left: 8, top: 4, bottom: 4),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 0.5),
                                            shape: BoxShape.circle,
                                          ),
                                          margin:
                                              const EdgeInsets.only(right: 20),
                                          constraints: const BoxConstraints(
                                              minHeight: 30, minWidth: 30),
                                          child: const Center(
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ),
                                        const Expanded(
                                          child: Text(
                                            "Chilli",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                        ),
                                        const Text(
                                          "22",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Color(0xffC8C8C8).withOpacity(.06),
                                    padding: const EdgeInsets.only(
                                        right: 16, left: 8, top: 4, bottom: 4),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 0.5),
                                            shape: BoxShape.circle,
                                          ),
                                          margin:
                                              const EdgeInsets.only(right: 20),
                                          constraints: const BoxConstraints(
                                              minHeight: 30, minWidth: 30),
                                          child: const Center(
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ),
                                        const Expanded(
                                          child: Text(
                                            "Penne",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                        ),
                                        const Text(
                                          "10",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Color(0xffC8C8C8).withOpacity(.06),
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Wrap(
                                      direction: Axis.horizontal,
                                      alignment: WrapAlignment.start,
                                      children: [
                                        Wrap(
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.chevron_left,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "without chili",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                          ],
                                        ),
                                        Wrap(
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.chevron_left,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "without chili",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                          ],
                                        ),
                                        Wrap(
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.chevron_left,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "without chili",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                      right: 16,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: CustomColors.pink,
                                            shape: BoxShape.rectangle,
                                          ),
                                          margin:
                                              const EdgeInsets.only(right: 20),
                                          constraints: const BoxConstraints(
                                              minHeight: 30, minWidth: 20),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 16.0,
                                                  bottom: 16,
                                                  right: 6,
                                                  left: 6),
                                              child: Image.asset(
                                                "assets/images/wallet_icon_24px.png",
                                                width: 18,
                                                height: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              "wallet discount",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          "-60",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              color: Color(0xffC8C8C8).withOpacity(.06),
                              margin: const EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Subtotal",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  Text(
                                    "100",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Tax",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  Text(
                                    "100",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SvgPicture.asset(
                              'assets/images/zigzag.svg',
                              fit: BoxFit.contain,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                          color: CustomColors.green,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      height: 60,
                      width: 320,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Pay Now",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "315 SR",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
