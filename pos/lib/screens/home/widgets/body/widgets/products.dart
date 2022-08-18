import 'package:flutter/material.dart';
import 'package:pos/controllers/categories_controller.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:pos/screens/home/widgets/body/widgets/product.dart';
import 'package:provider/provider.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      context.read<HomeController>().getAllProducts(context);
      return Consumer<HomeController>(
          builder: (context, homeController, __) {
        return Container(
          padding: const EdgeInsets.only(left: 370),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 140, childAspectRatio: .75),
              controller: ScrollController(),
              itemCount: homeController.selectedCategoryProducts.length,
              itemBuilder: (context, index) {
                print(homeController.selectedCategoryProducts.length);
                return ProductTile(
                    product:
                        homeController.selectedCategoryProducts[index]);
              }),
        );
      });
    });
  }
}
