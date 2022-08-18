import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/order_option_controller.dart';
import 'package:provider/provider.dart';

import '../../../controllers/home_controller.dart';

class ModalOverLay extends StatefulWidget {
  final bool fullScreen;
  const ModalOverLay({
    Key? key,
    this.fullScreen = false,
  }) : super(key: key);

  @override
  _ModalOverLayState createState() => _ModalOverLayState();
}

class _ModalOverLayState extends State<ModalOverLay> {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: InkWell(
        onTap: () {
          context.read<HomeController>().closeAllOpenModals();
          context.read<OrderOptionController>().closeAllModels();
        },
        child: Container(
          margin: EdgeInsets.only(top: widget.fullScreen ? 0 : 80),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.5),
            borderRadius: widget.fullScreen
                ? null
                : const BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(),
            ),
          ),
        ),
      ),
    );
  }
}
