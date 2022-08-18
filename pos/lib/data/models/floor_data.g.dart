// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FloorData _$$_FloorDataFromJson(Map<String, dynamic> json) => _$_FloorData(
      id: json['id'] as int,
      name: json['name'] as String,
      posConfigId: json['pos_config_id'] as int?,
      pricelistId: json['pricelist_id'] as bool?,
      backgroundColor: json['background_color'] as String?,
      tableIds: (json['table_ids'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_FloorDataToJson(_$_FloorData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pos_config_id': instance.posConfigId,
      'pricelist_id': instance.pricelistId,
      'background_color': instance.backgroundColor,
      'table_ids': instance.tableIds,
    };

_$_FloorDataResults _$$_FloorDataResultsFromJson(Map<String, dynamic> json) =>
    _$_FloorDataResults(
      floorDatas: (json['results'] as List<dynamic>)
          .map((e) => FloorData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FloorDataResultsToJson(_$_FloorDataResults instance) =>
    <String, dynamic>{
      'results': instance.floorDatas,
    };
