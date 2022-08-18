import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/controllers/branch_controller.dart';
import 'package:pos/controllers/companyController.dart';
import 'package:pos/controllers/layout_controller.dart';
import 'package:pos/controllers/login_to_db_controller.dart';
import 'package:pos/controllers/pos_controller.dart';
import 'package:pos/controllers/users_pin_code_controller.dart';
import 'package:pos/data/database/pos.dart';
import 'package:pos/data/database/session.dart';
import 'package:pos/data/database/session_status.dart';
import 'package:pos/helpers/api_helper.dart';
import 'package:pos/main.dart';
import 'package:pos/screens/home/home.dart';
import 'package:pos/variables/shared_prefrences_path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum FunTypes { end, start }

class CheckOutController extends ChangeNotifier {
  late SessionStatus sessionStatus;
  bool showCashControl = false;
  late FunTypes currentFunType;
  Session1? currentSession;
  bool sessionOpened = false;

  toggleCashController({FunTypes? type}) {
    if (type != null) currentFunType = type;
    showCashControl = !showCashControl;
    notifyListeners();
  }

  checkSharedPref(BuildContext context) async {
    final shared = await SharedPreferences.getInstance();
    if (shared.getInt(SharedPrefrencesPath.sessionId) != null) {
      currentSession = staticStore
          .box<Session1>()
          .get(shared.getInt(SharedPrefrencesPath.sessionId)!);
      currentSession!.userName =
          context.read<UsersPinCodeController>().selectedUser!.name;
        staticStore.box<Session1>().put(currentSession!);
      currentSession = staticStore
          .box<Session1>()
          .get(shared.getInt(SharedPrefrencesPath.sessionId)!);
      print(currentSession!.userName);
      notifyListeners();
      sessionOpened = true;
    } else {
      sessionOpened = false;
    }
  }

  openSession(BuildContext context, int posId, int balanceStart, String note) {
    APIHelper.get(apiPath: '/pos_custom/pos_open_session', data: {
      "jsonrpc": "2.0",
      "params": {
        "pos_config_id": posId,
        "balance_start": balanceStart,
        "note": note
      }
    }).then(
      (response) => response.fold(
        (l) => context.read<LayoutController>().showToast(
              text: 'something wrong happened',
              type: ToastType.error,
            ),
        (r) async {
          final SessionStatusMapper mapper =
              SessionStatusMapper.fromJson(r.data);
          sessionStatus = mapper.result.first;
          print(context);
          currentSession = Session1(
            odooId: 0,
            dbLink: context.read<LoginToDatabaseController>().selectedDatabase,
            posName: context.read<PosController>().selectedPOS!.name,
            startingCredit: balanceStart,
            sessionNumber: staticStore.box<Session1>().getAll().length + 1,
            sessionOpenedBy:
                context.read<UsersPinCodeController>().selectedUser!.name,
            sessionStartTime:
                DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()),
            workingDate: DateFormat('dd MMM yyyy').format(DateTime.now()),
            sessionStatus: sessionStatus.message,
            version: 'V4.4.22(24B)',
            userName: context.read<UsersPinCodeController>().selectedUser!.name,
          );
          int sessionId = staticStore.box<Session1>().put(currentSession!);
          print(staticStore.box<Session1>().get(sessionId)!.toJson());
          final SharedPreferences sharedPreferences =
              await SharedPreferences.getInstance();
          sharedPreferences.setInt(SharedPrefrencesPath.sessionId, sessionId);
          Provider.of<CheckOutController>(context, listen: false)
              .toggleCashController();
          notifyListeners();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => Home()),
            ),
          );
          // sharedPreferences.setString(SharedPrefrencesPath.sessionStatus,
          //     sessionStatus.message as String);
          // sharedPreferences.setInt(
          //     SharedPrefrencesPath.posSessionId, sessionStatus.posSessionId);
        },
      ),
    );
  }

  endSession(BuildContext context, int posId, int balanceEnd) {
    APIHelper.get(apiPath: '/pos_custom/pos_close_session', data: {
      "jsonrpc": "2.0",
      "params": {
        "pos_config_id": posId,
        "balance_end_real": balanceEnd,
      }
    }).then(
      (response) => response.fold(
        (l) => context.read<LayoutController>().showToast(
              text: 'something wrong happened',
              type: ToastType.error,
            ),
        (r) async {
          final SessionStatusMapper mapper =
              SessionStatusMapper.fromJson(r.data);
          sessionStatus = mapper.result.first;
          currentSession!.sessionEndTime =
              DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now());
          currentSession!.endingCredit = balanceEnd;
          currentSession!.sessionStatus = sessionStatus.message;
          currentSession!.userName =
              context.read<PosController>().selectedPOS!.name;
          int sessionId = staticStore.box<Session1>().put(currentSession!);
          print(staticStore.box<Session1>().get(sessionId)!.toJson());
          SharedPreferences shared = await SharedPreferences.getInstance();
          shared.remove(SharedPrefrencesPath.sessionId);
          sessionOpened = false;
          notifyListeners();
          Provider.of<CheckOutController>(context, listen: false)
              .toggleCashController();
        },
      ),
    );
  }

  getSessionFromId() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    int? sessionId = shared.getInt(SharedPrefrencesPath.sessionId);
    if (sessionId != null) {
      List<Session1> sessions = staticStore.box<Session1>().getAll();
      currentSession =
          sessions.firstWhere((element) => element.id == sessionId);
    }
  }

  fetchData(BuildContext context) async {
    await context.read<PosController>().setPOSById();
    await context.read<BranchController>().setBranchById();
    await context.read<CompanyController>().setCompanyById();
    await getSessionFromId();
  }
}
