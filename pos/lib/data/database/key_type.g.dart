// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KeyType _$KeyTypeFromJson(Map<String, dynamic> json) => KeyType(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
    );

Map<String, dynamic> _$KeyTypeToJson(KeyType instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
    };

KeyTypeMapper _$KeyTypeMapperFromJson(Map<String, dynamic> json) =>
    KeyTypeMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => KeyType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$KeyTypeMapperToJson(KeyTypeMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
