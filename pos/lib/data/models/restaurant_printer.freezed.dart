// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant_printer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantPrinter _$RestaurantPrinterFromJson(Map<String, dynamic> json) {
  return _RestaurantPrinter.fromJson(json);
}

/// @nodoc
class _$RestaurantPrinterTearOff {
  const _$RestaurantPrinterTearOff();

  _RestaurantPrinter call(
      {required String id,
      required String name,
      @JsonKey(name: 'printer_type')
          String? printerType,
      @JsonKey(name: 'proxy_ip')
          String? proxyIp,
      @JsonKey(name: 'epson_printer_ip')
          bool? epsonPrinterIp,
      @JsonKey(name: 'pos_order_type_ids')
          List<int>? posOrderTypeIds,
      @JsonKey(name: 'pos_config_ids')
          List<int>? posConfigIds,
      @JsonKey(name: 'product_categories_ids')
          List<int>? productCategoriesIds}) {
    return _RestaurantPrinter(
      id: id,
      name: name,
      printerType: printerType,
      proxyIp: proxyIp,
      epsonPrinterIp: epsonPrinterIp,
      posOrderTypeIds: posOrderTypeIds,
      posConfigIds: posConfigIds,
      productCategoriesIds: productCategoriesIds,
    );
  }

  RestaurantPrinter fromJson(Map<String, Object?> json) {
    return RestaurantPrinter.fromJson(json);
  }
}

/// @nodoc
const $RestaurantPrinter = _$RestaurantPrinterTearOff();

/// @nodoc
mixin _$RestaurantPrinter {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'printer_type')
  String? get printerType => throw _privateConstructorUsedError;
  @JsonKey(name: 'proxy_ip')
  String? get proxyIp => throw _privateConstructorUsedError;
  @JsonKey(name: 'epson_printer_ip')
  bool? get epsonPrinterIp => throw _privateConstructorUsedError;
  @JsonKey(name: 'pos_order_type_ids')
  List<int>? get posOrderTypeIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'pos_config_ids')
  List<int>? get posConfigIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_categories_ids')
  List<int>? get productCategoriesIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantPrinterCopyWith<RestaurantPrinter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantPrinterCopyWith<$Res> {
  factory $RestaurantPrinterCopyWith(
          RestaurantPrinter value, $Res Function(RestaurantPrinter) then) =
      _$RestaurantPrinterCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'printer_type')
          String? printerType,
      @JsonKey(name: 'proxy_ip')
          String? proxyIp,
      @JsonKey(name: 'epson_printer_ip')
          bool? epsonPrinterIp,
      @JsonKey(name: 'pos_order_type_ids')
          List<int>? posOrderTypeIds,
      @JsonKey(name: 'pos_config_ids')
          List<int>? posConfigIds,
      @JsonKey(name: 'product_categories_ids')
          List<int>? productCategoriesIds});
}

/// @nodoc
class _$RestaurantPrinterCopyWithImpl<$Res>
    implements $RestaurantPrinterCopyWith<$Res> {
  _$RestaurantPrinterCopyWithImpl(this._value, this._then);

  final RestaurantPrinter _value;
  // ignore: unused_field
  final $Res Function(RestaurantPrinter) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? printerType = freezed,
    Object? proxyIp = freezed,
    Object? epsonPrinterIp = freezed,
    Object? posOrderTypeIds = freezed,
    Object? posConfigIds = freezed,
    Object? productCategoriesIds = freezed,
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
      printerType: printerType == freezed
          ? _value.printerType
          : printerType // ignore: cast_nullable_to_non_nullable
              as String?,
      proxyIp: proxyIp == freezed
          ? _value.proxyIp
          : proxyIp // ignore: cast_nullable_to_non_nullable
              as String?,
      epsonPrinterIp: epsonPrinterIp == freezed
          ? _value.epsonPrinterIp
          : epsonPrinterIp // ignore: cast_nullable_to_non_nullable
              as bool?,
      posOrderTypeIds: posOrderTypeIds == freezed
          ? _value.posOrderTypeIds
          : posOrderTypeIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      posConfigIds: posConfigIds == freezed
          ? _value.posConfigIds
          : posConfigIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      productCategoriesIds: productCategoriesIds == freezed
          ? _value.productCategoriesIds
          : productCategoriesIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantPrinterCopyWith<$Res>
    implements $RestaurantPrinterCopyWith<$Res> {
  factory _$RestaurantPrinterCopyWith(
          _RestaurantPrinter value, $Res Function(_RestaurantPrinter) then) =
      __$RestaurantPrinterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'printer_type')
          String? printerType,
      @JsonKey(name: 'proxy_ip')
          String? proxyIp,
      @JsonKey(name: 'epson_printer_ip')
          bool? epsonPrinterIp,
      @JsonKey(name: 'pos_order_type_ids')
          List<int>? posOrderTypeIds,
      @JsonKey(name: 'pos_config_ids')
          List<int>? posConfigIds,
      @JsonKey(name: 'product_categories_ids')
          List<int>? productCategoriesIds});
}

/// @nodoc
class __$RestaurantPrinterCopyWithImpl<$Res>
    extends _$RestaurantPrinterCopyWithImpl<$Res>
    implements _$RestaurantPrinterCopyWith<$Res> {
  __$RestaurantPrinterCopyWithImpl(
      _RestaurantPrinter _value, $Res Function(_RestaurantPrinter) _then)
      : super(_value, (v) => _then(v as _RestaurantPrinter));

  @override
  _RestaurantPrinter get _value => super._value as _RestaurantPrinter;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? printerType = freezed,
    Object? proxyIp = freezed,
    Object? epsonPrinterIp = freezed,
    Object? posOrderTypeIds = freezed,
    Object? posConfigIds = freezed,
    Object? productCategoriesIds = freezed,
  }) {
    return _then(_RestaurantPrinter(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      printerType: printerType == freezed
          ? _value.printerType
          : printerType // ignore: cast_nullable_to_non_nullable
              as String?,
      proxyIp: proxyIp == freezed
          ? _value.proxyIp
          : proxyIp // ignore: cast_nullable_to_non_nullable
              as String?,
      epsonPrinterIp: epsonPrinterIp == freezed
          ? _value.epsonPrinterIp
          : epsonPrinterIp // ignore: cast_nullable_to_non_nullable
              as bool?,
      posOrderTypeIds: posOrderTypeIds == freezed
          ? _value.posOrderTypeIds
          : posOrderTypeIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      posConfigIds: posConfigIds == freezed
          ? _value.posConfigIds
          : posConfigIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      productCategoriesIds: productCategoriesIds == freezed
          ? _value.productCategoriesIds
          : productCategoriesIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantPrinter implements _RestaurantPrinter {
  const _$_RestaurantPrinter(
      {required this.id,
      required this.name,
      @JsonKey(name: 'printer_type') this.printerType,
      @JsonKey(name: 'proxy_ip') this.proxyIp,
      @JsonKey(name: 'epson_printer_ip') this.epsonPrinterIp,
      @JsonKey(name: 'pos_order_type_ids') this.posOrderTypeIds,
      @JsonKey(name: 'pos_config_ids') this.posConfigIds,
      @JsonKey(name: 'product_categories_ids') this.productCategoriesIds});

  factory _$_RestaurantPrinter.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantPrinterFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'printer_type')
  final String? printerType;
  @override
  @JsonKey(name: 'proxy_ip')
  final String? proxyIp;
  @override
  @JsonKey(name: 'epson_printer_ip')
  final bool? epsonPrinterIp;
  @override
  @JsonKey(name: 'pos_order_type_ids')
  final List<int>? posOrderTypeIds;
  @override
  @JsonKey(name: 'pos_config_ids')
  final List<int>? posConfigIds;
  @override
  @JsonKey(name: 'product_categories_ids')
  final List<int>? productCategoriesIds;

  @override
  String toString() {
    return 'RestaurantPrinter(id: $id, name: $name, printerType: $printerType, proxyIp: $proxyIp, epsonPrinterIp: $epsonPrinterIp, posOrderTypeIds: $posOrderTypeIds, posConfigIds: $posConfigIds, productCategoriesIds: $productCategoriesIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantPrinter &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.printerType, printerType) &&
            const DeepCollectionEquality().equals(other.proxyIp, proxyIp) &&
            const DeepCollectionEquality()
                .equals(other.epsonPrinterIp, epsonPrinterIp) &&
            const DeepCollectionEquality()
                .equals(other.posOrderTypeIds, posOrderTypeIds) &&
            const DeepCollectionEquality()
                .equals(other.posConfigIds, posConfigIds) &&
            const DeepCollectionEquality()
                .equals(other.productCategoriesIds, productCategoriesIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(printerType),
      const DeepCollectionEquality().hash(proxyIp),
      const DeepCollectionEquality().hash(epsonPrinterIp),
      const DeepCollectionEquality().hash(posOrderTypeIds),
      const DeepCollectionEquality().hash(posConfigIds),
      const DeepCollectionEquality().hash(productCategoriesIds));

  @JsonKey(ignore: true)
  @override
  _$RestaurantPrinterCopyWith<_RestaurantPrinter> get copyWith =>
      __$RestaurantPrinterCopyWithImpl<_RestaurantPrinter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantPrinterToJson(this);
  }
}

abstract class _RestaurantPrinter implements RestaurantPrinter {
  const factory _RestaurantPrinter(
      {required String id,
      required String name,
      @JsonKey(name: 'printer_type')
          String? printerType,
      @JsonKey(name: 'proxy_ip')
          String? proxyIp,
      @JsonKey(name: 'epson_printer_ip')
          bool? epsonPrinterIp,
      @JsonKey(name: 'pos_order_type_ids')
          List<int>? posOrderTypeIds,
      @JsonKey(name: 'pos_config_ids')
          List<int>? posConfigIds,
      @JsonKey(name: 'product_categories_ids')
          List<int>? productCategoriesIds}) = _$_RestaurantPrinter;

  factory _RestaurantPrinter.fromJson(Map<String, dynamic> json) =
      _$_RestaurantPrinter.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'printer_type')
  String? get printerType;
  @override
  @JsonKey(name: 'proxy_ip')
  String? get proxyIp;
  @override
  @JsonKey(name: 'epson_printer_ip')
  bool? get epsonPrinterIp;
  @override
  @JsonKey(name: 'pos_order_type_ids')
  List<int>? get posOrderTypeIds;
  @override
  @JsonKey(name: 'pos_config_ids')
  List<int>? get posConfigIds;
  @override
  @JsonKey(name: 'product_categories_ids')
  List<int>? get productCategoriesIds;
  @override
  @JsonKey(ignore: true)
  _$RestaurantPrinterCopyWith<_RestaurantPrinter> get copyWith =>
      throw _privateConstructorUsedError;
}

RestaurantPrinterResults _$RestaurantPrinterResultsFromJson(
    Map<String, dynamic> json) {
  return _RestaurantPrinterResults.fromJson(json);
}

/// @nodoc
class _$RestaurantPrinterResultsTearOff {
  const _$RestaurantPrinterResultsTearOff();

  _RestaurantPrinterResults call(
      {@JsonKey(name: 'results')
          required List<RestaurantPrinter> restaurantPrinters}) {
    return _RestaurantPrinterResults(
      restaurantPrinters: restaurantPrinters,
    );
  }

  RestaurantPrinterResults fromJson(Map<String, Object?> json) {
    return RestaurantPrinterResults.fromJson(json);
  }
}

/// @nodoc
const $RestaurantPrinterResults = _$RestaurantPrinterResultsTearOff();

/// @nodoc
mixin _$RestaurantPrinterResults {
  @JsonKey(name: 'results')
  List<RestaurantPrinter> get restaurantPrinters =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantPrinterResultsCopyWith<RestaurantPrinterResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantPrinterResultsCopyWith<$Res> {
  factory $RestaurantPrinterResultsCopyWith(RestaurantPrinterResults value,
          $Res Function(RestaurantPrinterResults) then) =
      _$RestaurantPrinterResultsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'results') List<RestaurantPrinter> restaurantPrinters});
}

/// @nodoc
class _$RestaurantPrinterResultsCopyWithImpl<$Res>
    implements $RestaurantPrinterResultsCopyWith<$Res> {
  _$RestaurantPrinterResultsCopyWithImpl(this._value, this._then);

  final RestaurantPrinterResults _value;
  // ignore: unused_field
  final $Res Function(RestaurantPrinterResults) _then;

  @override
  $Res call({
    Object? restaurantPrinters = freezed,
  }) {
    return _then(_value.copyWith(
      restaurantPrinters: restaurantPrinters == freezed
          ? _value.restaurantPrinters
          : restaurantPrinters // ignore: cast_nullable_to_non_nullable
              as List<RestaurantPrinter>,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantPrinterResultsCopyWith<$Res>
    implements $RestaurantPrinterResultsCopyWith<$Res> {
  factory _$RestaurantPrinterResultsCopyWith(_RestaurantPrinterResults value,
          $Res Function(_RestaurantPrinterResults) then) =
      __$RestaurantPrinterResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'results') List<RestaurantPrinter> restaurantPrinters});
}

/// @nodoc
class __$RestaurantPrinterResultsCopyWithImpl<$Res>
    extends _$RestaurantPrinterResultsCopyWithImpl<$Res>
    implements _$RestaurantPrinterResultsCopyWith<$Res> {
  __$RestaurantPrinterResultsCopyWithImpl(_RestaurantPrinterResults _value,
      $Res Function(_RestaurantPrinterResults) _then)
      : super(_value, (v) => _then(v as _RestaurantPrinterResults));

  @override
  _RestaurantPrinterResults get _value =>
      super._value as _RestaurantPrinterResults;

  @override
  $Res call({
    Object? restaurantPrinters = freezed,
  }) {
    return _then(_RestaurantPrinterResults(
      restaurantPrinters: restaurantPrinters == freezed
          ? _value.restaurantPrinters
          : restaurantPrinters // ignore: cast_nullable_to_non_nullable
              as List<RestaurantPrinter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantPrinterResults implements _RestaurantPrinterResults {
  const _$_RestaurantPrinterResults(
      {@JsonKey(name: 'results') required this.restaurantPrinters});

  factory _$_RestaurantPrinterResults.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantPrinterResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<RestaurantPrinter> restaurantPrinters;

  @override
  String toString() {
    return 'RestaurantPrinterResults(restaurantPrinters: $restaurantPrinters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantPrinterResults &&
            const DeepCollectionEquality()
                .equals(other.restaurantPrinters, restaurantPrinters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(restaurantPrinters));

  @JsonKey(ignore: true)
  @override
  _$RestaurantPrinterResultsCopyWith<_RestaurantPrinterResults> get copyWith =>
      __$RestaurantPrinterResultsCopyWithImpl<_RestaurantPrinterResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantPrinterResultsToJson(this);
  }
}

abstract class _RestaurantPrinterResults implements RestaurantPrinterResults {
  const factory _RestaurantPrinterResults(
          {@JsonKey(name: 'results')
              required List<RestaurantPrinter> restaurantPrinters}) =
      _$_RestaurantPrinterResults;

  factory _RestaurantPrinterResults.fromJson(Map<String, dynamic> json) =
      _$_RestaurantPrinterResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<RestaurantPrinter> get restaurantPrinters;
  @override
  @JsonKey(ignore: true)
  _$RestaurantPrinterResultsCopyWith<_RestaurantPrinterResults> get copyWith =>
      throw _privateConstructorUsedError;
}
