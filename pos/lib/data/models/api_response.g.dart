// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_APIResponse _$$_APIResponseFromJson(Map<String, dynamic> json) =>
    _$_APIResponse(
      result: json['result'],
      headers: json['headers'] as Map<String, dynamic>?,
      error: json['error'] == null
          ? null
          : APIError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_APIResponseToJson(_$_APIResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'headers': instance.headers,
      'error': instance.error,
    };

_$_APIError _$$_APIErrorFromJson(Map<String, dynamic> json) => _$_APIError(
      code: json['code'] as int,
      data: APIErrorData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_APIErrorToJson(_$_APIError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_APIErrorData _$$_APIErrorDataFromJson(Map<String, dynamic> json) =>
    _$_APIErrorData(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_APIErrorDataToJson(_$_APIErrorData instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
