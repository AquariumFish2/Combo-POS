import 'package:flutter/material.dart';
import 'package:pos/controllers/order_controller.dart';
import 'package:pos/data/database/product.dart';
import 'package:provider/provider.dart';

import '../../../../../controllers/home_controller.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<OrderController>().addLine(product, context),
      child: Container(
        margin: const EdgeInsets.all(5),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    end: FractionalOffset(0.0, .7),
                    begin: FractionalOffset(0.0, 1),
                    colors: [
                      Color(0xff444444),
                      Colors.black,
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text("Text"),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minWidth: 70,
                          minHeight: 70,
                          maxWidth: 90,
                          maxHeight: 90,
                        ),
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Colors.white, Colors.black],
                              begin: FractionalOffset(.9, 1),
                              end: FractionalOffset(.7, .7),
                            )),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Image.network(
                            product.image1920!,
                            fit: BoxFit.cover,
                            errorBuilder: ((context, error, stackTrace) =>
                                const FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'No Image Found',
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Expanded(
                        child: Text(
                          product.name as String,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 5),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                ((product.listPrice! * 100).ceilToDouble() / 100)
                                    .toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
