// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_reason.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnReason _$ReturnReasonFromJson(Map<String, dynamic> json) => ReturnReason(
      odooId: json['id'] as int,
      id: json['_'] as int? ?? 0,
      name: customFromJson(json['name']),
      companyName: customFromJson(json['company_name']),
    );

Map<String, dynamic> _$ReturnReasonToJson(ReturnReason instance) =>
    <String, dynamic>{
      '_': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'company_name': instance.companyName,
    };

ReturnReasonMapper _$ReturnReasonMapperFromJson(Map<String, dynamic> json) =>
    ReturnReasonMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => ReturnReason.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReturnReasonMapperToJson(ReturnReasonMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
