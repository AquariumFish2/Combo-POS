import 'package:flutter/material.dart';
import 'package:pos/screens/home/overlays/custom_radio_button.dart';
import 'package:pos/variables/texts.dart';

class ReturnOrderSelectableTile extends StatelessWidget {
  const ReturnOrderSelectableTile({
    Key? key,
    required this.selected,
    required this.quantity,
    required this.orderName,
    required this.price,
    required this.selectedQuantity,
  }) : super(key: key);
  final bool selected;
  final int quantity;
  final String orderName;
  final int price;
  final int selectedQuantity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 27, left: 21, top: 8, bottom: 8),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.white),
                color: (selected) ? Colors.pink : Colors.white),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    // ignore: unnecessary_string_escapes
                    Text(
                      '$quantity\X',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      orderName,
                      style: TextStyles.whiteButtonsStyle,
                    ),
                    const Spacer(
                      flex: 6,
                    ),
                    Text(
                      '$price SAR',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      '$selectedQuantity/$quantity',
                      style: TextStyles.whiteButtonsStyle,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.pink,
                            width: 1,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          border: Border.all(
                            color: Colors.pink,
                            width: 1,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFDFDFDF),
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Scrap',
                          style: TextStyles.whiteButtonsStyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
