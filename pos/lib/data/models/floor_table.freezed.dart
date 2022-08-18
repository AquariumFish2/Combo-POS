// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'floor_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FloorTable _$FloorTableFromJson(Map<String, dynamic> json) {
  return _FloorTable.fromJson(json);
}

/// @nodoc
class _$FloorTableTearOff {
  const _$FloorTableTearOff();

  _FloorTable call(
      {required String id,
      required String name,
      int? seats,
      @JsonKey(name: 'barcode_url') bool? barcodeUrl,
      @JsonKey(name: 'qr_image') String? qrImage,
      @JsonKey(name: 'pricelist_id') bool? pricelistId,
      bool? locked,
      @JsonKey(name: 'user_ids') List<int>? userIds,
      String? shape,
      String? color,
      @JsonKey(name: 'position_h') int? positionH,
      @JsonKey(name: 'position_V') int? positionV,
      int? width,
      int? height}) {
    return _FloorTable(
      id: id,
      name: name,
      seats: seats,
      barcodeUrl: barcodeUrl,
      qrImage: qrImage,
      pricelistId: pricelistId,
      locked: locked,
      userIds: userIds,
      shape: shape,
      color: color,
      positionH: positionH,
      positionV: positionV,
      width: width,
      height: height,
    );
  }

  FloorTable fromJson(Map<String, Object?> json) {
    return FloorTable.fromJson(json);
  }
}

/// @nodoc
const $FloorTable = _$FloorTableTearOff();

/// @nodoc
mixin _$FloorTable {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get seats => throw _privateConstructorUsedError;
  @JsonKey(name: 'barcode_url')
  bool? get barcodeUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_image')
  String? get qrImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricelist_id')
  bool? get pricelistId => throw _privateConstructorUsedError;
  bool? get locked => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_ids')
  List<int>? get userIds => throw _privateConstructorUsedError;
  String? get shape => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'position_h')
  int? get positionH => throw _privateConstructorUsedError;
  @JsonKey(name: 'position_V')
  int? get positionV => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorTableCopyWith<FloorTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorTableCopyWith<$Res> {
  factory $FloorTableCopyWith(
          FloorTable value, $Res Function(FloorTable) then) =
      _$FloorTableCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int? seats,
      @JsonKey(name: 'barcode_url') bool? barcodeUrl,
      @JsonKey(name: 'qr_image') String? qrImage,
      @JsonKey(name: 'pricelist_id') bool? pricelistId,
      bool? locked,
      @JsonKey(name: 'user_ids') List<int>? userIds,
      String? shape,
      String? color,
      @JsonKey(name: 'position_h') int? positionH,
      @JsonKey(name: 'position_V') int? positionV,
      int? width,
      int? height});
}

/// @nodoc
class _$FloorTableCopyWithImpl<$Res> implements $FloorTableCopyWith<$Res> {
  _$FloorTableCopyWithImpl(this._value, this._then);

  final FloorTable _value;
  // ignore: unused_field
  final $Res Function(FloorTable) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? seats = freezed,
    Object? barcodeUrl = freezed,
    Object? qrImage = freezed,
    Object? pricelistId = freezed,
    Object? locked = freezed,
    Object? userIds = freezed,
    Object? shape = freezed,
    Object? color = freezed,
    Object? positionH = freezed,
    Object? positionV = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      seats: seats == freezed
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      barcodeUrl: barcodeUrl == freezed
          ? _value.barcodeUrl
          : barcodeUrl // ignore: cast_nullable_to_non_nullable
              as bool?,
      qrImage: qrImage == freezed
          ? _value.qrImage
          : qrImage // ignore: cast_nullable_to_non_nullable
              as String?,
      pricelistId: pricelistId == freezed
          ? _value.pricelistId
          : pricelistId // ignore: cast_nullable_to_non_nullable
              as bool?,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIds: userIds == freezed
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      shape: shape == freezed
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      positionH: positionH == freezed
          ? _value.positionH
          : positionH // ignore: cast_nullable_to_non_nullable
              as int?,
      positionV: positionV == freezed
          ? _value.positionV
          : positionV // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FloorTableCopyWith<$Res> implements $FloorTableCopyWith<$Res> {
  factory _$FloorTableCopyWith(
          _FloorTable value, $Res Function(_FloorTable) then) =
      __$FloorTableCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      int? seats,
      @JsonKey(name: 'barcode_url') bool? barcodeUrl,
      @JsonKey(name: 'qr_image') String? qrImage,
      @JsonKey(name: 'pricelist_id') bool? pricelistId,
      bool? locked,
      @JsonKey(name: 'user_ids') List<int>? userIds,
      String? shape,
      String? color,
      @JsonKey(name: 'position_h') int? positionH,
      @JsonKey(name: 'position_V') int? positionV,
      int? width,
      int? height});
}

/// @nodoc
class __$FloorTableCopyWithImpl<$Res> extends _$FloorTableCopyWithImpl<$Res>
    implements _$FloorTableCopyWith<$Res> {
  __$FloorTableCopyWithImpl(
      _FloorTable _value, $Res Function(_FloorTable) _then)
      : super(_value, (v) => _then(v as _FloorTable));

  @override
  _FloorTable get _value => super._value as _FloorTable;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? seats = freezed,
    Object? barcodeUrl = freezed,
    Object? qrImage = freezed,
    Object? pricelistId = freezed,
    Object? locked = freezed,
    Object? userIds = freezed,
    Object? shape = freezed,
    Object? color = freezed,
    Object? positionH = freezed,
    Object? positionV = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_FloorTable(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      seats: seats == freezed
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as int?,
      barcodeUrl: barcodeUrl == freezed
          ? _value.barcodeUrl
          : barcodeUrl // ignore: cast_nullable_to_non_nullable
              as bool?,
      qrImage: qrImage == freezed
          ? _value.qrImage
          : qrImage // ignore: cast_nullable_to_non_nullable
              as String?,
      pricelistId: pricelistId == freezed
          ? _value.pricelistId
          : pricelistId // ignore: cast_nullable_to_non_nullable
              as bool?,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIds: userIds == freezed
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      shape: shape == freezed
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      positionH: positionH == freezed
          ? _value.positionH
          : positionH // ignore: cast_nullable_to_non_nullable
              as int?,
      positionV: positionV == freezed
          ? _value.positionV
          : positionV // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FloorTable implements _FloorTable {
  const _$_FloorTable(
      {required this.id,
      required this.name,
      this.seats,
      @JsonKey(name: 'barcode_url') this.barcodeUrl,
      @JsonKey(name: 'qr_image') this.qrImage,
      @JsonKey(name: 'pricelist_id') this.pricelistId,
      this.locked,
      @JsonKey(name: 'user_ids') this.userIds,
      this.shape,
      this.color,
      @JsonKey(name: 'position_h') this.positionH,
      @JsonKey(name: 'position_V') this.positionV,
      this.width,
      this.height});

  factory _$_FloorTable.fromJson(Map<String, dynamic> json) =>
      _$$_FloorTableFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int? seats;
  @override
  @JsonKey(name: 'barcode_url')
  final bool? barcodeUrl;
  @override
  @JsonKey(name: 'qr_image')
  final String? qrImage;
  @override
  @JsonKey(name: 'pricelist_id')
  final bool? pricelistId;
  @override
  final bool? locked;
  @override
  @JsonKey(name: 'user_ids')
  final List<int>? userIds;
  @override
  final String? shape;
  @override
  final String? color;
  @override
  @JsonKey(name: 'position_h')
  final int? positionH;
  @override
  @JsonKey(name: 'position_V')
  final int? positionV;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'FloorTable(id: $id, name: $name, seats: $seats, barcodeUrl: $barcodeUrl, qrImage: $qrImage, pricelistId: $pricelistId, locked: $locked, userIds: $userIds, shape: $shape, color: $color, positionH: $positionH, positionV: $positionV, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FloorTable &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.seats, seats) &&
            const DeepCollectionEquality()
                .equals(other.barcodeUrl, barcodeUrl) &&
            const DeepCollectionEquality().equals(other.qrImage, qrImage) &&
            const DeepCollectionEquality()
                .equals(other.pricelistId, pricelistId) &&
            const DeepCollectionEquality().equals(other.locked, locked) &&
            const DeepCollectionEquality().equals(other.userIds, userIds) &&
            const DeepCollectionEquality().equals(other.shape, shape) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.positionH, positionH) &&
            const DeepCollectionEquality().equals(other.positionV, positionV) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(seats),
      const DeepCollectionEquality().hash(barcodeUrl),
      const DeepCollectionEquality().hash(qrImage),
      const DeepCollectionEquality().hash(pricelistId),
      const DeepCollectionEquality().hash(locked),
      const DeepCollectionEquality().hash(userIds),
      const DeepCollectionEquality().hash(shape),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(positionH),
      const DeepCollectionEquality().hash(positionV),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$FloorTableCopyWith<_FloorTable> get copyWith =>
      __$FloorTableCopyWithImpl<_FloorTable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FloorTableToJson(this);
  }
}

abstract class _FloorTable implements FloorTable {
  const factory _FloorTable(
      {required String id,
      required String name,
      int? seats,
      @JsonKey(name: 'barcode_url') bool? barcodeUrl,
      @JsonKey(name: 'qr_image') String? qrImage,
      @JsonKey(name: 'pricelist_id') bool? pricelistId,
      bool? locked,
      @JsonKey(name: 'user_ids') List<int>? userIds,
      String? shape,
      String? color,
      @JsonKey(name: 'position_h') int? positionH,
      @JsonKey(name: 'position_V') int? positionV,
      int? width,
      int? height}) = _$_FloorTable;

  factory _FloorTable.fromJson(Map<String, dynamic> json) =
      _$_FloorTable.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int? get seats;
  @override
  @JsonKey(name: 'barcode_url')
  bool? get barcodeUrl;
  @override
  @JsonKey(name: 'qr_image')
  String? get qrImage;
  @override
  @JsonKey(name: 'pricelist_id')
  bool? get pricelistId;
  @override
  bool? get locked;
  @override
  @JsonKey(name: 'user_ids')
  List<int>? get userIds;
  @override
  String? get shape;
  @override
  String? get color;
  @override
  @JsonKey(name: 'position_h')
  int? get positionH;
  @override
  @JsonKey(name: 'position_V')
  int? get positionV;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$FloorTableCopyWith<_FloorTable> get copyWith =>
      throw _privateConstructorUsedError;
}

FloorTableResults _$FloorTableResultsFromJson(Map<String, dynamic> json) {
  return _FloorTableResults.fromJson(json);
}

/// @nodoc
class _$FloorTableResultsTearOff {
  const _$FloorTableResultsTearOff();

  _FloorTableResults call(
      {@JsonKey(name: 'results') required List<FloorTable> FloorTables}) {
    return _FloorTableResults(
      FloorTables: FloorTables,
    );
  }

  FloorTableResults fromJson(Map<String, Object?> json) {
    return FloorTableResults.fromJson(json);
  }
}

/// @nodoc
const $FloorTableResults = _$FloorTableResultsTearOff();

/// @nodoc
mixin _$FloorTableResults {
  @JsonKey(name: 'results')
  List<FloorTable> get FloorTables => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorTableResultsCopyWith<FloorTableResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorTableResultsCopyWith<$Res> {
  factory $FloorTableResultsCopyWith(
          FloorTableResults value, $Res Function(FloorTableResults) then) =
      _$FloorTableResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<FloorTable> FloorTables});
}

/// @nodoc
class _$FloorTableResultsCopyWithImpl<$Res>
    implements $FloorTableResultsCopyWith<$Res> {
  _$FloorTableResultsCopyWithImpl(this._value, this._then);

  final FloorTableResults _value;
  // ignore: unused_field
  final $Res Function(FloorTableResults) _then;

  @override
  $Res call({
    Object? FloorTables = freezed,
  }) {
    return _then(_value.copyWith(
      FloorTables: FloorTables == freezed
          ? _value.FloorTables
          : FloorTables // ignore: cast_nullable_to_non_nullable
              as List<FloorTable>,
    ));
  }
}

/// @nodoc
abstract class _$FloorTableResultsCopyWith<$Res>
    implements $FloorTableResultsCopyWith<$Res> {
  factory _$FloorTableResultsCopyWith(
          _FloorTableResults value, $Res Function(_FloorTableResults) then) =
      __$FloorTableResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<FloorTable> FloorTables});
}

/// @nodoc
class __$FloorTableResultsCopyWithImpl<$Res>
    extends _$FloorTableResultsCopyWithImpl<$Res>
    implements _$FloorTableResultsCopyWith<$Res> {
  __$FloorTableResultsCopyWithImpl(
      _FloorTableResults _value, $Res Function(_FloorTableResults) _then)
      : super(_value, (v) => _then(v as _FloorTableResults));

  @override
  _FloorTableResults get _value => super._value as _FloorTableResults;

  @override
  $Res call({
    Object? FloorTables = freezed,
  }) {
    return _then(_FloorTableResults(
      FloorTables: FloorTables == freezed
          ? _value.FloorTables
          : FloorTables // ignore: cast_nullable_to_non_nullable
              as List<FloorTable>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FloorTableResults implements _FloorTableResults {
  const _$_FloorTableResults(
      {@JsonKey(name: 'results') required this.FloorTables});

  factory _$_FloorTableResults.fromJson(Map<String, dynamic> json) =>
      _$$_FloorTableResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<FloorTable> FloorTables;

  @override
  String toString() {
    return 'FloorTableResults(FloorTables: $FloorTables)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FloorTableResults &&
            const DeepCollectionEquality()
                .equals(other.FloorTables, FloorTables));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(FloorTables));

  @JsonKey(ignore: true)
  @override
  _$FloorTableResultsCopyWith<_FloorTableResults> get copyWith =>
      __$FloorTableResultsCopyWithImpl<_FloorTableResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FloorTableResultsToJson(this);
  }
}

abstract class _FloorTableResults implements FloorTableResults {
  const factory _FloorTableResults(
          {@JsonKey(name: 'results') required List<FloorTable> FloorTables}) =
      _$_FloorTableResults;

  factory _FloorTableResults.fromJson(Map<String, dynamic> json) =
      _$_FloorTableResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<FloorTable> get FloorTables;
  @override
  @JsonKey(ignore: true)
  _$FloorTableResultsCopyWith<_FloorTableResults> get copyWith =>
      throw _privateConstructorUsedError;
}
