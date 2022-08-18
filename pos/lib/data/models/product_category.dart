import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_category.freezed.dart';
part 'product_category.g.dart';

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    required String id,
    required String name,
    @JsonKey(name: 'parent_id') bool? parentId,
    @JsonKey(name: 'removal_strategy_id') bool? removalStrategyId,
    @JsonKey(name: 'property_cost_method') String? propertyCostMethod,
    @JsonKey(name: 'property_valuation') String? propertyValuation,
    @JsonKey(name: 'property_account_creditor_price_difference_categ')
        bool? propertyAccountCreditorPriceDifferenceCateg,
    @JsonKey(name: 'property_account_expense_categ_id')
        int? propertyAccountExpenseCategId,
    @JsonKey(name: 'property_account_income_categ_id')
        int? propertyAccountIncomeCategId,
    @JsonKey(name: 'property_stock_account_input_categ_id')
        int? propertyStockAccountInputCategId,
    @JsonKey(name: 'property_stock_account_output_categ_id')
        int? propertyStockAccountOutputCategId,
    @JsonKey(name: 'property_stock_valuation_account_id')
        int? propertyStockValuationAccountId,
  }) = _ProductCategory;
  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}

@freezed
class ProductCategoryResults with _$ProductCategoryResults {
  const factory ProductCategoryResults({
    @JsonKey(name: 'results') required List<ProductCategory> productCategories,
  }) = _ProductCategoryResults;
  factory ProductCategoryResults.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryResultsFromJson(json);
}
