import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../../../../../controllers/order_option_controller.dart';

class RemoveButton extends StatelessWidget {
  const RemoveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (() =>
            context.read<OrderOptionController>().removeNumFromUserPassword()),
        child: const Icon(
          Icons.backspace_outlined,
          color: Colors.white70,
        ),
      ),
    );
  }
}
