// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'return_reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReturnReason _$ReturnReasonFromJson(Map<String, dynamic> json) {
  return _ReturnReason.fromJson(json);
}

/// @nodoc
class _$ReturnReasonTearOff {
  const _$ReturnReasonTearOff();

  _ReturnReason call(
      {int? id,
      required String name,
      @JsonKey(name: 'company_name') String? companyName}) {
    return _ReturnReason(
      id: id,
      name: name,
      companyName: companyName,
    );
  }

  ReturnReason fromJson(Map<String, Object?> json) {
    return ReturnReason.fromJson(json);
  }
}

/// @nodoc
const $ReturnReason = _$ReturnReasonTearOff();

/// @nodoc
mixin _$ReturnReason {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnReasonCopyWith<ReturnReason> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnReasonCopyWith<$Res> {
  factory $ReturnReasonCopyWith(
          ReturnReason value, $Res Function(ReturnReason) then) =
      _$ReturnReasonCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String name,
      @JsonKey(name: 'company_name') String? companyName});
}

/// @nodoc
class _$ReturnReasonCopyWithImpl<$Res> implements $ReturnReasonCopyWith<$Res> {
  _$ReturnReasonCopyWithImpl(this._value, this._then);

  final ReturnReason _value;
  // ignore: unused_field
  final $Res Function(ReturnReason) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ReturnReasonCopyWith<$Res>
    implements $ReturnReasonCopyWith<$Res> {
  factory _$ReturnReasonCopyWith(
          _ReturnReason value, $Res Function(_ReturnReason) then) =
      __$ReturnReasonCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String name,
      @JsonKey(name: 'company_name') String? companyName});
}

/// @nodoc
class __$ReturnReasonCopyWithImpl<$Res> extends _$ReturnReasonCopyWithImpl<$Res>
    implements _$ReturnReasonCopyWith<$Res> {
  __$ReturnReasonCopyWithImpl(
      _ReturnReason _value, $Res Function(_ReturnReason) _then)
      : super(_value, (v) => _then(v as _ReturnReason));

  @override
  _ReturnReason get _value => super._value as _ReturnReason;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_ReturnReason(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReturnReason implements _ReturnReason {
  const _$_ReturnReason(
      {this.id,
      required this.name,
      @JsonKey(name: 'company_name') this.companyName});

  factory _$_ReturnReason.fromJson(Map<String, dynamic> json) =>
      _$$_ReturnReasonFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;

  @override
  String toString() {
    return 'ReturnReason(id: $id, name: $name, companyName: $companyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReturnReason &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(companyName));

  @JsonKey(ignore: true)
  @override
  _$ReturnReasonCopyWith<_ReturnReason> get copyWith =>
      __$ReturnReasonCopyWithImpl<_ReturnReason>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReturnReasonToJson(this);
  }
}

abstract class _ReturnReason implements ReturnReason {
  const factory _ReturnReason(
      {int? id,
      required String name,
      @JsonKey(name: 'company_name') String? companyName}) = _$_ReturnReason;

  factory _ReturnReason.fromJson(Map<String, dynamic> json) =
      _$_ReturnReason.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @override
  @JsonKey(ignore: true)
  _$ReturnReasonCopyWith<_ReturnReason> get copyWith =>
      throw _privateConstructorUsedError;
}

ReturnReasonResults _$ReturnReasonResultsFromJson(Map<String, dynamic> json) {
  return _ReturnReasonResults.fromJson(json);
}

/// @nodoc
class _$ReturnReasonResultsTearOff {
  const _$ReturnReasonResultsTearOff();

  _ReturnReasonResults call(
      {@JsonKey(name: 'results') required List<ReturnReason> returnReasons}) {
    return _ReturnReasonResults(
      returnReasons: returnReasons,
    );
  }

  ReturnReasonResults fromJson(Map<String, Object?> json) {
    return ReturnReasonResults.fromJson(json);
  }
}

/// @nodoc
const $ReturnReasonResults = _$ReturnReasonResultsTearOff();

/// @nodoc
mixin _$ReturnReasonResults {
  @JsonKey(name: 'results')
  List<ReturnReason> get returnReasons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnReasonResultsCopyWith<ReturnReasonResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnReasonResultsCopyWith<$Res> {
  factory $ReturnReasonResultsCopyWith(
          ReturnReasonResults value, $Res Function(ReturnReasonResults) then) =
      _$ReturnReasonResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<ReturnReason> returnReasons});
}

/// @nodoc
class _$ReturnReasonResultsCopyWithImpl<$Res>
    implements $ReturnReasonResultsCopyWith<$Res> {
  _$ReturnReasonResultsCopyWithImpl(this._value, this._then);

  final ReturnReasonResults _value;
  // ignore: unused_field
  final $Res Function(ReturnReasonResults) _then;

  @override
  $Res call({
    Object? returnReasons = freezed,
  }) {
    return _then(_value.copyWith(
      returnReasons: returnReasons == freezed
          ? _value.returnReasons
          : returnReasons // ignore: cast_nullable_to_non_nullable
              as List<ReturnReason>,
    ));
  }
}

/// @nodoc
abstract class _$ReturnReasonResultsCopyWith<$Res>
    implements $ReturnReasonResultsCopyWith<$Res> {
  factory _$ReturnReasonResultsCopyWith(_ReturnReasonResults value,
          $Res Function(_ReturnReasonResults) then) =
      __$ReturnReasonResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<ReturnReason> returnReasons});
}

/// @nodoc
class __$ReturnReasonResultsCopyWithImpl<$Res>
    extends _$ReturnReasonResultsCopyWithImpl<$Res>
    implements _$ReturnReasonResultsCopyWith<$Res> {
  __$ReturnReasonResultsCopyWithImpl(
      _ReturnReasonResults _value, $Res Function(_ReturnReasonResults) _then)
      : super(_value, (v) => _then(v as _ReturnReasonResults));

  @override
  _ReturnReasonResults get _value => super._value as _ReturnReasonResults;

  @override
  $Res call({
    Object? returnReasons = freezed,
  }) {
    return _then(_ReturnReasonResults(
      returnReasons: returnReasons == freezed
          ? _value.returnReasons
          : returnReasons // ignore: cast_nullable_to_non_nullable
              as List<ReturnReason>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReturnReasonResults implements _ReturnReasonResults {
  const _$_ReturnReasonResults(
      {@JsonKey(name: 'results') required this.returnReasons});

  factory _$_ReturnReasonResults.fromJson(Map<String, dynamic> json) =>
      _$$_ReturnReasonResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<ReturnReason> returnReasons;

  @override
  String toString() {
    return 'ReturnReasonResults(returnReasons: $returnReasons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReturnReasonResults &&
            const DeepCollectionEquality()
                .equals(other.returnReasons, returnReasons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(returnReasons));

  @JsonKey(ignore: true)
  @override
  _$ReturnReasonResultsCopyWith<_ReturnReasonResults> get copyWith =>
      __$ReturnReasonResultsCopyWithImpl<_ReturnReasonResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReturnReasonResultsToJson(this);
  }
}

abstract class _ReturnReasonResults implements ReturnReasonResults {
  const factory _ReturnReasonResults(
      {@JsonKey(name: 'results')
          required List<ReturnReason> returnReasons}) = _$_ReturnReasonResults;

  factory _ReturnReasonResults.fromJson(Map<String, dynamic> json) =
      _$_ReturnReasonResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<ReturnReason> get returnReasons;
  @override
  @JsonKey(ignore: true)
  _$ReturnReasonResultsCopyWith<_ReturnReasonResults> get copyWith =>
      throw _privateConstructorUsedError;
}
