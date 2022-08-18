// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionStatus _$SessionStatusFromJson(Map<String, dynamic> json) =>
    SessionStatus(
      posSessionId: json['pos_session_id'] as int,
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$SessionStatusToJson(SessionStatus instance) =>
    <String, dynamic>{
      'pos_session_id': instance.posSessionId,
      'success': instance.success,
      'message': instance.message,
    };

SessionStatusMapper _$SessionStatusMapperFromJson(Map<String, dynamic> json) =>
    SessionStatusMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => SessionStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SessionStatusMapperToJson(
        SessionStatusMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
