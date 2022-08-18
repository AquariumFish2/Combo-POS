import 'package:flutter/material.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/screens/home/home.dart';
import 'package:pos/screens/splash/splash.dart';
import 'package:provider/provider.dart';

class CheckOutHeader extends StatelessWidget {
  const CheckOutHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 30,
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Digital Technologies',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 10),
              )
            ],
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreen(isFirstSplash: false),
              ),
            ),
            child: const Icon(
              Icons.loop,
              size: 24,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
