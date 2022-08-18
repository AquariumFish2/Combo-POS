import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'product_category.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class ProductCategory {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'parent_id', fromJson: customFromJson)
  final int? parentId;
  @JsonKey(name: 'removal_strategy_id', fromJson: customFromJson)
  final int? removalStrategyId;
  @JsonKey(name: 'property_cost_method', fromJson: customFromJson)
  final String? propertyCostMethod;
  @JsonKey(name: 'property_valuation', fromJson: customFromJson)
  final String? propertyValuation;
  @JsonKey(
      name: 'property_account_creditor_price_difference_categ',
      fromJson: customFromJson)
  final String? propertyAccountCreditorPriceDifferenceCateg;
  @JsonKey(name: 'property_account_expense_categ_id', fromJson: customFromJson)
  final int? propertyAccountExpenseCategId;
  @JsonKey(name: 'property_account_income_categ_id', fromJson: customFromJson)
  final int? propertyAccountIncomeCategId;
  @JsonKey(
      name: 'property_stock_account_input_categ_id', fromJson: customFromJson)
  final int? propertyStockAccountInputCategId;
  @JsonKey(
      name: 'property_stock_account_output_categ_id', fromJson: customFromJson)
  final int? propertyStockAccountOutputCategId;
  @JsonKey(
      name: 'property_stock_valuation_account_id', fromJson: customFromJson)
  final int? propertyStockValuationAccountId;
  ProductCategory({
    required this.odooId,
    this.id = 0,
    this.name,
    this.parentId,
    this.propertyAccountCreditorPriceDifferenceCateg,
    this.propertyAccountExpenseCategId,
    this.propertyAccountIncomeCategId,
    this.propertyCostMethod,
    this.propertyStockAccountInputCategId,
    this.propertyStockAccountOutputCategId,
    this.propertyStockValuationAccountId,
    this.propertyValuation,
    this.removalStrategyId,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCategoryToJson(this);
}

@JsonSerializable()
class ProductCategoryMapper {
  final List<ProductCategory> result;

  ProductCategoryMapper({required this.result});

  factory ProductCategoryMapper.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryMapperFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCategoryMapperToJson(this);
}
