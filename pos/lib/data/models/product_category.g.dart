// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCategory _$$_ProductCategoryFromJson(Map<String, dynamic> json) =>
    _$_ProductCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      parentId: json['parent_id'] as bool?,
      removalStrategyId: json['removal_strategy_id'] as bool?,
      propertyCostMethod: json['property_cost_method'] as String?,
      propertyValuation: json['property_valuation'] as String?,
      propertyAccountCreditorPriceDifferenceCateg:
          json['property_account_creditor_price_difference_categ'] as bool?,
      propertyAccountExpenseCategId:
          json['property_account_expense_categ_id'] as int?,
      propertyAccountIncomeCategId:
          json['property_account_income_categ_id'] as int?,
      propertyStockAccountInputCategId:
          json['property_stock_account_input_categ_id'] as int?,
      propertyStockAccountOutputCategId:
          json['property_stock_account_output_categ_id'] as int?,
      propertyStockValuationAccountId:
          json['property_stock_valuation_account_id'] as int?,
    );

Map<String, dynamic> _$$_ProductCategoryToJson(_$_ProductCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parent_id': instance.parentId,
      'removal_strategy_id': instance.removalStrategyId,
      'property_cost_method': instance.propertyCostMethod,
      'property_valuation': instance.propertyValuation,
      'property_account_creditor_price_difference_categ':
          instance.propertyAccountCreditorPriceDifferenceCateg,
      'property_account_expense_categ_id':
          instance.propertyAccountExpenseCategId,
      'property_account_income_categ_id': instance.propertyAccountIncomeCategId,
      'property_stock_account_input_categ_id':
          instance.propertyStockAccountInputCategId,
      'property_stock_account_output_categ_id':
          instance.propertyStockAccountOutputCategId,
      'property_stock_valuation_account_id':
          instance.propertyStockValuationAccountId,
    };

_$_ProductCategoryResults _$$_ProductCategoryResultsFromJson(
        Map<String, dynamic> json) =>
    _$_ProductCategoryResults(
      productCategories: (json['results'] as List<dynamic>)
          .map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductCategoryResultsToJson(
        _$_ProductCategoryResults instance) =>
    <String, dynamic>{
      'results': instance.productCategories,
    };
