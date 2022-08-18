import 'package:flutter/material.dart';
import 'package:pos/controllers/floor_controller.dart';
import 'package:pos/data/database/floor.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FloorTab extends StatelessWidget {
  FloorTab({Key? key, required this.floor}) : super(key: key);
  Floor floor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => context.read<FloorController>().selectFloor(floor),
          child: Container(
            width: 18.w,
            decoration: BoxDecoration(
              color: (context.watch<FloorController>().selectedFloor == floor)
                  ? const Color(0xFF636366)
                  : null,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 45,
            child: Center(
                child: Text(
              floor.name!,
              style: const TextStyle(color: Colors.white),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: VerticalDivider(
            color: const Color(0xFF8E8E93).withOpacity(.30),
          ),
        ),
      ],
    );
  }
}
