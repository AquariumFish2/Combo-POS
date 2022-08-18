// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_POSGroup _$$_POSGroupFromJson(Map<String, dynamic> json) => _$_POSGroup(
      id: json['id'] as int,
      name: json['name'] as String,
      posRoleIds: (json['pos_role_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      posUserIds: (json['pos_user_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      companyId: json['company_id'] as int?,
    );

Map<String, dynamic> _$$_POSGroupToJson(_$_POSGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pos_role_ids': instance.posRoleIds,
      'pos_user_ids': instance.posUserIds,
      'company_id': instance.companyId,
    };

_$_POSGroupResults _$$_POSGroupResultsFromJson(Map<String, dynamic> json) =>
    _$_POSGroupResults(
      POSGroups: (json['results'] as List<dynamic>)
          .map((e) => POSGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_POSGroupResultsToJson(_$_POSGroupResults instance) =>
    <String, dynamic>{
      'results': instance.POSGroups,
    };
