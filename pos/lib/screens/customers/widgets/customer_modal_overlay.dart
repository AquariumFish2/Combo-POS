import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomerModalOverlay extends StatelessWidget {
  const CustomerModalOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
          child: InkWell(
            onTap: () {
              context.read<HomeController>().toggleLocalOrdersModal();
            },
            child: Container(
              width: 100.w,
              height: 100.h,
              color: Colors.black12,
            ),
          ),
        ),
      ),
    );
  }
}
