import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pos/controllers/sync_controller.dart';
import 'package:provider/provider.dart';
import '../login/enter_pin_code.dart';

import '../../variables/colors.dart';
import '../home/home.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key, required this.isFirstSplash}) : super(key: key);
  bool isFirstSplash;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<SyncController>().syncAppData(widget.isFirstSplash, context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              CustomColors.blackPurple,
              CustomColors.lightPurple,
            ])),
        child: Stack(
          children: [
            Positioned(
              bottom: 50,
              left: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                    child: Image.asset('assets/images/logo-white.png'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Digital Technologies",
                    style: TextStyle(color: Colors.white, fontSize: 7),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 340,
                width: 460,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70,
                          child: Image.asset('assets/images/logo.png'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Digital Technologies",
                          style: TextStyle(color: CustomColors.blackPurple),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(color: CustomColors.lightGrey),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sync data / " +
                              context.watch<SyncController>().loadingText +
                              '...'),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 2,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: CustomColors.loadingBarGrey,
                            ),
                            child: FractionallySizedBox(
                              alignment: Alignment.centerLeft,
                              widthFactor: context
                                      .watch<SyncController>()
                                      .loadingPercentage /
                                  26,
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  color: CustomColors.pink,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
