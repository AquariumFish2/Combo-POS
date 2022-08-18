import 'package:flutter/material.dart';
import 'package:pos/variables/colors.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darkPurple,
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 6,
        ),
      ),
    );
  }
}
