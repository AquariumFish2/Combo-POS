// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

POSType _$POSTypeFromJson(Map<String, dynamic> json) => POSType(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
    );

Map<String, dynamic> _$POSTypeToJson(POSType instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
    };

POSTypeMapper _$POSTypeMapperFromJson(Map<String, dynamic> json) =>
    POSTypeMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => POSType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$POSTypeMapperToJson(POSTypeMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
