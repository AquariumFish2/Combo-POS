// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int,
      image1920: json['image_1920'] as String?,
      name: json['name'] as String,
      arabicName: json['arabic_name'] as bool?,
      saleOk: json['sale_ok'] as bool?,
      purchaseOk: json['purchase_ok'] as bool?,
      detailedType: json['detailed_type'] as String?,
      invoicePolicy: json['invoice_policy'] as String?,
      listPrice: json['list_price'] as int?,
      taxesId: json['taxes_id'] as List<dynamic>?,
      standardPrice: json['standard_price'] as int?,
      defaultCode: json['default_code'] as String?,
      barcode: json['barcode'] as bool?,
      categId: json['categ_id'] as int?,
      companyId: json['company_id'] as bool?,
      branchId: json['branch_id'] as bool?,
      accessoryProductIds: json['accessory_product_ids'] as List<dynamic>?,
      alternativeProductIds: json['alternative_product_ids'] as List<dynamic>?,
      availableInPOS: json['available_in_pos'] as bool?,
      invisibleInUi: json['invisible_in_ui'] as bool?,
      toWeight: json['to_weight'] as bool?,
      posCategId: json['pos_categ_id'] as bool?,
      websiteId: json['website_id'] as bool?,
      websiteSequence: json['website_sequence'] as int?,
      publicCategIds: json['public_categ_ids'] as List<dynamic>?,
      websiteRibbonId: json['website_ribbon_id'] as bool?,
      weight: json['weight'] as int?,
      volume: json['volume'] as int?,
      saleDelay: json['sale_delay'] as int?,
      propertyAccountCreditorPriceDifference:
          json['property_account_creditor_price_difference'] as bool?,
      propertyAccountExpenseId: json['property_account_expense_id'] as bool?,
      propertyAccountIncomeId: json['property_account_income_id'] as bool?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_1920': instance.image1920,
      'name': instance.name,
      'arabic_name': instance.arabicName,
      'sale_ok': instance.saleOk,
      'purchase_ok': instance.purchaseOk,
      'detailed_type': instance.detailedType,
      'invoice_policy': instance.invoicePolicy,
      'list_price': instance.listPrice,
      'taxes_id': instance.taxesId,
      'standard_price': instance.standardPrice,
      'default_code': instance.defaultCode,
      'barcode': instance.barcode,
      'categ_id': instance.categId,
      'company_id': instance.companyId,
      'branch_id': instance.branchId,
      'accessory_product_ids': instance.accessoryProductIds,
      'alternative_product_ids': instance.alternativeProductIds,
      'available_in_pos': instance.availableInPOS,
      'invisible_in_ui': instance.invisibleInUi,
      'to_weight': instance.toWeight,
      'pos_categ_id': instance.posCategId,
      'website_id': instance.websiteId,
      'website_sequence': instance.websiteSequence,
      'public_categ_ids': instance.publicCategIds,
      'website_ribbon_id': instance.websiteRibbonId,
      'weight': instance.weight,
      'volume': instance.volume,
      'sale_delay': instance.saleDelay,
      'property_account_creditor_price_difference':
          instance.propertyAccountCreditorPriceDifference,
      'property_account_expense_id': instance.propertyAccountExpenseId,
      'property_account_income_id': instance.propertyAccountIncomeId,
    };

_$_ProductResults _$$_ProductResultsFromJson(Map<String, dynamic> json) =>
    _$_ProductResults(
      products: (json['result'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductResultsToJson(_$_ProductResults instance) =>
    <String, dynamic>{
      'result': instance.products,
    };
