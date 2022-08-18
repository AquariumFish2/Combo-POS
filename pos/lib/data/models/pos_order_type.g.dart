// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_order_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_POSOrderType _$$_POSOrderTypeFromJson(Map<String, dynamic> json) =>
    _$_POSOrderType(
      id: json['id'] as int,
      name: json['name'] as String,
      isShowCustomerInfo: json['is_show_customer_info'] as bool?,
      isRequireInformation: json['is_require_information'] as bool?,
      isRequireDriver: json['is_require_driver'] as bool?,
      isAutoOpenTableScreen: json['is_auto_open_table_screen'] as bool?,
      pricelistId: json['pricelist_id'] as int?,
      type: json['type'] as String?,
      delivaryProductId: json['delivary_product_id'] as bool?,
      extraProductId: json['extra_product_id'] as bool?,
      extraPercentage: json['extra_percentage'] as int?,
      companyId: json['company_id'] as int?,
      accountJournalIds: (json['account_journal_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_POSOrderTypeToJson(_$_POSOrderType instance) =>
    <String, dynamic>{
      'id': instance.id,
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
      'account_journal_ids': instance.accountJournalIds,
    };

_$_POSOrderTypeResults _$$_POSOrderTypeResultsFromJson(
        Map<String, dynamic> json) =>
    _$_POSOrderTypeResults(
      POSOrderTypes: (json['results'] as List<dynamic>)
          .map((e) => POSOrderType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_POSOrderTypeResultsToJson(
        _$_POSOrderTypeResults instance) =>
    <String, dynamic>{
      'results': instance.POSOrderTypes,
    };
