// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Table _$TableFromJson(Map<String, dynamic> json) => Table(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      floorId: customFromJson(json['floor_id']),
      locked: customFromJson(json['locked']),
      seats: customFromJson(json['seats']),
      shape: customFromJson(json['shape']),
    );

Map<String, dynamic> _$TableToJson(Table instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'seats': instance.seats,
      'floor_id': instance.floorId,
      'locked': instance.locked,
      'shape': instance.shape,
    };

TableMapper _$TableMapperFromJson(Map<String, dynamic> json) => TableMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Table.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TableMapperToJson(TableMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
