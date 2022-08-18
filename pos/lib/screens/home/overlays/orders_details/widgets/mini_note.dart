import 'package:flutter/material.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/extra.dart';
import 'package:pos/data/database/note.dart';
import 'package:pos/data/database/product_note.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MiniNote extends StatelessWidget {
  const MiniNote({
    Key? key,
    required this.note,
  }) : super(key: key);
  final Note note;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<OrderController>().toggleSelectionNote(note);
      },
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.only(right:5 ,left: 1)),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                width: 1,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: (note.isSelected)
              ? MaterialStateProperty.all(
                  Colors.white,
                )
              : MaterialStateProperty.all(
                  Colors.white.withOpacity(0),
                )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: FittedBox(
              child: Text(
                note.name,
                style: TextStyle(
                    color: (note.isSelected ? Colors.black : Colors.white),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          if (note.isSelected)
            Icon(
              Icons.cancel,
              size: .008 * (100.h + 100.w),
              color: Colors.black,
            )
        ],
      ),
    );
  }
}
