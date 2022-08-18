// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_POSConfig _$$_POSConfigFromJson(Map<String, dynamic> json) => _$_POSConfig(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_POSConfigToJson(_$_POSConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_POSConfigResults _$$_POSConfigResultsFromJson(Map<String, dynamic> json) =>
    _$_POSConfigResults(
      POSConfigs: (json['results'] as List<dynamic>)
          .map((e) => POSConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_POSConfigResultsToJson(_$_POSConfigResults instance) =>
    <String, dynamic>{
      'results': instance.POSConfigs,
    };
