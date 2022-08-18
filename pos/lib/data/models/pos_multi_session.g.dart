// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_multi_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_POSMultiSession _$$_POSMultiSessionFromJson(Map<String, dynamic> json) =>
    _$_POSMultiSession(
      id: json['id'] as String,
      name: json['name'] as String,
      posIds: (json['pos_ids'] as List<dynamic>?)
          ?.map((e) => Map<String, int>.from(e as Map))
          .toList(),
      floorIds:
          (json['floor_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      tableBlocking: json['table_blocking'] as bool?,
      multiSessionActive: json['multi_session_active'] as bool?,
      syncServer: json['sync_server'] as String?,
      fiscalPositionIds: (json['fiscal_position_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      companyId: json['company_id'] as int?,
    );

Map<String, dynamic> _$$_POSMultiSessionToJson(_$_POSMultiSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pos_ids': instance.posIds,
      'floor_ids': instance.floorIds,
      'table_blocking': instance.tableBlocking,
      'multi_session_active': instance.multiSessionActive,
      'sync_server': instance.syncServer,
      'fiscal_position_ids': instance.fiscalPositionIds,
      'company_id': instance.companyId,
    };

_$_POSMultiSessionResults _$$_POSMultiSessionResultsFromJson(
        Map<String, dynamic> json) =>
    _$_POSMultiSessionResults(
      POSMultiSessions: (json['results'] as List<dynamic>)
          .map((e) => POSMultiSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_POSMultiSessionResultsToJson(
        _$_POSMultiSessionResults instance) =>
    <String, dynamic>{
      'results': instance.POSMultiSessions,
    };
