// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_POS _$$_POSFromJson(Map<String, dynamic> json) => _$_POS(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_POSToJson(_$_POS instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_POSResults _$$_POSResultsFromJson(Map<String, dynamic> json) =>
    _$_POSResults(
      POSs: (json['results'] as List<dynamic>)
          .map((e) => POS.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_POSResultsToJson(_$_POSResults instance) =>
    <String, dynamic>{
      'results': instance.POSs,
    };
