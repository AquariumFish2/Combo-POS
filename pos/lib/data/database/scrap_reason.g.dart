// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scrap_reason.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScrapReasons _$ScrapReasonsFromJson(Map<String, dynamic> json) => ScrapReasons(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      shortName: customFromJson(json['short_name']),
      desc: customFromJson(json['desc']),
    );

Map<String, dynamic> _$ScrapReasonsToJson(ScrapReasons instance) =>
    <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'short_name': instance.shortName,
      'desc': instance.desc,
    };

ScrapReasonsMapper _$ScrapReasonsMapperFromJson(Map<String, dynamic> json) =>
    ScrapReasonsMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => ScrapReasons.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScrapReasonsMapperToJson(ScrapReasonsMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
