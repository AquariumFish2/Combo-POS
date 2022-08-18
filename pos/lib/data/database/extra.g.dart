// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Extra _$ExtraFromJson(Map<String, dynamic> json) => Extra(
      id: json['id'] as int? ?? 0,
      productId: json['productId'] as int,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      isSelected: json['isSelected'] as bool,
      extraProducts: (json['extraProducts'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$ExtraToJson(Extra instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'isSelected': instance.isSelected,
      'productId': instance.productId,
      'extraProducts': instance.extraProducts,
    };
