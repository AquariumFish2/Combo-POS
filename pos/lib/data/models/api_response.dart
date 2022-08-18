import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class APIResponse with _$APIResponse {
  const factory APIResponse({
    dynamic result,
    Map? headers,
    APIError? error,
  }) = _APIResponse;
  factory APIResponse.fromJson(Map<String, dynamic> json) =>
      _$APIResponseFromJson(json);
}

@freezed
class APIError with _$APIError {
  const factory APIError({
    required int code,
    required APIErrorData data,
  }) = _APIError;
  factory APIError.fromJson(Map<String, dynamic> json) =>
      _$APIErrorFromJson(json);
}

@freezed
class APIErrorData with _$APIErrorData {
  const factory APIErrorData({
    required String message,
  }) = _APIErrorData;
  factory APIErrorData.fromJson(Map<String, dynamic> json) =>
      _$APIErrorDataFromJson(json);
}
