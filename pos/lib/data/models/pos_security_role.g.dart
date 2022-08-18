// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_security_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_POSSecurityRole _$$_POSSecurityRoleFromJson(Map<String, dynamic> json) =>
    _$_POSSecurityRole(
      id: json['id'] as int,
      name: json['name'] as String,
      desc: json['desc'] as bool?,
      key: json['key'] as String?,
      isDefaultValue: json['is_default_value'] as bool?,
      companyId: json['company_id'] as int?,
    );

Map<String, dynamic> _$$_POSSecurityRoleToJson(_$_POSSecurityRole instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'key': instance.key,
      'is_default_value': instance.isDefaultValue,
      'company_id': instance.companyId,
    };

_$_POSSecurityRoleResults _$$_POSSecurityRoleResultsFromJson(
        Map<String, dynamic> json) =>
    _$_POSSecurityRoleResults(
      POSSecurityRoles: (json['results'] as List<dynamic>)
          .map((e) => POSSecurityRole.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_POSSecurityRoleResultsToJson(
        _$_POSSecurityRoleResults instance) =>
    <String, dynamic>{
      'results': instance.POSSecurityRoles,
    };
