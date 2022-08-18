import 'package:flutter/material.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/extra.dart';
import 'package:pos/data/database/note.dart';
import 'package:pos/data/database/product_note.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({
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
          padding:
              MaterialStateProperty.all(EdgeInsets.only(right: 5, left: 1)),
          backgroundColor: (note.isSelected)
              ? MaterialStateProperty.all(
                  Colors.white,
                )
              : MaterialStateProperty.all(
                  Colors.white.withOpacity(0),
                )),
      child: Row(
        children: [
          Spacer(),
          Expanded(
            flex: 20,
            child: SizedBox(
              height: 2.h,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  note.name,
                  style: TextStyle(
                      color: (note.isSelected ? Colors.black : Colors.white),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Spacer(),
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
