import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pos/controllers/sync_controller.dart';
import 'package:pos/screens/home/overlays/connection_overLay/disconnected_dialog.dart';
import 'package:pos/screens/loading_screen/loading_screen.dart';
import 'package:pos/screens/login/users_pin_code.dart';
import 'package:pos/screens/splash/splash.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/home/home.dart';
import 'screens/login/POSs.dart';
import 'screens/login/login_to_db.dart';

class RootWidget extends StatefulWidget {
  RootWidget({
    Key? key,
  }) : super(key: key);
  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  _RootWidgetState();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: InternetConnectionChecker().onStatusChange.asBroadcastStream(),
        builder: (context, internetState) {
          return Builder(builder: (context) {
            return Scaffold(
              body: Stack(
                children: [
                  Positioned.fill(
                    child: FutureBuilder(
                      future: SharedPreferences.getInstance(),
                      builder:
                          (context, AsyncSnapshot<SharedPreferences> snap) {
                        String? sessionID =
                            snap.data?.getString(SharedPrefrencesPath.accessToken);
                        int? selectedPOS =
                            snap.data?.getInt(SharedPrefrencesPath.posId);
                        int? selectedCompany =
                            snap.data?.getInt(SharedPrefrencesPath.companyId);
                        int? selectedBranch =
                            snap.data?.getInt(SharedPrefrencesPath.branchId);
                        print(sessionID);
                        if (snap.connectionState == ConnectionState.waiting) {
                          return const LoadingScreen();
                        } else {
                          if (sessionID == null) {
                            return const LogInToDatabase();
                          } else {
                            if (selectedPOS == null ||
                                selectedCompany == null ||
                                selectedBranch == null) {
                              return const Poses();
                            } else {
                              return const PickUserPage();
                            }
                          }
                        }
                      },
                    ),
                  ),
                  if (internetState.data ==
                      InternetConnectionStatus.disconnected)
                    DisconnectedDialog(),
                ],
              ),
            );
          });
        });
  }
}
