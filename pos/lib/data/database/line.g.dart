// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Line _$LineFromJson(Map<String, dynamic> json) => Line(
      productId: json['product_id'] as int,
      productOBid: json['productOBid'] as int,
      id: json['id'] as int? ?? 0,
      fullProductName: customFromJson(json['full_product_name']),
      priceSubtotal: customFromJson(json['price_subtotal']),
      priceSubtotalIncl: customFromJson(json['price_subtotal_incl']),
      priceUnit: customFromJson(json['price_unit']),
      qty: customFromJson(json['qty']),
      gotDataOnce: json['gotDataOnce'] as bool? ?? false,
    );

Map<String, dynamic> _$LineToJson(Line instance) => <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'full_product_name': instance.fullProductName,
      'qty': instance.qty,
      'price_unit': instance.priceUnit,
      'price_subtotal': instance.priceSubtotal,
      'price_subtotal_incl': instance.priceSubtotalIncl,
      'gotDataOnce': instance.gotDataOnce,
      'productOBid': instance.productOBid,
    };

LineMapper _$LineMapperFromJson(Map<String, dynamic> json) => LineMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Line.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LineMapperToJson(LineMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
