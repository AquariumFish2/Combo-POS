import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/screens/home/overlays/modal_overlay.dart';
import 'package:pos/screens/home/overlays/orders_details/widgets/extra.dart';
import 'package:pos/screens/home/overlays/orders_details/widgets/note.dart';
import 'package:pos/screens/home/overlays/orders_details/widgets/notes_text_field.dart';
import 'package:pos/screens/home/overlays/orders_details/widgets/order_details_save_button.dart';
import 'package:pos/variables/buttons.dart';
import 'package:pos/variables/texts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../../variables/colors.dart';
import 'package:provider/provider.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Builder(
        builder: (context) {
          print('something');
          // context.read<OrderController>().getAllNotes();
          return Stack(
            children: [
              Positioned(
                top: 80,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: InkWell(
                      onTap: () {
                        context.read<OrderController>().quitWithoutSaving();
                        // context.read<OrderController>().toggleOrderDetails();
                      },
                      child: Container(
                        width: 100.w,
                        height: 100.h,
                        color: CustomColors.darkPurple.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ),
              Consumer<OrderController>(builder: (context, orderController, _) {
                return Container(
                  margin: const EdgeInsets.only(
                      top: 120, bottom: 40, left: 350, right: 10),
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
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      // blendMode: BlendMode.multiply,
                      child: Container(
                        color: Colors.white.withOpacity(.3),
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ListView(
                          controller: ScrollController(),
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 24, left: 20, right: 40),
                                  child: Row(
                                    children: [
                                      Material(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                        child: Ink(
                                            decoration: const ShapeDecoration(
                                                color: Colors.white,
                                                shape: CircleBorder()),
                                            child: InkWell(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              onTap: () {
                                                orderController
                                                    .adjustQuantity(-1);
                                              },
                                              child: const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.black,
                                                  size: 24,
                                                ),
                                              ),
                                            )),
                                      ),
                                      const SizedBox(
                                        width: 24,
                                      ),
                                      Text(
                                        orderController.qty,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                      const SizedBox(
                                        width: 24,
                                      ),
                                      Material(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                        child: Ink(
                                          decoration: const ShapeDecoration(
                                              color: Colors.white,
                                              shape: CircleBorder()),
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            onTap: () {
                                              orderController.adjustQuantity(1);
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.black,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        'Quantity',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // const Spacer(),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 27, left: 20, right: 40),
                                        child: Text(
                                          orderController
                                              .selectedLine!.fullProductName!,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 0.01 * (100.h + 100.w),
                                              overflow: TextOverflow.ellipsis),
                                        ),
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
                              height: 59.h,
                              padding: EdgeInsets.only(bottom: 16),
                              margin: const EdgeInsets.only(
                                  left: 22, right: 22, bottom: 40),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 24, bottom: 4, left: 35, right: 30),
                                child: ListView(
                                  controller: ScrollController(),
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () => context
                                              .read<OrderController>()
                                              .deleteSelectedLine(context),
                                          child: const Text(
                                            'delete ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14),
                                          ),
                                          style:
                                              ButtonStyles.semiSharpWhiteButton,
                                        ),
                                        Spacer(),
                                        Text(
                                          'Extra',
                                          style: TextStyles.whiteDetailsStyle,
                                        ),
                                      ],
                                    ),
                                    if (orderController
                                        .selectedLine!.extras.isEmpty)
                                      Row(
                                        children: const [
                                          Spacer(),
                                          Text(
                                            'No Extras',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 20.w,
                                          top: 5,
                                          bottom: 2.h,
                                        ),
                                        child: GridView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: orderController
                                              .selectedLine!.extras.length,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 3,
                                                  crossAxisSpacing: 6,
                                                  mainAxisExtent: 4.h),
                                          padding: const EdgeInsets.all(4),
                                          itemBuilder: (context, index) =>
                                              ExtraTile(
                                            extra: orderController
                                                .selectedLine!.extras[index],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: const [
                                        Spacer(),
                                        Text(
                                          'Notes',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (orderController
                                        .selectedLine!.notes.isEmpty)
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Row(
                                          children: const [
                                            Spacer(),
                                            Text(
                                              'No Notes',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (orderController
                                        .selectedLine!.notes.isNotEmpty)
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 20.w,
                                            top: 5,
                                            bottom: 2.h,
                                          ),
                                          child: GridView.builder(
                                            shrinkWrap: true,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: orderController
                                                .selectedLine!.notes.length,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    crossAxisSpacing: 6,
                                                    mainAxisExtent: 4.h),
                                            padding: const EdgeInsets.all(4),
                                            itemBuilder: (context, index) =>
                                                NoteTile(
                                              note: orderController
                                                  .selectedLine!.notes[index],
                                            ),
                                          ),
                                        ),
                                      ),
                                    const NotesTextField(),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: OrderSaveButton(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          );
        },
      ),
    );
  }
}
