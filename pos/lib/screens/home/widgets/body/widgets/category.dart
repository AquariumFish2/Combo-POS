import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pos/controllers/categories_controller.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/data/database/product_category.dart';
import 'package:pos/main.dart';
import 'package:pos/variables/colors.dart';
import 'package:provider/provider.dart';

class Category extends StatelessWidget {
  const Category({Key? key, required this.productCategory}) : super(key: key);
  final ProductCategory productCategory;
  Color generateRandomColor() {
    var random = Random();
    Color color = Colors.red;
    switch (random.nextInt(10)) {
      case 1:
        color = Colors.red;
        break;

      case 3:
        color = Colors.indigo;
        break;
      case 4:
        color = Colors.cyan;
        break;
      case 5:
        color = Colors.green;
        break;
      case 7:
        color = Colors.amber;
        break;
      case 8:
        color = Colors.deepPurpleAccent;
        break;
      case 9:
        color = Colors.cyan;
        break;
      case 10:
        color = Colors.pink;
        break;

      default:
        color = Colors.black;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    Random rand = Random();
    return InkWell(
      onTap: (() {
        context
            .read<HomeController>()
            .setCategory(productCategory.odooId, context);
        context.read<CategoriesController>().getCurrentProductCategory();
      }),
      child: Container(
        height: 100,
        width: 100,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://source.unsplash.com/collection/' +
                    rand.nextInt(20).toString() +
                    '/100x100/',
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                generateRandomColor().withOpacity(.6),
                generateRandomColor().withOpacity(.6),
              ],
            ),
          ),
          child: Consumer<CategoriesController>(
              builder: (context, catController, _) {
            return Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: (catController.selectedCategoryId != null)
                          ? ((catController.currentProductCat!.odooId ==
                                  productCategory.odooId))
                              ? Border.all(color: Colors.pink)
                              : null
                          : null,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        productCategory.name!,
                        style: TextStyle(
                          color: catController.selectedCategoryId != null
                              ? catController.currentProductCat!.odooId ==
                                      productCategory.odooId
                                  ? CustomColors.pink
                                  : Colors.white
                              : Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
