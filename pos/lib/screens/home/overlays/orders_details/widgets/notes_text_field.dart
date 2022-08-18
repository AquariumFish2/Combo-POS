import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/screens/home/overlays/orders_details/widgets/mini_note.dart';
import 'package:pos/screens/home/overlays/orders_details/widgets/note.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotesTextField extends StatelessWidget {
  const NotesTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Consumer<OrderController>(builder: (context, orderController, _) {
        return SizedBox(
          height: 20.h,
          child: Container(
            height: 20.h,
            decoration: BoxDecoration(
              color: const Color(0xFFD6D6D6).withOpacity(0.58),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                if (orderController.selectedLine!.notes
                    .any((element) => element.isSelected == true))
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, top: 12),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        mainAxisExtent: 3.h,
                      ),
                      shrinkWrap: true,
                      itemCount: orderController.selectedLine!.notes.length,
                      itemBuilder: (context, index) {
                        if (orderController
                            .selectedLine!.notes[index].isSelected) {
                          return MiniNote(
                            note: orderController.selectedLine!.notes[index],
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ),
                TextField(
                  textAlign: TextAlign.right,
                  textAlignVertical: TextAlignVertical.bottom,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Additionnal Notes',
                    contentPadding: const EdgeInsets.only(top: 15, right: 15),
                    hintStyle: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    alignLabelWithHint: true,
                    // fillColor: const Color(0xFFD6D6D6).withOpacity(0.58),
                    // filled: true,
                  ),
                  maxLines: 9,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
