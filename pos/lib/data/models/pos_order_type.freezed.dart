// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_order_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

POSOrderType _$POSOrderTypeFromJson(Map<String, dynamic> json) {
  return _POSOrderType.fromJson(json);
}

/// @nodoc
class _$POSOrderTypeTearOff {
  const _$POSOrderTypeTearOff();

  _POSOrderType call(
      {required int id,
      required String name,
      @JsonKey(name: 'is_show_customer_info') bool? isShowCustomerInfo,
      @JsonKey(name: 'is_require_information') bool? isRequireInformation,
      @JsonKey(name: 'is_require_driver') bool? isRequireDriver,
      @JsonKey(name: 'is_auto_open_table_screen') bool? isAutoOpenTableScreen,
      @JsonKey(name: 'pricelist_id') int? pricelistId,
      String? type,
      @JsonKey(name: 'delivary_product_id') bool? delivaryProductId,
      @JsonKey(name: 'extra_product_id') bool? extraProductId,
      @JsonKey(name: 'extra_percentage') int? extraPercentage,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(name: 'account_journal_ids') List<int>? accountJournalIds}) {
    return _POSOrderType(
      id: id,
      name: name,
      isShowCustomerInfo: isShowCustomerInfo,
      isRequireInformation: isRequireInformation,
      isRequireDriver: isRequireDriver,
      isAutoOpenTableScreen: isAutoOpenTableScreen,
      pricelistId: pricelistId,
      type: type,
      delivaryProductId: delivaryProductId,
      extraProductId: extraProductId,
      extraPercentage: extraPercentage,
      companyId: companyId,
      accountJournalIds: accountJournalIds,
    );
  }

  POSOrderType fromJson(Map<String, Object?> json) {
    return POSOrderType.fromJson(json);
  }
}

/// @nodoc
const $POSOrderType = _$POSOrderTypeTearOff();

/// @nodoc
mixin _$POSOrderType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_show_customer_info')
  bool? get isShowCustomerInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_require_information')
  bool? get isRequireInformation => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_require_driver')
  bool? get isRequireDriver => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_auto_open_table_screen')
  bool? get isAutoOpenTableScreen => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricelist_id')
  int? get pricelistId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivary_product_id')
  bool? get delivaryProductId => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_product_id')
  bool? get extraProductId => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_percentage')
  int? get extraPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_journal_ids')
  List<int>? get accountJournalIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSOrderTypeCopyWith<POSOrderType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSOrderTypeCopyWith<$Res> {
  factory $POSOrderTypeCopyWith(
          POSOrderType value, $Res Function(POSOrderType) then) =
      _$POSOrderTypeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'is_show_customer_info') bool? isShowCustomerInfo,
      @JsonKey(name: 'is_require_information') bool? isRequireInformation,
      @JsonKey(name: 'is_require_driver') bool? isRequireDriver,
      @JsonKey(name: 'is_auto_open_table_screen') bool? isAutoOpenTableScreen,
      @JsonKey(name: 'pricelist_id') int? pricelistId,
      String? type,
      @JsonKey(name: 'delivary_product_id') bool? delivaryProductId,
      @JsonKey(name: 'extra_product_id') bool? extraProductId,
      @JsonKey(name: 'extra_percentage') int? extraPercentage,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(name: 'account_journal_ids') List<int>? accountJournalIds});
}

/// @nodoc
class _$POSOrderTypeCopyWithImpl<$Res> implements $POSOrderTypeCopyWith<$Res> {
  _$POSOrderTypeCopyWithImpl(this._value, this._then);

  final POSOrderType _value;
  // ignore: unused_field
  final $Res Function(POSOrderType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isShowCustomerInfo = freezed,
    Object? isRequireInformation = freezed,
    Object? isRequireDriver = freezed,
    Object? isAutoOpenTableScreen = freezed,
    Object? pricelistId = freezed,
    Object? type = freezed,
    Object? delivaryProductId = freezed,
    Object? extraProductId = freezed,
    Object? extraPercentage = freezed,
    Object? companyId = freezed,
    Object? accountJournalIds = freezed,
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
      isShowCustomerInfo: isShowCustomerInfo == freezed
          ? _value.isShowCustomerInfo
          : isShowCustomerInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRequireInformation: isRequireInformation == freezed
          ? _value.isRequireInformation
          : isRequireInformation // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRequireDriver: isRequireDriver == freezed
          ? _value.isRequireDriver
          : isRequireDriver // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAutoOpenTableScreen: isAutoOpenTableScreen == freezed
          ? _value.isAutoOpenTableScreen
          : isAutoOpenTableScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      pricelistId: pricelistId == freezed
          ? _value.pricelistId
          : pricelistId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      delivaryProductId: delivaryProductId == freezed
          ? _value.delivaryProductId
          : delivaryProductId // ignore: cast_nullable_to_non_nullable
              as bool?,
      extraProductId: extraProductId == freezed
          ? _value.extraProductId
          : extraProductId // ignore: cast_nullable_to_non_nullable
              as bool?,
      extraPercentage: extraPercentage == freezed
          ? _value.extraPercentage
          : extraPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountJournalIds: accountJournalIds == freezed
          ? _value.accountJournalIds
          : accountJournalIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$POSOrderTypeCopyWith<$Res>
    implements $POSOrderTypeCopyWith<$Res> {
  factory _$POSOrderTypeCopyWith(
          _POSOrderType value, $Res Function(_POSOrderType) then) =
      __$POSOrderTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'is_show_customer_info') bool? isShowCustomerInfo,
      @JsonKey(name: 'is_require_information') bool? isRequireInformation,
      @JsonKey(name: 'is_require_driver') bool? isRequireDriver,
      @JsonKey(name: 'is_auto_open_table_screen') bool? isAutoOpenTableScreen,
      @JsonKey(name: 'pricelist_id') int? pricelistId,
      String? type,
      @JsonKey(name: 'delivary_product_id') bool? delivaryProductId,
      @JsonKey(name: 'extra_product_id') bool? extraProductId,
      @JsonKey(name: 'extra_percentage') int? extraPercentage,
      @JsonKey(name: 'company_id') int? companyId,
      @JsonKey(name: 'account_journal_ids') List<int>? accountJournalIds});
}

/// @nodoc
class __$POSOrderTypeCopyWithImpl<$Res> extends _$POSOrderTypeCopyWithImpl<$Res>
    implements _$POSOrderTypeCopyWith<$Res> {
  __$POSOrderTypeCopyWithImpl(
      _POSOrderType _value, $Res Function(_POSOrderType) _then)
      : super(_value, (v) => _then(v as _POSOrderType));

  @override
  _POSOrderType get _value => super._value as _POSOrderType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isShowCustomerInfo = freezed,
    Object? isRequireInformation = freezed,
    Object? isRequireDriver = freezed,
    Object? isAutoOpenTableScreen = freezed,
    Object? pricelistId = freezed,
    Object? type = freezed,
    Object? delivaryProductId = freezed,
    Object? extraProductId = freezed,
    Object? extraPercentage = freezed,
    Object? companyId = freezed,
    Object? accountJournalIds = freezed,
  }) {
    return _then(_POSOrderType(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isShowCustomerInfo: isShowCustomerInfo == freezed
          ? _value.isShowCustomerInfo
          : isShowCustomerInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRequireInformation: isRequireInformation == freezed
          ? _value.isRequireInformation
          : isRequireInformation // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRequireDriver: isRequireDriver == freezed
          ? _value.isRequireDriver
          : isRequireDriver // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAutoOpenTableScreen: isAutoOpenTableScreen == freezed
          ? _value.isAutoOpenTableScreen
          : isAutoOpenTableScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      pricelistId: pricelistId == freezed
          ? _value.pricelistId
          : pricelistId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      delivaryProductId: delivaryProductId == freezed
          ? _value.delivaryProductId
          : delivaryProductId // ignore: cast_nullable_to_non_nullable
              as bool?,
      extraProductId: extraProductId == freezed
          ? _value.extraProductId
          : extraProductId // ignore: cast_nullable_to_non_nullable
              as bool?,
      extraPercentage: extraPercentage == freezed
          ? _value.extraPercentage
          : extraPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountJournalIds: accountJournalIds == freezed
          ? _value.accountJournalIds
          : accountJournalIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSOrderType implements _POSOrderType {
  const _$_POSOrderType(
      {required this.id,
      required this.name,
      @JsonKey(name: 'is_show_customer_info') this.isShowCustomerInfo,
      @JsonKey(name: 'is_require_information') this.isRequireInformation,
      @JsonKey(name: 'is_require_driver') this.isRequireDriver,
      @JsonKey(name: 'is_auto_open_table_screen') this.isAutoOpenTableScreen,
      @JsonKey(name: 'pricelist_id') this.pricelistId,
      this.type,
      @JsonKey(name: 'delivary_product_id') this.delivaryProductId,
      @JsonKey(name: 'extra_product_id') this.extraProductId,
      @JsonKey(name: 'extra_percentage') this.extraPercentage,
      @JsonKey(name: 'company_id') this.companyId,
      @JsonKey(name: 'account_journal_ids') this.accountJournalIds});

  factory _$_POSOrderType.fromJson(Map<String, dynamic> json) =>
      _$$_POSOrderTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'is_show_customer_info')
  final bool? isShowCustomerInfo;
  @override
  @JsonKey(name: 'is_require_information')
  final bool? isRequireInformation;
  @override
  @JsonKey(name: 'is_require_driver')
  final bool? isRequireDriver;
  @override
  @JsonKey(name: 'is_auto_open_table_screen')
  final bool? isAutoOpenTableScreen;
  @override
  @JsonKey(name: 'pricelist_id')
  final int? pricelistId;
  @override
  final String? type;
  @override
  @JsonKey(name: 'delivary_product_id')
  final bool? delivaryProductId;
  @override
  @JsonKey(name: 'extra_product_id')
  final bool? extraProductId;
  @override
  @JsonKey(name: 'extra_percentage')
  final int? extraPercentage;
  @override
  @JsonKey(name: 'company_id')
  final int? companyId;
  @override
  @JsonKey(name: 'account_journal_ids')
  final List<int>? accountJournalIds;

  @override
  String toString() {
    return 'POSOrderType(id: $id, name: $name, isShowCustomerInfo: $isShowCustomerInfo, isRequireInformation: $isRequireInformation, isRequireDriver: $isRequireDriver, isAutoOpenTableScreen: $isAutoOpenTableScreen, pricelistId: $pricelistId, type: $type, delivaryProductId: $delivaryProductId, extraProductId: $extraProductId, extraPercentage: $extraPercentage, companyId: $companyId, accountJournalIds: $accountJournalIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSOrderType &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.isShowCustomerInfo, isShowCustomerInfo) &&
            const DeepCollectionEquality()
                .equals(other.isRequireInformation, isRequireInformation) &&
            const DeepCollectionEquality()
                .equals(other.isRequireDriver, isRequireDriver) &&
            const DeepCollectionEquality()
                .equals(other.isAutoOpenTableScreen, isAutoOpenTableScreen) &&
            const DeepCollectionEquality()
                .equals(other.pricelistId, pricelistId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.delivaryProductId, delivaryProductId) &&
            const DeepCollectionEquality()
                .equals(other.extraProductId, extraProductId) &&
            const DeepCollectionEquality()
                .equals(other.extraPercentage, extraPercentage) &&
            const DeepCollectionEquality().equals(other.companyId, companyId) &&
            const DeepCollectionEquality()
                .equals(other.accountJournalIds, accountJournalIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isShowCustomerInfo),
      const DeepCollectionEquality().hash(isRequireInformation),
      const DeepCollectionEquality().hash(isRequireDriver),
      const DeepCollectionEquality().hash(isAutoOpenTableScreen),
      const DeepCollectionEquality().hash(pricelistId),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(delivaryProductId),
      const DeepCollectionEquality().hash(extraProductId),
      const DeepCollectionEquality().hash(extraPercentage),
      const DeepCollectionEquality().hash(companyId),
      const DeepCollectionEquality().hash(accountJournalIds));

  @JsonKey(ignore: true)
  @override
  _$POSOrderTypeCopyWith<_POSOrderType> get copyWith =>
      __$POSOrderTypeCopyWithImpl<_POSOrderType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSOrderTypeToJson(this);
  }
}

abstract class _POSOrderType implements POSOrderType {
  const factory _POSOrderType(
      {required int id,
      required String name,
      @JsonKey(name: 'is_show_customer_info')
          bool? isShowCustomerInfo,
      @JsonKey(name: 'is_require_information')
          bool? isRequireInformation,
      @JsonKey(name: 'is_require_driver')
          bool? isRequireDriver,
      @JsonKey(name: 'is_auto_open_table_screen')
          bool? isAutoOpenTableScreen,
      @JsonKey(name: 'pricelist_id')
          int? pricelistId,
      String? type,
      @JsonKey(name: 'delivary_product_id')
          bool? delivaryProductId,
      @JsonKey(name: 'extra_product_id')
          bool? extraProductId,
      @JsonKey(name: 'extra_percentage')
          int? extraPercentage,
      @JsonKey(name: 'company_id')
          int? companyId,
      @JsonKey(name: 'account_journal_ids')
          List<int>? accountJournalIds}) = _$_POSOrderType;

  factory _POSOrderType.fromJson(Map<String, dynamic> json) =
      _$_POSOrderType.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'is_show_customer_info')
  bool? get isShowCustomerInfo;
  @override
  @JsonKey(name: 'is_require_information')
  bool? get isRequireInformation;
  @override
  @JsonKey(name: 'is_require_driver')
  bool? get isRequireDriver;
  @override
  @JsonKey(name: 'is_auto_open_table_screen')
  bool? get isAutoOpenTableScreen;
  @override
  @JsonKey(name: 'pricelist_id')
  int? get pricelistId;
  @override
  String? get type;
  @override
  @JsonKey(name: 'delivary_product_id')
  bool? get delivaryProductId;
  @override
  @JsonKey(name: 'extra_product_id')
  bool? get extraProductId;
  @override
  @JsonKey(name: 'extra_percentage')
  int? get extraPercentage;
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @override
  @JsonKey(name: 'account_journal_ids')
  List<int>? get accountJournalIds;
  @override
  @JsonKey(ignore: true)
  _$POSOrderTypeCopyWith<_POSOrderType> get copyWith =>
      throw _privateConstructorUsedError;
}

POSOrderTypeResults _$POSOrderTypeResultsFromJson(Map<String, dynamic> json) {
  return _POSOrderTypeResults.fromJson(json);
}

/// @nodoc
class _$POSOrderTypeResultsTearOff {
  const _$POSOrderTypeResultsTearOff();

  _POSOrderTypeResults call(
      {@JsonKey(name: 'results') required List<POSOrderType> POSOrderTypes}) {
    return _POSOrderTypeResults(
      POSOrderTypes: POSOrderTypes,
    );
  }

  POSOrderTypeResults fromJson(Map<String, Object?> json) {
    return POSOrderTypeResults.fromJson(json);
  }
}

/// @nodoc
const $POSOrderTypeResults = _$POSOrderTypeResultsTearOff();

/// @nodoc
mixin _$POSOrderTypeResults {
  @JsonKey(name: 'results')
  List<POSOrderType> get POSOrderTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSOrderTypeResultsCopyWith<POSOrderTypeResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSOrderTypeResultsCopyWith<$Res> {
  factory $POSOrderTypeResultsCopyWith(
          POSOrderTypeResults value, $Res Function(POSOrderTypeResults) then) =
      _$POSOrderTypeResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<POSOrderType> POSOrderTypes});
}

/// @nodoc
class _$POSOrderTypeResultsCopyWithImpl<$Res>
    implements $POSOrderTypeResultsCopyWith<$Res> {
  _$POSOrderTypeResultsCopyWithImpl(this._value, this._then);

  final POSOrderTypeResults _value;
  // ignore: unused_field
  final $Res Function(POSOrderTypeResults) _then;

  @override
  $Res call({
    Object? POSOrderTypes = freezed,
  }) {
    return _then(_value.copyWith(
      POSOrderTypes: POSOrderTypes == freezed
          ? _value.POSOrderTypes
          : POSOrderTypes // ignore: cast_nullable_to_non_nullable
              as List<POSOrderType>,
    ));
  }
}

/// @nodoc
abstract class _$POSOrderTypeResultsCopyWith<$Res>
    implements $POSOrderTypeResultsCopyWith<$Res> {
  factory _$POSOrderTypeResultsCopyWith(_POSOrderTypeResults value,
          $Res Function(_POSOrderTypeResults) then) =
      __$POSOrderTypeResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<POSOrderType> POSOrderTypes});
}

/// @nodoc
class __$POSOrderTypeResultsCopyWithImpl<$Res>
    extends _$POSOrderTypeResultsCopyWithImpl<$Res>
    implements _$POSOrderTypeResultsCopyWith<$Res> {
  __$POSOrderTypeResultsCopyWithImpl(
      _POSOrderTypeResults _value, $Res Function(_POSOrderTypeResults) _then)
      : super(_value, (v) => _then(v as _POSOrderTypeResults));

  @override
  _POSOrderTypeResults get _value => super._value as _POSOrderTypeResults;

  @override
  $Res call({
    Object? POSOrderTypes = freezed,
  }) {
    return _then(_POSOrderTypeResults(
      POSOrderTypes: POSOrderTypes == freezed
          ? _value.POSOrderTypes
          : POSOrderTypes // ignore: cast_nullable_to_non_nullable
              as List<POSOrderType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSOrderTypeResults implements _POSOrderTypeResults {
  const _$_POSOrderTypeResults(
      {@JsonKey(name: 'results') required this.POSOrderTypes});

  factory _$_POSOrderTypeResults.fromJson(Map<String, dynamic> json) =>
      _$$_POSOrderTypeResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<POSOrderType> POSOrderTypes;

  @override
  String toString() {
    return 'POSOrderTypeResults(POSOrderTypes: $POSOrderTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSOrderTypeResults &&
            const DeepCollectionEquality()
                .equals(other.POSOrderTypes, POSOrderTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(POSOrderTypes));

  @JsonKey(ignore: true)
  @override
  _$POSOrderTypeResultsCopyWith<_POSOrderTypeResults> get copyWith =>
      __$POSOrderTypeResultsCopyWithImpl<_POSOrderTypeResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSOrderTypeResultsToJson(this);
  }
}

abstract class _POSOrderTypeResults implements POSOrderTypeResults {
  const factory _POSOrderTypeResults(
      {@JsonKey(name: 'results')
          required List<POSOrderType> POSOrderTypes}) = _$_POSOrderTypeResults;

  factory _POSOrderTypeResults.fromJson(Map<String, dynamic> json) =
      _$_POSOrderTypeResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<POSOrderType> get POSOrderTypes;
  @override
  @JsonKey(ignore: true)
  _$POSOrderTypeResultsCopyWith<_POSOrderTypeResults> get copyWith =>
      throw _privateConstructorUsedError;
}
