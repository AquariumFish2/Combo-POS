import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/order_option_controller.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/texts.dart';
import 'package:provider/provider.dart';

class DiscountButtons extends StatelessWidget {
  const DiscountButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  context.read<OrderOptionController>().toggleDiscountLayout();
                  context.read<HomeController>().toggleOrderOptionsPopup();
                },
                child: Text(
                  'Cancel',
                  style: TextStyles.whiteButtonsStyle,
                ),
                style: ButtonStyles.circularWhiteButton,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => context
                  .read<OrderOptionController>()
                  .authenticateUser(context),
              child: const SizedBox(
                height: 45,
                child: Center(
                  child: Text(
                    'Ok',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              style: ButtonStyles.circularPinkButton,
            ),
          ),
        ),
      ],
    );
  }
}
