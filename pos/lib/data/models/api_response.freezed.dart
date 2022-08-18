// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

APIResponse _$APIResponseFromJson(Map<String, dynamic> json) {
  return _APIResponse.fromJson(json);
}

/// @nodoc
class _$APIResponseTearOff {
  const _$APIResponseTearOff();

  _APIResponse call(
      {dynamic result, Map<dynamic, dynamic>? headers, APIError? error}) {
    return _APIResponse(
      result: result,
      headers: headers,
      error: error,
    );
  }

  APIResponse fromJson(Map<String, Object?> json) {
    return APIResponse.fromJson(json);
  }
}

/// @nodoc
const $APIResponse = _$APIResponseTearOff();

/// @nodoc
mixin _$APIResponse {
  dynamic get result => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get headers => throw _privateConstructorUsedError;
  APIError? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIResponseCopyWith<APIResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResponseCopyWith<$Res> {
  factory $APIResponseCopyWith(
          APIResponse value, $Res Function(APIResponse) then) =
      _$APIResponseCopyWithImpl<$Res>;
  $Res call({dynamic result, Map<dynamic, dynamic>? headers, APIError? error});

  $APIErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$APIResponseCopyWithImpl<$Res> implements $APIResponseCopyWith<$Res> {
  _$APIResponseCopyWithImpl(this._value, this._then);

  final APIResponse _value;
  // ignore: unused_field
  final $Res Function(APIResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? headers = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
      headers: headers == freezed
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as APIError?,
    ));
  }

  @override
  $APIErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $APIErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$APIResponseCopyWith<$Res>
    implements $APIResponseCopyWith<$Res> {
  factory _$APIResponseCopyWith(
          _APIResponse value, $Res Function(_APIResponse) then) =
      __$APIResponseCopyWithImpl<$Res>;
  @override
  $Res call({dynamic result, Map<dynamic, dynamic>? headers, APIError? error});

  @override
  $APIErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$APIResponseCopyWithImpl<$Res> extends _$APIResponseCopyWithImpl<$Res>
    implements _$APIResponseCopyWith<$Res> {
  __$APIResponseCopyWithImpl(
      _APIResponse _value, $Res Function(_APIResponse) _then)
      : super(_value, (v) => _then(v as _APIResponse));

  @override
  _APIResponse get _value => super._value as _APIResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? headers = freezed,
    Object? error = freezed,
  }) {
    return _then(_APIResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
      headers: headers == freezed
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as APIError?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_APIResponse with DiagnosticableTreeMixin implements _APIResponse {
  const _$_APIResponse({this.result, this.headers, this.error});

  factory _$_APIResponse.fromJson(Map<String, dynamic> json) =>
      _$$_APIResponseFromJson(json);

  @override
  final dynamic result;
  @override
  final Map<dynamic, dynamic>? headers;
  @override
  final APIError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'APIResponse(result: $result, headers: $headers, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'APIResponse'))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('headers', headers))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _APIResponse &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.headers, headers) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(headers),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$APIResponseCopyWith<_APIResponse> get copyWith =>
      __$APIResponseCopyWithImpl<_APIResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_APIResponseToJson(this);
  }
}

abstract class _APIResponse implements APIResponse {
  const factory _APIResponse(
      {dynamic result,
      Map<dynamic, dynamic>? headers,
      APIError? error}) = _$_APIResponse;

  factory _APIResponse.fromJson(Map<String, dynamic> json) =
      _$_APIResponse.fromJson;

  @override
  dynamic get result;
  @override
  Map<dynamic, dynamic>? get headers;
  @override
  APIError? get error;
  @override
  @JsonKey(ignore: true)
  _$APIResponseCopyWith<_APIResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

APIError _$APIErrorFromJson(Map<String, dynamic> json) {
  return _APIError.fromJson(json);
}

/// @nodoc
class _$APIErrorTearOff {
  const _$APIErrorTearOff();

  _APIError call({required int code, required APIErrorData data}) {
    return _APIError(
      code: code,
      data: data,
    );
  }

  APIError fromJson(Map<String, Object?> json) {
    return APIError.fromJson(json);
  }
}

/// @nodoc
const $APIError = _$APIErrorTearOff();

/// @nodoc
mixin _$APIError {
  int get code => throw _privateConstructorUsedError;
  APIErrorData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIErrorCopyWith<APIError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIErrorCopyWith<$Res> {
  factory $APIErrorCopyWith(APIError value, $Res Function(APIError) then) =
      _$APIErrorCopyWithImpl<$Res>;
  $Res call({int code, APIErrorData data});

  $APIErrorDataCopyWith<$Res> get data;
}

/// @nodoc
class _$APIErrorCopyWithImpl<$Res> implements $APIErrorCopyWith<$Res> {
  _$APIErrorCopyWithImpl(this._value, this._then);

  final APIError _value;
  // ignore: unused_field
  final $Res Function(APIError) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as APIErrorData,
    ));
  }

  @override
  $APIErrorDataCopyWith<$Res> get data {
    return $APIErrorDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$APIErrorCopyWith<$Res> implements $APIErrorCopyWith<$Res> {
  factory _$APIErrorCopyWith(_APIError value, $Res Function(_APIError) then) =
      __$APIErrorCopyWithImpl<$Res>;
  @override
  $Res call({int code, APIErrorData data});

  @override
  $APIErrorDataCopyWith<$Res> get data;
}

/// @nodoc
class __$APIErrorCopyWithImpl<$Res> extends _$APIErrorCopyWithImpl<$Res>
    implements _$APIErrorCopyWith<$Res> {
  __$APIErrorCopyWithImpl(_APIError _value, $Res Function(_APIError) _then)
      : super(_value, (v) => _then(v as _APIError));

  @override
  _APIError get _value => super._value as _APIError;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_APIError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as APIErrorData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_APIError with DiagnosticableTreeMixin implements _APIError {
  const _$_APIError({required this.code, required this.data});

  factory _$_APIError.fromJson(Map<String, dynamic> json) =>
      _$$_APIErrorFromJson(json);

  @override
  final int code;
  @override
  final APIErrorData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'APIError(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'APIError'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _APIError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$APIErrorCopyWith<_APIError> get copyWith =>
      __$APIErrorCopyWithImpl<_APIError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_APIErrorToJson(this);
  }
}

abstract class _APIError implements APIError {
  const factory _APIError({required int code, required APIErrorData data}) =
      _$_APIError;

  factory _APIError.fromJson(Map<String, dynamic> json) = _$_APIError.fromJson;

  @override
  int get code;
  @override
  APIErrorData get data;
  @override
  @JsonKey(ignore: true)
  _$APIErrorCopyWith<_APIError> get copyWith =>
      throw _privateConstructorUsedError;
}

APIErrorData _$APIErrorDataFromJson(Map<String, dynamic> json) {
  return _APIErrorData.fromJson(json);
}

/// @nodoc
class _$APIErrorDataTearOff {
  const _$APIErrorDataTearOff();

  _APIErrorData call({required String message}) {
    return _APIErrorData(
      message: message,
    );
  }

  APIErrorData fromJson(Map<String, Object?> json) {
    return APIErrorData.fromJson(json);
  }
}

/// @nodoc
const $APIErrorData = _$APIErrorDataTearOff();

/// @nodoc
mixin _$APIErrorData {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIErrorDataCopyWith<APIErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIErrorDataCopyWith<$Res> {
  factory $APIErrorDataCopyWith(
          APIErrorData value, $Res Function(APIErrorData) then) =
      _$APIErrorDataCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$APIErrorDataCopyWithImpl<$Res> implements $APIErrorDataCopyWith<$Res> {
  _$APIErrorDataCopyWithImpl(this._value, this._then);

  final APIErrorData _value;
  // ignore: unused_field
  final $Res Function(APIErrorData) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$APIErrorDataCopyWith<$Res>
    implements $APIErrorDataCopyWith<$Res> {
  factory _$APIErrorDataCopyWith(
          _APIErrorData value, $Res Function(_APIErrorData) then) =
      __$APIErrorDataCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$APIErrorDataCopyWithImpl<$Res> extends _$APIErrorDataCopyWithImpl<$Res>
    implements _$APIErrorDataCopyWith<$Res> {
  __$APIErrorDataCopyWithImpl(
      _APIErrorData _value, $Res Function(_APIErrorData) _then)
      : super(_value, (v) => _then(v as _APIErrorData));

  @override
  _APIErrorData get _value => super._value as _APIErrorData;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_APIErrorData(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_APIErrorData with DiagnosticableTreeMixin implements _APIErrorData {
  const _$_APIErrorData({required this.message});

  factory _$_APIErrorData.fromJson(Map<String, dynamic> json) =>
      _$$_APIErrorDataFromJson(json);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'APIErrorData(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'APIErrorData'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _APIErrorData &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$APIErrorDataCopyWith<_APIErrorData> get copyWith =>
      __$APIErrorDataCopyWithImpl<_APIErrorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_APIErrorDataToJson(this);
  }
}

abstract class _APIErrorData implements APIErrorData {
  const factory _APIErrorData({required String message}) = _$_APIErrorData;

  factory _APIErrorData.fromJson(Map<String, dynamic> json) =
      _$_APIErrorData.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$APIErrorDataCopyWith<_APIErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}
