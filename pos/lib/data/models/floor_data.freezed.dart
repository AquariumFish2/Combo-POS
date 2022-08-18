// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'floor_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FloorData _$FloorDataFromJson(Map<String, dynamic> json) {
  return _FloorData.fromJson(json);
}

/// @nodoc
class _$FloorDataTearOff {
  const _$FloorDataTearOff();

  _FloorData call(
      {required int id,
      required String name,
      @JsonKey(name: 'pos_config_id') int? posConfigId,
      @JsonKey(name: 'pricelist_id') bool? pricelistId,
      @JsonKey(name: 'background_color') String? backgroundColor,
      @JsonKey(name: 'table_ids') List<Map<String, dynamic>>? tableIds}) {
    return _FloorData(
      id: id,
      name: name,
      posConfigId: posConfigId,
      pricelistId: pricelistId,
      backgroundColor: backgroundColor,
      tableIds: tableIds,
    );
  }

  FloorData fromJson(Map<String, Object?> json) {
    return FloorData.fromJson(json);
  }
}

/// @nodoc
const $FloorData = _$FloorDataTearOff();

/// @nodoc
mixin _$FloorData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'pos_config_id')
  int? get posConfigId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricelist_id')
  bool? get pricelistId => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_color')
  String? get backgroundColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'table_ids')
  List<Map<String, dynamic>>? get tableIds =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorDataCopyWith<FloorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorDataCopyWith<$Res> {
  factory $FloorDataCopyWith(FloorData value, $Res Function(FloorData) then) =
      _$FloorDataCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'pos_config_id') int? posConfigId,
      @JsonKey(name: 'pricelist_id') bool? pricelistId,
      @JsonKey(name: 'background_color') String? backgroundColor,
      @JsonKey(name: 'table_ids') List<Map<String, dynamic>>? tableIds});
}

/// @nodoc
class _$FloorDataCopyWithImpl<$Res> implements $FloorDataCopyWith<$Res> {
  _$FloorDataCopyWithImpl(this._value, this._then);

  final FloorData _value;
  // ignore: unused_field
  final $Res Function(FloorData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posConfigId = freezed,
    Object? pricelistId = freezed,
    Object? backgroundColor = freezed,
    Object? tableIds = freezed,
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
      posConfigId: posConfigId == freezed
          ? _value.posConfigId
          : posConfigId // ignore: cast_nullable_to_non_nullable
              as int?,
      pricelistId: pricelistId == freezed
          ? _value.pricelistId
          : pricelistId // ignore: cast_nullable_to_non_nullable
              as bool?,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      tableIds: tableIds == freezed
          ? _value.tableIds
          : tableIds // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
abstract class _$FloorDataCopyWith<$Res> implements $FloorDataCopyWith<$Res> {
  factory _$FloorDataCopyWith(
          _FloorData value, $Res Function(_FloorData) then) =
      __$FloorDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'pos_config_id') int? posConfigId,
      @JsonKey(name: 'pricelist_id') bool? pricelistId,
      @JsonKey(name: 'background_color') String? backgroundColor,
      @JsonKey(name: 'table_ids') List<Map<String, dynamic>>? tableIds});
}

/// @nodoc
class __$FloorDataCopyWithImpl<$Res> extends _$FloorDataCopyWithImpl<$Res>
    implements _$FloorDataCopyWith<$Res> {
  __$FloorDataCopyWithImpl(_FloorData _value, $Res Function(_FloorData) _then)
      : super(_value, (v) => _then(v as _FloorData));

  @override
  _FloorData get _value => super._value as _FloorData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posConfigId = freezed,
    Object? pricelistId = freezed,
    Object? backgroundColor = freezed,
    Object? tableIds = freezed,
  }) {
    return _then(_FloorData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      posConfigId: posConfigId == freezed
          ? _value.posConfigId
          : posConfigId // ignore: cast_nullable_to_non_nullable
              as int?,
      pricelistId: pricelistId == freezed
          ? _value.pricelistId
          : pricelistId // ignore: cast_nullable_to_non_nullable
              as bool?,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      tableIds: tableIds == freezed
          ? _value.tableIds
          : tableIds // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FloorData implements _FloorData {
  const _$_FloorData(
      {required this.id,
      required this.name,
      @JsonKey(name: 'pos_config_id') this.posConfigId,
      @JsonKey(name: 'pricelist_id') this.pricelistId,
      @JsonKey(name: 'background_color') this.backgroundColor,
      @JsonKey(name: 'table_ids') this.tableIds});

  factory _$_FloorData.fromJson(Map<String, dynamic> json) =>
      _$$_FloorDataFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'pos_config_id')
  final int? posConfigId;
  @override
  @JsonKey(name: 'pricelist_id')
  final bool? pricelistId;
  @override
  @JsonKey(name: 'background_color')
  final String? backgroundColor;
  @override
  @JsonKey(name: 'table_ids')
  final List<Map<String, dynamic>>? tableIds;

  @override
  String toString() {
    return 'FloorData(id: $id, name: $name, posConfigId: $posConfigId, pricelistId: $pricelistId, backgroundColor: $backgroundColor, tableIds: $tableIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FloorData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.posConfigId, posConfigId) &&
            const DeepCollectionEquality()
                .equals(other.pricelistId, pricelistId) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(other.tableIds, tableIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(posConfigId),
      const DeepCollectionEquality().hash(pricelistId),
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(tableIds));

  @JsonKey(ignore: true)
  @override
  _$FloorDataCopyWith<_FloorData> get copyWith =>
      __$FloorDataCopyWithImpl<_FloorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FloorDataToJson(this);
  }
}

abstract class _FloorData implements FloorData {
  const factory _FloorData(
          {required int id,
          required String name,
          @JsonKey(name: 'pos_config_id') int? posConfigId,
          @JsonKey(name: 'pricelist_id') bool? pricelistId,
          @JsonKey(name: 'background_color') String? backgroundColor,
          @JsonKey(name: 'table_ids') List<Map<String, dynamic>>? tableIds}) =
      _$_FloorData;

  factory _FloorData.fromJson(Map<String, dynamic> json) =
      _$_FloorData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'pos_config_id')
  int? get posConfigId;
  @override
  @JsonKey(name: 'pricelist_id')
  bool? get pricelistId;
  @override
  @JsonKey(name: 'background_color')
  String? get backgroundColor;
  @override
  @JsonKey(name: 'table_ids')
  List<Map<String, dynamic>>? get tableIds;
  @override
  @JsonKey(ignore: true)
  _$FloorDataCopyWith<_FloorData> get copyWith =>
      throw _privateConstructorUsedError;
}

FloorDataResults _$FloorDataResultsFromJson(Map<String, dynamic> json) {
  return _FloorDataResults.fromJson(json);
}

/// @nodoc
class _$FloorDataResultsTearOff {
  const _$FloorDataResultsTearOff();

  _FloorDataResults call(
      {@JsonKey(name: 'results') required List<FloorData> floorDatas}) {
    return _FloorDataResults(
      floorDatas: floorDatas,
    );
  }

  FloorDataResults fromJson(Map<String, Object?> json) {
    return FloorDataResults.fromJson(json);
  }
}

/// @nodoc
const $FloorDataResults = _$FloorDataResultsTearOff();

/// @nodoc
mixin _$FloorDataResults {
  @JsonKey(name: 'results')
  List<FloorData> get floorDatas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorDataResultsCopyWith<FloorDataResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorDataResultsCopyWith<$Res> {
  factory $FloorDataResultsCopyWith(
          FloorDataResults value, $Res Function(FloorDataResults) then) =
      _$FloorDataResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<FloorData> floorDatas});
}

/// @nodoc
class _$FloorDataResultsCopyWithImpl<$Res>
    implements $FloorDataResultsCopyWith<$Res> {
  _$FloorDataResultsCopyWithImpl(this._value, this._then);

  final FloorDataResults _value;
  // ignore: unused_field
  final $Res Function(FloorDataResults) _then;

  @override
  $Res call({
    Object? floorDatas = freezed,
  }) {
    return _then(_value.copyWith(
      floorDatas: floorDatas == freezed
          ? _value.floorDatas
          : floorDatas // ignore: cast_nullable_to_non_nullable
              as List<FloorData>,
    ));
  }
}

/// @nodoc
abstract class _$FloorDataResultsCopyWith<$Res>
    implements $FloorDataResultsCopyWith<$Res> {
  factory _$FloorDataResultsCopyWith(
          _FloorDataResults value, $Res Function(_FloorDataResults) then) =
      __$FloorDataResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<FloorData> floorDatas});
}

/// @nodoc
class __$FloorDataResultsCopyWithImpl<$Res>
    extends _$FloorDataResultsCopyWithImpl<$Res>
    implements _$FloorDataResultsCopyWith<$Res> {
  __$FloorDataResultsCopyWithImpl(
      _FloorDataResults _value, $Res Function(_FloorDataResults) _then)
      : super(_value, (v) => _then(v as _FloorDataResults));

  @override
  _FloorDataResults get _value => super._value as _FloorDataResults;

  @override
  $Res call({
    Object? floorDatas = freezed,
  }) {
    return _then(_FloorDataResults(
      floorDatas: floorDatas == freezed
          ? _value.floorDatas
          : floorDatas // ignore: cast_nullable_to_non_nullable
              as List<FloorData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FloorDataResults implements _FloorDataResults {
  const _$_FloorDataResults(
      {@JsonKey(name: 'results') required this.floorDatas});

  factory _$_FloorDataResults.fromJson(Map<String, dynamic> json) =>
      _$$_FloorDataResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<FloorData> floorDatas;

  @override
  String toString() {
    return 'FloorDataResults(floorDatas: $floorDatas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FloorDataResults &&
            const DeepCollectionEquality()
                .equals(other.floorDatas, floorDatas));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(floorDatas));

  @JsonKey(ignore: true)
  @override
  _$FloorDataResultsCopyWith<_FloorDataResults> get copyWith =>
      __$FloorDataResultsCopyWithImpl<_FloorDataResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FloorDataResultsToJson(this);
  }
}

abstract class _FloorDataResults implements FloorDataResults {
  const factory _FloorDataResults(
          {@JsonKey(name: 'results') required List<FloorData> floorDatas}) =
      _$_FloorDataResults;

  factory _FloorDataResults.fromJson(Map<String, dynamic> json) =
      _$_FloorDataResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<FloorData> get floorDatas;
  @override
  @JsonKey(ignore: true)
  _$FloorDataResultsCopyWith<_FloorDataResults> get copyWith =>
      throw _privateConstructorUsedError;
}
