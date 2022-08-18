// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pay _$PayFromJson(Map<String, dynamic> json) => Pay(
      id: json['id'] as int? ?? 0,
      odooId: json['odooId'] as int,
      money: (json['money'] as num).toDouble(),
      type: json['type'] as String,
      aquirded: (json['aquirded'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
      bank: json['bank'] as bool?,
      cash: json['cash'] as bool?,
      others: json['others'] as bool?,
    );

Map<String, dynamic> _$PayToJson(Pay instance) => <String, dynamic>{
      'id': instance.id,
      'odooId': instance.odooId,
      'cash': instance.cash,
      'bank': instance.bank,
      'others': instance.others,
      'money': instance.money,
      'change': instance.change,
      'aquirded': instance.aquirded,
      'type': instance.type,
    };
