import 'package:flutter/material.dart';
import 'package:pos/controllers/add_coupon_controller.dart';
import 'package:provider/provider.dart';

class CouponRemoveButton extends StatelessWidget {
  const CouponRemoveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: ()=>context.read<AddCouponController>().removeDigit(),
        child: const Icon(
          Icons.backspace_outlined,
          color: Colors.white70,
        ),
      ),
    );
  }
}
