import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pos/controllers/categories_controller.dart';
import 'package:pos/controllers/homeContentController.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:provider/provider.dart';
import 'category.dart';
import '../../../../../variables/colors.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);
  ScrollController categoriesController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<CategoriesController>(context, listen: false)
            .getAllCategories(),
        builder: (context, snap) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => context
                      .read<HomeContentController>()
                      .changeHomePageContents(HomeContents.search, context),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: CustomColors.darkGrey,
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () => categoriesController.animateTo(
                      categoriesController.offset - 115,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease),
                  child: Icon(
                    Icons.chevron_left,
                    color: CustomColors.pink,
                    size: 30,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: ListView.builder(
                      itemCount:
                          context.read<CategoriesController>().categories.length,
                      controller: categoriesController,
                      itemBuilder: (context, index) => Category(
                        productCategory:
                            context.read<CategoriesController>().categories[index],
                      ),
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => categoriesController.animateTo(
                      categoriesController.offset + 115,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease),
                  child: Icon(
                    Icons.chevron_right,
                    color: CustomColors.pink,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
          );
        });
  }
}
