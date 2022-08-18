// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

POSConfig _$POSConfigFromJson(Map<String, dynamic> json) {
  return _POSConfig.fromJson(json);
}

/// @nodoc
class _$POSConfigTearOff {
  const _$POSConfigTearOff();

  _POSConfig call({required int id, required String name}) {
    return _POSConfig(
      id: id,
      name: name,
    );
  }

  POSConfig fromJson(Map<String, Object?> json) {
    return POSConfig.fromJson(json);
  }
}

/// @nodoc
const $POSConfig = _$POSConfigTearOff();

/// @nodoc
mixin _$POSConfig {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSConfigCopyWith<POSConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSConfigCopyWith<$Res> {
  factory $POSConfigCopyWith(POSConfig value, $Res Function(POSConfig) then) =
      _$POSConfigCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$POSConfigCopyWithImpl<$Res> implements $POSConfigCopyWith<$Res> {
  _$POSConfigCopyWithImpl(this._value, this._then);

  final POSConfig _value;
  // ignore: unused_field
  final $Res Function(POSConfig) _then;

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
abstract class _$POSConfigCopyWith<$Res> implements $POSConfigCopyWith<$Res> {
  factory _$POSConfigCopyWith(
          _POSConfig value, $Res Function(_POSConfig) then) =
      __$POSConfigCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$POSConfigCopyWithImpl<$Res> extends _$POSConfigCopyWithImpl<$Res>
    implements _$POSConfigCopyWith<$Res> {
  __$POSConfigCopyWithImpl(_POSConfig _value, $Res Function(_POSConfig) _then)
      : super(_value, (v) => _then(v as _POSConfig));

  @override
  _POSConfig get _value => super._value as _POSConfig;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_POSConfig(
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
class _$_POSConfig implements _POSConfig {
  const _$_POSConfig({required this.id, required this.name});

  factory _$_POSConfig.fromJson(Map<String, dynamic> json) =>
      _$$_POSConfigFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'POSConfig(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSConfig &&
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
  _$POSConfigCopyWith<_POSConfig> get copyWith =>
      __$POSConfigCopyWithImpl<_POSConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSConfigToJson(this);
  }
}

abstract class _POSConfig implements POSConfig {
  const factory _POSConfig({required int id, required String name}) =
      _$_POSConfig;

  factory _POSConfig.fromJson(Map<String, dynamic> json) =
      _$_POSConfig.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$POSConfigCopyWith<_POSConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

POSConfigResults _$POSConfigResultsFromJson(Map<String, dynamic> json) {
  return _POSConfigResults.fromJson(json);
}

/// @nodoc
class _$POSConfigResultsTearOff {
  const _$POSConfigResultsTearOff();

  _POSConfigResults call(
      {@JsonKey(name: 'results') required List<POSConfig> POSConfigs}) {
    return _POSConfigResults(
      POSConfigs: POSConfigs,
    );
  }

  POSConfigResults fromJson(Map<String, Object?> json) {
    return POSConfigResults.fromJson(json);
  }
}

/// @nodoc
const $POSConfigResults = _$POSConfigResultsTearOff();

/// @nodoc
mixin _$POSConfigResults {
  @JsonKey(name: 'results')
  List<POSConfig> get POSConfigs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSConfigResultsCopyWith<POSConfigResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSConfigResultsCopyWith<$Res> {
  factory $POSConfigResultsCopyWith(
          POSConfigResults value, $Res Function(POSConfigResults) then) =
      _$POSConfigResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<POSConfig> POSConfigs});
}

/// @nodoc
class _$POSConfigResultsCopyWithImpl<$Res>
    implements $POSConfigResultsCopyWith<$Res> {
  _$POSConfigResultsCopyWithImpl(this._value, this._then);

  final POSConfigResults _value;
  // ignore: unused_field
  final $Res Function(POSConfigResults) _then;

  @override
  $Res call({
    Object? POSConfigs = freezed,
  }) {
    return _then(_value.copyWith(
      POSConfigs: POSConfigs == freezed
          ? _value.POSConfigs
          : POSConfigs // ignore: cast_nullable_to_non_nullable
              as List<POSConfig>,
    ));
  }
}

/// @nodoc
abstract class _$POSConfigResultsCopyWith<$Res>
    implements $POSConfigResultsCopyWith<$Res> {
  factory _$POSConfigResultsCopyWith(
          _POSConfigResults value, $Res Function(_POSConfigResults) then) =
      __$POSConfigResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<POSConfig> POSConfigs});
}

/// @nodoc
class __$POSConfigResultsCopyWithImpl<$Res>
    extends _$POSConfigResultsCopyWithImpl<$Res>
    implements _$POSConfigResultsCopyWith<$Res> {
  __$POSConfigResultsCopyWithImpl(
      _POSConfigResults _value, $Res Function(_POSConfigResults) _then)
      : super(_value, (v) => _then(v as _POSConfigResults));

  @override
  _POSConfigResults get _value => super._value as _POSConfigResults;

  @override
  $Res call({
    Object? POSConfigs = freezed,
  }) {
    return _then(_POSConfigResults(
      POSConfigs: POSConfigs == freezed
          ? _value.POSConfigs
          : POSConfigs // ignore: cast_nullable_to_non_nullable
              as List<POSConfig>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSConfigResults implements _POSConfigResults {
  const _$_POSConfigResults(
      {@JsonKey(name: 'results') required this.POSConfigs});

  factory _$_POSConfigResults.fromJson(Map<String, dynamic> json) =>
      _$$_POSConfigResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<POSConfig> POSConfigs;

  @override
  String toString() {
    return 'POSConfigResults(POSConfigs: $POSConfigs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSConfigResults &&
            const DeepCollectionEquality()
                .equals(other.POSConfigs, POSConfigs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(POSConfigs));

  @JsonKey(ignore: true)
  @override
  _$POSConfigResultsCopyWith<_POSConfigResults> get copyWith =>
      __$POSConfigResultsCopyWithImpl<_POSConfigResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSConfigResultsToJson(this);
  }
}

abstract class _POSConfigResults implements POSConfigResults {
  const factory _POSConfigResults(
          {@JsonKey(name: 'results') required List<POSConfig> POSConfigs}) =
      _$_POSConfigResults;

  factory _POSConfigResults.fromJson(Map<String, dynamic> json) =
      _$_POSConfigResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<POSConfig> get POSConfigs;
  @override
  @JsonKey(ignore: true)
  _$POSConfigResultsCopyWith<_POSConfigResults> get copyWith =>
      throw _privateConstructorUsedError;
}
