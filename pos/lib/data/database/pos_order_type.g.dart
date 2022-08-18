// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_order_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

POSOrderType _$POSOrderTypeFromJson(Map<String, dynamic> json) => POSOrderType(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      companyId: customFromJson(json['company_id']),
      delivaryProductId: customFromJson(json['delivary_product_id']),
      extraPercentage: customFromJson(json['extra_percentage']),
      extraProductId: customFromJson(json['extra_product_id']),
      isAutoOpenTableScreen: customFromJson(json['is_auto_open_table_screen']),
      isRequireDriver: customFromJson(json['is_require_driver']),
      isRequireInformation: customFromJson(json['is_require_information']),
      isShowCustomerInfo: customFromJson(json['is_show_customer_info']),
      paymentMethodIds: customFromJson(json['payment_method_ids']),
      pricelistId: customFromJson(json['pricelist_id']),
      type: customFromJson(json['type']),
    );

Map<String, dynamic> _$POSOrderTypeToJson(POSOrderType instance) =>
    <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'is_show_customer_info': instance.isShowCustomerInfo,
      'is_require_information': instance.isRequireInformation,
      'is_require_driver': instance.isRequireDriver,
      'is_auto_open_table_screen': instance.isAutoOpenTableScreen,
      'pricelist_id': instance.pricelistId,
      'type': instance.type,
      'delivary_product_id': instance.delivaryProductId,
      'extra_product_id': instance.extraProductId,
      'extra_percentage': instance.extraPercentage,
      'company_id': instance.companyId,
      'payment_method_ids': instance.paymentMethodIds,
    };

POSOrderTypeMapper _$POSOrderTypeMapperFromJson(Map<String, dynamic> json) =>
    POSOrderTypeMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => POSOrderType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$POSOrderTypeMapperToJson(POSOrderTypeMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
