import 'package:flutter/cupertino.dart';
import 'package:pos/controllers/homeContentController.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/floor.dart';
import 'package:pos/data/database/pos_order_type.dart';
import 'package:pos/main.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FloorController extends ChangeNotifier {
  List<Floor> floors = [];
  List<TableId> currentTables = [];
  List<TableId> currentFloorTables = [];
  TableId? tempTable;
  TableId? chosenTable;
  double? widthRatio;
  double? heightRatio;
  Floor? selectedFloor;

  getAllFloors() async {
    floors = await staticStore.box<Floor>().getAll();
    if (floors.isNotEmpty) {
      selectedFloor = floors[0];
      settingTablesSizeRatio();
      getAllTables();
      getCurrentFloorTables();
    }
  }

  getCurrentFloorTables() {
    currentFloorTables = selectedFloor!.tableIds;
    notifyListeners();
  }

  getAllTables() {
    currentTables = staticStore.box<TableId>().getAll();
    notifyListeners();
  }

  setTempTable() {
    tempTable = chosenTable;
  }

  settingTablesSizeRatio() {
    print(
        "widthRatio:${widthRatio = (100.w - 530) / selectedFloor!.width!} heightRatio:${heightRatio = (60.h - 65) / selectedFloor!.height!}");
    if (!selectedFloor!.gotRatio) {
      if (selectedFloor!.width! > (100.w - 530)) {
        widthRatio = (100.w - 530) / selectedFloor!.width!;
        selectedFloor!.tableIds.forEach(
          (element) {
            element.width = element.width! * widthRatio!;
            element.positionH = element.positionH! * widthRatio!;
            staticStore.box<TableId>().put(element);
          },
        );
      }
      if (selectedFloor!.height! > (60.h)) {
        heightRatio = (60.h) / selectedFloor!.height!;
        selectedFloor!.tableIds.forEach(
          (element) {
            element.height = element.height! * heightRatio!;
            element.positionV = element.positionV! * heightRatio!;
            staticStore.box<TableId>().put(element);
          },
        );
      }
      selectedFloor!.gotRatio = true;
      staticStore.box<Floor>().put(selectedFloor!);
    }
  }

  closingWithoutSaving(BuildContext context) {
    chosenTable = tempTable;
    notifyListeners();
    context
        .read<HomeContentController>()
        .changeHomePageContents(HomeContents.home, context);
  }

  chosingTable(TableId table) {
    if (table == chosenTable) {
      chosenTable = null;
    } else {
      chosenTable = table;
    }
    notifyListeners();
  }

  savingTable(BuildContext context) {
    if (chosenTable != null) {
      if (context.read<OrderController>().order != null) {
        context.read<OrderController>().setOrderType(
            staticStore
                .box<POSOrderType>()
                .getAll()
                .firstWhere((element) => element.type == 'dine_in'),
            context);
        staticStore.box<TableId>().put(chosenTable!);
        context
            .read<OrderController>()
            .updateTableAndFloorIds(chosenTable!.odooId);
      } else {
        context.read<OrderController>().makeOrder(context);
        staticStore.box<TableId>().put(chosenTable!);
        context
            .read<OrderController>()
            .updateTableAndFloorIds(chosenTable!.odooId);
      }
    }

    context
        .read<HomeContentController>()
        .changeHomePageContents(HomeContents.home, context);
  }

  getSelectedFloorTableIds() {
    currentFloorTables = selectedFloor!.tableIds;
  }

  setTableWithId(int? id, BuildContext context) {
    if (id != null) {
      chosenTable = staticStore
          .box<TableId>()
          .getAll()
          .firstWhere((element) => id == element.odooId);
    }
    notifyListeners();
  }

  selectFloor(Floor floor) {
    currentTables.forEach((element) {
      if (element == chosenTable) {
        print(element.name);
        return;
      } else {
        print('nothing like that exists');
      }
    });
    selectedFloor = floor;
    getSelectedFloorTableIds();
    settingTablesSizeRatio();
    notifyListeners();
  }
}
