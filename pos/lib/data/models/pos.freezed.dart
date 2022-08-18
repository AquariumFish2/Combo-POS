// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

POS _$POSFromJson(Map<String, dynamic> json) {
  return _POS.fromJson(json);
}

/// @nodoc
class _$POSTearOff {
  const _$POSTearOff();

  _POS call({required int id, required String name}) {
    return _POS(
      id: id,
      name: name,
    );
  }

  POS fromJson(Map<String, Object?> json) {
    return POS.fromJson(json);
  }
}

/// @nodoc
const $POS = _$POSTearOff();

/// @nodoc
mixin _$POS {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSCopyWith<POS> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSCopyWith<$Res> {
  factory $POSCopyWith(POS value, $Res Function(POS) then) =
      _$POSCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$POSCopyWithImpl<$Res> implements $POSCopyWith<$Res> {
  _$POSCopyWithImpl(this._value, this._then);

  final POS _value;
  // ignore: unused_field
  final $Res Function(POS) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$POSCopyWith<$Res> implements $POSCopyWith<$Res> {
  factory _$POSCopyWith(_POS value, $Res Function(_POS) then) =
      __$POSCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$POSCopyWithImpl<$Res> extends _$POSCopyWithImpl<$Res>
    implements _$POSCopyWith<$Res> {
  __$POSCopyWithImpl(_POS _value, $Res Function(_POS) _then)
      : super(_value, (v) => _then(v as _POS));

  @override
  _POS get _value => super._value as _POS;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_POS(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POS implements _POS {
  const _$_POS({required this.id, required this.name});

  factory _$_POS.fromJson(Map<String, dynamic> json) => _$$_POSFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'POS(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POS &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$POSCopyWith<_POS> get copyWith =>
      __$POSCopyWithImpl<_POS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSToJson(this);
  }
}

abstract class _POS implements POS {
  const factory _POS({required int id, required String name}) = _$_POS;

  factory _POS.fromJson(Map<String, dynamic> json) = _$_POS.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$POSCopyWith<_POS> get copyWith => throw _privateConstructorUsedError;
}

POSResults _$POSResultsFromJson(Map<String, dynamic> json) {
  return _POSResults.fromJson(json);
}

/// @nodoc
class _$POSResultsTearOff {
  const _$POSResultsTearOff();

  _POSResults call({@JsonKey(name: 'results') required List<POS> POSs}) {
    return _POSResults(
      POSs: POSs,
    );
  }

  POSResults fromJson(Map<String, Object?> json) {
    return POSResults.fromJson(json);
  }
}

/// @nodoc
const $POSResults = _$POSResultsTearOff();

/// @nodoc
mixin _$POSResults {
  @JsonKey(name: 'results')
  List<POS> get POSs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSResultsCopyWith<POSResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSResultsCopyWith<$Res> {
  factory $POSResultsCopyWith(
          POSResults value, $Res Function(POSResults) then) =
      _$POSResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<POS> POSs});
}

/// @nodoc
class _$POSResultsCopyWithImpl<$Res> implements $POSResultsCopyWith<$Res> {
  _$POSResultsCopyWithImpl(this._value, this._then);

  final POSResults _value;
  // ignore: unused_field
  final $Res Function(POSResults) _then;

  @override
  $Res call({
    Object? POSs = freezed,
  }) {
    return _then(_value.copyWith(
      POSs: POSs == freezed
          ? _value.POSs
          : POSs // ignore: cast_nullable_to_non_nullable
              as List<POS>,
    ));
  }
}

/// @nodoc
abstract class _$POSResultsCopyWith<$Res> implements $POSResultsCopyWith<$Res> {
  factory _$POSResultsCopyWith(
          _POSResults value, $Res Function(_POSResults) then) =
      __$POSResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<POS> POSs});
}

/// @nodoc
class __$POSResultsCopyWithImpl<$Res> extends _$POSResultsCopyWithImpl<$Res>
    implements _$POSResultsCopyWith<$Res> {
  __$POSResultsCopyWithImpl(
      _POSResults _value, $Res Function(_POSResults) _then)
      : super(_value, (v) => _then(v as _POSResults));

  @override
  _POSResults get _value => super._value as _POSResults;

  @override
  $Res call({
    Object? POSs = freezed,
  }) {
    return _then(_POSResults(
      POSs: POSs == freezed
          ? _value.POSs
          : POSs // ignore: cast_nullable_to_non_nullable
              as List<POS>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSResults implements _POSResults {
  const _$_POSResults({@JsonKey(name: 'results') required this.POSs});

  factory _$_POSResults.fromJson(Map<String, dynamic> json) =>
      _$$_POSResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<POS> POSs;

  @override
  String toString() {
    return 'POSResults(POSs: $POSs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSResults &&
            const DeepCollectionEquality().equals(other.POSs, POSs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(POSs));

  @JsonKey(ignore: true)
  @override
  _$POSResultsCopyWith<_POSResults> get copyWith =>
      __$POSResultsCopyWithImpl<_POSResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSResultsToJson(this);
  }
}

abstract class _POSResults implements POSResults {
  const factory _POSResults(
      {@JsonKey(name: 'results') required List<POS> POSs}) = _$_POSResults;

  factory _POSResults.fromJson(Map<String, dynamic> json) =
      _$_POSResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<POS> get POSs;
  @override
  @JsonKey(ignore: true)
  _$POSResultsCopyWith<_POSResults> get copyWith =>
      throw _privateConstructorUsedError;
}
