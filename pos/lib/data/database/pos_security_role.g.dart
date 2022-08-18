// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_security_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

POSSecurityRole _$POSSecurityRoleFromJson(Map<String, dynamic> json) =>
    POSSecurityRole(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      companyId: customFromJson(json['company_id']),
      desc: customFromJson(json['desc']),
      isDefaultValue: customFromJson(json['is_default_value']),
      keyId: customFromJson(json['key_id']),
    );

Map<String, dynamic> _$POSSecurityRoleToJson(POSSecurityRole instance) =>
    <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'desc': instance.desc,
      'key_id': instance.keyId,
      'is_default_value': instance.isDefaultValue,
      'company_id': instance.companyId,
    };

POSSecurityRoleMapper _$POSSecurityRoleMapperFromJson(
        Map<String, dynamic> json) =>
    POSSecurityRoleMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => POSSecurityRole.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$POSSecurityRoleMapperToJson(
        POSSecurityRoleMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
