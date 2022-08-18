// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_multi_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

POSMultiSession _$POSMultiSessionFromJson(Map<String, dynamic> json) =>
    POSMultiSession(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      companyId: customFromJson(json['company_id']),
      fiscalPositionIds: customFromJson(json['fiscal_position_ids']),
      floorIds: customFromJson(json['floor_ids']),
      multiSessionActive: customFromJson(json['multi_session_active']),
      posIds: customFromJson(json['pos_ids']),
      syncServer: customFromJson(json['sync_server']),
      tableBlocking: customFromJson(json['table_blocking']),
    );

Map<String, dynamic> _$POSMultiSessionToJson(POSMultiSession instance) =>
    <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'pos_ids': instance.posIds,
      'floor_ids': instance.floorIds,
      'table_blocking': instance.tableBlocking,
      'multi_session_active': instance.multiSessionActive,
      'sync_server': instance.syncServer,
      'fiscal_position_ids': instance.fiscalPositionIds,
      'company_id': instance.companyId,
    };

POSMultiSessionMapper _$POSMultiSessionMapperFromJson(
        Map<String, dynamic> json) =>
    POSMultiSessionMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => POSMultiSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$POSMultiSessionMapperToJson(
        POSMultiSessionMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
