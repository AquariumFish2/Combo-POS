import 'package:flutter/cupertino.dart';
import 'package:pos/controllers/home_controller.dart';
import 'package:provider/provider.dart';

import '../data/database/product.dart';
import '../data/database/product_category.dart';
import '../main.dart';

class CategoriesController extends ChangeNotifier {
  List<ProductCategory> categories = [];
  int? selectedCategoryId;
  ProductCategory? currentProductCat;

  getCurrentProductCategory() {
    if (selectedCategoryId != null) {
      currentProductCat =
          staticStore.box<ProductCategory>().getAll().firstWhere(
                (element) => element.odooId == selectedCategoryId,
              );
    }
    notifyListeners();
  }

  getAllCategories() {
    categories = staticStore.box<ProductCategory>().getAll();
  }
}
