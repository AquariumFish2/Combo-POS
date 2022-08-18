// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      companyId: customFromJson(json['company_id']),
      accessoryProductIds: customFromJson(json['accessory_product_ids']),
      alternativeProductIds: customFromJson(json['alternative_product_ids']),
      availableInPos: json['available_in_pos'] as bool?,
      barcode: customFromJson(json['barcode']),
      branchId: customFromJson(json['branch_id']),
      categId: customFromJson(json['categ_id']),
      defaultCode: customFromJson(json['default_code']),
      detailedType: customFromJson(json['detailed_type']),
      taxesId: customFromJson(json['taxes_id']),
      extraProducts: customFromJson(json['extra_products']),
      image1920: customFromJson(json['image_1920']),
      invisibleInUi: json['invisible_in_ui'] as bool?,
      invoicePolicy: customFromJson(json['invoice_policy']),
      isDiscount: json['is_discount'] as bool?,
      isExtra: json['is_extra'] as bool?,
      listPrice: customFromJson(json['list_price']),
      posCategId: customFromJson(json['pos_categ_id']),
      propertyAccountCreditorPriceDifference:
          customFromJson(json['property_account_creditor_price_difference']),
      propertyAccountExpenseId:
          customFromJson(json['property_account_expense_id']),
      propertyAccountIncomeId:
          customFromJson(json['property_account_income_id']),
      publicCategIds: customFromJson(json['public_categ_ids']),
      purchaseOk: json['purchase_ok'] as bool?,
      saleDelay: customFromJson(json['sale_delay']),
      saleOk: json['sale_ok'] as bool?,
      standardPrice: customFromJson(json['standard_price']),
      toWeight: json['to_weight'] as bool?,
      volume: customFromJson(json['volume']),
      websiteId: customFromJson(json['website_id']),
      websiteRibbonId: customFromJson(json['website_ribbon_id']),
      websiteSequence: customFromJson(json['website_sequence']),
      weight: customFromJson(json['weight']),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'image_1920': instance.image1920,
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
      'available_in_pos': instance.availableInPos,
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
      'is_discount': instance.isDiscount,
      'is_extra': instance.isExtra,
      'extra_products': instance.extraProducts,
    };

ProductMapper _$ProductMapperFromJson(Map<String, dynamic> json) =>
    ProductMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductMapperToJson(ProductMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
