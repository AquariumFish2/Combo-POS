import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/controllers/order_note_controller.dart';
import 'package:pos/screens/home/overlays/triangle_clipper.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/texts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../variables/colors.dart';
import '../../../controllers/local_order_controller.dart';
import '../../../data/models/local_order.dart';
import '../../../variables/colors.dart';
import 'custom_radio_button.dart';
import 'modals_triangle_pointer.dart';

class OrderNotesPopup extends StatelessWidget {
  OrderNotesPopup({Key? key}) : super(key: key);
  TextEditingController noteTextController = TextEditingController();
  FocusNode textFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Positioned.fill(
        child: Stack(
          children: [
            Positioned.fill(
                child: GestureDetector(
              child: Container(
                height: 100.h,
                width: 100.w,
                color: Colors.transparent,
              ),
              onTap: () => context
                  .read<OrderNoteController>()
                  .onQuitingWithoutSaving(context),
            )),
            Positioned(
              top: 155,
              left: 325,
              child: RotatedBox(
                quarterTurns: 3,
                child: ClipRRect(
                  child: ClipPath(
                    clipper: TriangleClipper(),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: CustomPaint(
                        painter: TrianglePainter(
                          strokeColor: Colors.white.withOpacity(.43),
                          strokeWidth: 10,
                          paintingStyle: PaintingStyle.fill,
                        ),
                        child: const SizedBox(
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 95, bottom: 80, left: 350, right: 10),
              height: 100.h - (95),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
                color: CustomColors.modalBG.withOpacity(0),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                  // blendMode: BlendMode.multiply,
                  child: Container(
                    color: Colors.white.withOpacity(.4),
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 40, left: 20, right: 40),
                              child: GestureDetector(
                                onTap: () => context
                                    .read<OrderNoteController>()
                                    .clearNotes(),
                                child: const Text(
                                  "Clear",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 22, right: 22, bottom: 40),
                          height: 100.h - (300),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30.0, bottom: 20, right: 40, left: 40),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView(
                                      shrinkWrap: true,
                                      controller: ScrollController(),
                                      children: [
                                        SizedBox(
                                          height: 30,
                                          child: TextField(
                                            // scrollPadding: EdgeInsets.zero,
                                            focusNode: textFocusNode,
                                            controller: noteTextController,
                                            style: TextStyle(fontSize: 11),
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(6),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  context
                                                      .read<
                                                          OrderNoteController>()
                                                      .addNote(
                                                          noteTextController
                                                              .text);
                                                  textFocusNode.unfocus();
                                                },
                                                child: const Icon(
                                                  Icons.chevron_right,
                                                  color: Colors.black,
                                                  size: 12,
                                                ),
                                              ),
                                              filled: true,
                                              hintText: "add notes",
                                              hintStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              fillColor: Colors.grey,
                                            ),
                                            onSubmitted: (e) {
                                              context
                                                  .read<OrderNoteController>()
                                                  .addNote(e);
                                              textFocusNode.unfocus();
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Wrap(
                                            direction: Axis.horizontal,
                                            children: [
                                              ...context
                                                  .watch<OrderNoteController>()
                                                  .notes
                                                  .map((e) => Wrap(
                                                        alignment: WrapAlignment
                                                            .center,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .center,
                                                        children: [
                                                          const Icon(
                                                            Icons.chevron_left,
                                                            color: Colors.white,
                                                            size: 14,
                                                          ),
                                                          Text(
                                                            e,
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 11),
                                                          ),
                                                        ],
                                                      ))
                                            ],
                                          ),
                                        )
                                      ]),
                                ),
                                ElevatedButton(
                                  onPressed: () => context
                                      .read<OrderNoteController>()
                                      .onSave(context),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Save',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11),
                                        ),
                                      ]),
                                  style: ButtonStyles.semiSharpWhiteButton,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
