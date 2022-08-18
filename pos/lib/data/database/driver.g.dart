// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Driver _$DriverFromJson(Map<String, dynamic> json) => Driver(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      code: customFromJson(json['code']),
      active: customFromJson(json['active']),
      companyId: customFromJson(json['company_id']),
    );

Map<String, dynamic> _$DriverToJson(Driver instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'code': instance.code,
      'active': instance.active,
      'company_id': instance.companyId,
    };

DriverMapper _$DriverMapperFromJson(Map<String, dynamic> json) => DriverMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DriverMapperToJson(DriverMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
