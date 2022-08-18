import 'package:flutter/material.dart';
import 'package:pos/controllers/order_option_controller.dart';
import 'package:provider/provider.dart';

import '../../../../../variables/colors.dart';

class OptionItem extends StatelessWidget {
  final String text;
  final Function? show;
  const OptionItem({
    Key? key,
    required this.text,
    this.show,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (show != null)
          ? () {
              context.read<OrderOptionController>().closeAllModels();
            show!();
            }
          : () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: Container(
          height: 45,
          width: double.infinity,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.white12,
              ),
            ),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
