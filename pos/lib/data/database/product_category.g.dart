// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) =>
    ProductCategory(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      parentId: customFromJson(json['parent_id']),
      propertyAccountCreditorPriceDifferenceCateg: customFromJson(
          json['property_account_creditor_price_difference_categ']),
      propertyAccountExpenseCategId:
          customFromJson(json['property_account_expense_categ_id']),
      propertyAccountIncomeCategId:
          customFromJson(json['property_account_income_categ_id']),
      propertyCostMethod: customFromJson(json['property_cost_method']),
      propertyStockAccountInputCategId:
          customFromJson(json['property_stock_account_input_categ_id']),
      propertyStockAccountOutputCategId:
          customFromJson(json['property_stock_account_output_categ_id']),
      propertyStockValuationAccountId:
          customFromJson(json['property_stock_valuation_account_id']),
      propertyValuation: customFromJson(json['property_valuation']),
      removalStrategyId: customFromJson(json['removal_strategy_id']),
    );

Map<String, dynamic> _$ProductCategoryToJson(ProductCategory instance) =>
    <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
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

ProductCategoryMapper _$ProductCategoryMapperFromJson(
        Map<String, dynamic> json) =>
    ProductCategoryMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductCategoryMapperToJson(
        ProductCategoryMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
