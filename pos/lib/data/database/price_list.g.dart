// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceList _$PriceListFromJson(Map<String, dynamic> json) => PriceList(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      code: customFromJson(json['code']),
      countryGroupIds: customFromJson(json['country_group_ids']),
      selectable: customFromJson(json['selectable']),
      itemIds: customFromJson(json['item_ids']),
      websiteId: customFromJson(json['website_id']),
    );

Map<String, dynamic> _$PriceListToJson(PriceList instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'item_ids': instance.itemIds,
      'country_group_ids': instance.countryGroupIds,
      'website_id': instance.websiteId,
      'selectable': instance.selectable,
      'code': instance.code,
    };

ItemId _$ItemIdFromJson(Map<String, dynamic> json) => ItemId(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      dateEnd: customFromJson(json['date_end']),
      dateStart: customFromJson(json['date_start']),
      fixedPrice: customFromJson(json['fixed_price']),
      minQuantity: customFromJson(json['min_quantity']),
      productId: customFromJson(json['product_id']),
      productTmplId: customFromJson(json['product_tmpl_id']),
    );

Map<String, dynamic> _$ItemIdToJson(ItemId instance) => <String, dynamic>{
      'id': instance.odooId,
      '__': instance.id,
      'product_tmpl_id': instance.productTmplId,
      'product_id': instance.productId,
      'min_quantity': instance.minQuantity,
      'fixed_price': instance.fixedPrice,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
    };

PriceListMapper _$PriceListMapperFromJson(Map<String, dynamic> json) =>
    PriceListMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => PriceList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PriceListMapperToJson(PriceListMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
