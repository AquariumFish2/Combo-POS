// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

POSGroup _$POSGroupFromJson(Map<String, dynamic> json) => POSGroup(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      companyId: customFromJson(json['company_id']),
      posRoleIds: customFromJson(json['pos_role_ids']),
      posUserIds: customFromJson(json['pos_user_ids']),
    );

Map<String, dynamic> _$POSGroupToJson(POSGroup instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'pos_role_ids': instance.posRoleIds,
      'pos_user_ids': instance.posUserIds,
      'company_id': instance.companyId,
    };

POSGroupMapper _$POSGroupMapperFromJson(Map<String, dynamic> json) =>
    POSGroupMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => POSGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$POSGroupMapperToJson(POSGroupMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
