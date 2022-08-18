// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_reason.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReturnReason _$$_ReturnReasonFromJson(Map<String, dynamic> json) =>
    _$_ReturnReason(
      id: json['id'] as int?,
      name: json['name'] as String,
      companyName: json['company_name'] as String?,
    );

Map<String, dynamic> _$$_ReturnReasonToJson(_$_ReturnReason instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'company_name': instance.companyName,
    };

_$_ReturnReasonResults _$$_ReturnReasonResultsFromJson(
        Map<String, dynamic> json) =>
    _$_ReturnReasonResults(
      returnReasons: (json['results'] as List<dynamic>)
          .map((e) => ReturnReason.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReturnReasonResultsToJson(
        _$_ReturnReasonResults instance) =>
    <String, dynamic>{
      'results': instance.returnReasons,
    };
