// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

POSData _$POSDataFromJson(Map<String, dynamic> json) {
  return _POSData.fromJson(json);
}

/// @nodoc
class _$POSDataTearOff {
  const _$POSDataTearOff();

  _POSData call(
      {required int id,
      required String name,
      @JsonKey(name: 'pos_type')
          String? posType,
      @JsonKey(name: 'is_product_calories_active')
          bool? isProductCaloriesActive,
      @JsonKey(name: 'allowed_user_ids')
          List<int>? allowedUserIds,
      @JsonKey(name: 'floor_ids')
          List<int>? floorIds,
      @JsonKey(name: 'exclude_pos_categ_ids')
          List<int>? excludePosCategIds,
      @JsonKey(name: 'exclude_product_ids')
          List<int>? excludeProductIds,
      @JsonKey(name: 'product_price')
          String? productPrice,
      @JsonKey(name: 'payment_method_ids')
          List<int>? paymentMethodIds,
      bool? header,
      bool? footer,
      @JsonKey(name: 'discount_program_active')
          bool? discountProgramActive,
      @JsonKey(name: 'aval_discount_program')
          List<String>? avalDiscountProgram,
      @JsonKey(name: 'discount_program_product_id')
          bool? discountProgramProductId,
      @JsonKey(name: 'allow_pin_code')
          bool? allowPinCode,
      @JsonKey(name: 'pin_code')
          bool? pinCode,
      @JsonKey(name: 'order_type_active')
          bool? orderTypeActive,
      @JsonKey(name: 'order_type_ids')
          List<int>? orderTypeIds,
      @JsonKey(name: 'order_type_journal_ids')
          List<int>? orderTypeJournalIds,
      @JsonKey(name: 'default_type_order_type')
          bool? defaultTypeOrderType}) {
    return _POSData(
      id: id,
      name: name,
      posType: posType,
      isProductCaloriesActive: isProductCaloriesActive,
      allowedUserIds: allowedUserIds,
      floorIds: floorIds,
      excludePosCategIds: excludePosCategIds,
      excludeProductIds: excludeProductIds,
      productPrice: productPrice,
      paymentMethodIds: paymentMethodIds,
      header: header,
      footer: footer,
      discountProgramActive: discountProgramActive,
      avalDiscountProgram: avalDiscountProgram,
      discountProgramProductId: discountProgramProductId,
      allowPinCode: allowPinCode,
      pinCode: pinCode,
      orderTypeActive: orderTypeActive,
      orderTypeIds: orderTypeIds,
      orderTypeJournalIds: orderTypeJournalIds,
      defaultTypeOrderType: defaultTypeOrderType,
    );
  }

  POSData fromJson(Map<String, Object?> json) {
    return POSData.fromJson(json);
  }
}

/// @nodoc
const $POSData = _$POSDataTearOff();

/// @nodoc
mixin _$POSData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'pos_type')
  String? get posType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_product_calories_active')
  bool? get isProductCaloriesActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowed_user_ids')
  List<int>? get allowedUserIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor_ids')
  List<int>? get floorIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'exclude_pos_categ_ids')
  List<int>? get excludePosCategIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'exclude_product_ids')
  List<int>? get excludeProductIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price')
  String? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_ids')
  List<int>? get paymentMethodIds => throw _privateConstructorUsedError;
  bool? get header => throw _privateConstructorUsedError;
  bool? get footer => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_program_active')
  bool? get discountProgramActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'aval_discount_program')
  List<String>? get avalDiscountProgram => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_program_product_id')
  bool? get discountProgramProductId => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_pin_code')
  bool? get allowPinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'pin_code')
  bool? get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type_active')
  bool? get orderTypeActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type_ids')
  List<int>? get orderTypeIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type_journal_ids')
  List<int>? get orderTypeJournalIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_type_order_type')
  bool? get defaultTypeOrderType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSDataCopyWith<POSData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSDataCopyWith<$Res> {
  factory $POSDataCopyWith(POSData value, $Res Function(POSData) then) =
      _$POSDataCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'pos_type')
          String? posType,
      @JsonKey(name: 'is_product_calories_active')
          bool? isProductCaloriesActive,
      @JsonKey(name: 'allowed_user_ids')
          List<int>? allowedUserIds,
      @JsonKey(name: 'floor_ids')
          List<int>? floorIds,
      @JsonKey(name: 'exclude_pos_categ_ids')
          List<int>? excludePosCategIds,
      @JsonKey(name: 'exclude_product_ids')
          List<int>? excludeProductIds,
      @JsonKey(name: 'product_price')
          String? productPrice,
      @JsonKey(name: 'payment_method_ids')
          List<int>? paymentMethodIds,
      bool? header,
      bool? footer,
      @JsonKey(name: 'discount_program_active')
          bool? discountProgramActive,
      @JsonKey(name: 'aval_discount_program')
          List<String>? avalDiscountProgram,
      @JsonKey(name: 'discount_program_product_id')
          bool? discountProgramProductId,
      @JsonKey(name: 'allow_pin_code')
          bool? allowPinCode,
      @JsonKey(name: 'pin_code')
          bool? pinCode,
      @JsonKey(name: 'order_type_active')
          bool? orderTypeActive,
      @JsonKey(name: 'order_type_ids')
          List<int>? orderTypeIds,
      @JsonKey(name: 'order_type_journal_ids')
          List<int>? orderTypeJournalIds,
      @JsonKey(name: 'default_type_order_type')
          bool? defaultTypeOrderType});
}

/// @nodoc
class _$POSDataCopyWithImpl<$Res> implements $POSDataCopyWith<$Res> {
  _$POSDataCopyWithImpl(this._value, this._then);

  final POSData _value;
  // ignore: unused_field
  final $Res Function(POSData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posType = freezed,
    Object? isProductCaloriesActive = freezed,
    Object? allowedUserIds = freezed,
    Object? floorIds = freezed,
    Object? excludePosCategIds = freezed,
    Object? excludeProductIds = freezed,
    Object? productPrice = freezed,
    Object? paymentMethodIds = freezed,
    Object? header = freezed,
    Object? footer = freezed,
    Object? discountProgramActive = freezed,
    Object? avalDiscountProgram = freezed,
    Object? discountProgramProductId = freezed,
    Object? allowPinCode = freezed,
    Object? pinCode = freezed,
    Object? orderTypeActive = freezed,
    Object? orderTypeIds = freezed,
    Object? orderTypeJournalIds = freezed,
    Object? defaultTypeOrderType = freezed,
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
      posType: posType == freezed
          ? _value.posType
          : posType // ignore: cast_nullable_to_non_nullable
              as String?,
      isProductCaloriesActive: isProductCaloriesActive == freezed
          ? _value.isProductCaloriesActive
          : isProductCaloriesActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowedUserIds: allowedUserIds == freezed
          ? _value.allowedUserIds
          : allowedUserIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      floorIds: floorIds == freezed
          ? _value.floorIds
          : floorIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      excludePosCategIds: excludePosCategIds == freezed
          ? _value.excludePosCategIds
          : excludePosCategIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      excludeProductIds: excludeProductIds == freezed
          ? _value.excludeProductIds
          : excludeProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      productPrice: productPrice == freezed
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodIds: paymentMethodIds == freezed
          ? _value.paymentMethodIds
          : paymentMethodIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as bool?,
      footer: footer == freezed
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountProgramActive: discountProgramActive == freezed
          ? _value.discountProgramActive
          : discountProgramActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      avalDiscountProgram: avalDiscountProgram == freezed
          ? _value.avalDiscountProgram
          : avalDiscountProgram // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discountProgramProductId: discountProgramProductId == freezed
          ? _value.discountProgramProductId
          : discountProgramProductId // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowPinCode: allowPinCode == freezed
          ? _value.allowPinCode
          : allowPinCode // ignore: cast_nullable_to_non_nullable
              as bool?,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderTypeActive: orderTypeActive == freezed
          ? _value.orderTypeActive
          : orderTypeActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderTypeIds: orderTypeIds == freezed
          ? _value.orderTypeIds
          : orderTypeIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      orderTypeJournalIds: orderTypeJournalIds == freezed
          ? _value.orderTypeJournalIds
          : orderTypeJournalIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      defaultTypeOrderType: defaultTypeOrderType == freezed
          ? _value.defaultTypeOrderType
          : defaultTypeOrderType // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$POSDataCopyWith<$Res> implements $POSDataCopyWith<$Res> {
  factory _$POSDataCopyWith(_POSData value, $Res Function(_POSData) then) =
      __$POSDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'pos_type')
          String? posType,
      @JsonKey(name: 'is_product_calories_active')
          bool? isProductCaloriesActive,
      @JsonKey(name: 'allowed_user_ids')
          List<int>? allowedUserIds,
      @JsonKey(name: 'floor_ids')
          List<int>? floorIds,
      @JsonKey(name: 'exclude_pos_categ_ids')
          List<int>? excludePosCategIds,
      @JsonKey(name: 'exclude_product_ids')
          List<int>? excludeProductIds,
      @JsonKey(name: 'product_price')
          String? productPrice,
      @JsonKey(name: 'payment_method_ids')
          List<int>? paymentMethodIds,
      bool? header,
      bool? footer,
      @JsonKey(name: 'discount_program_active')
          bool? discountProgramActive,
      @JsonKey(name: 'aval_discount_program')
          List<String>? avalDiscountProgram,
      @JsonKey(name: 'discount_program_product_id')
          bool? discountProgramProductId,
      @JsonKey(name: 'allow_pin_code')
          bool? allowPinCode,
      @JsonKey(name: 'pin_code')
          bool? pinCode,
      @JsonKey(name: 'order_type_active')
          bool? orderTypeActive,
      @JsonKey(name: 'order_type_ids')
          List<int>? orderTypeIds,
      @JsonKey(name: 'order_type_journal_ids')
          List<int>? orderTypeJournalIds,
      @JsonKey(name: 'default_type_order_type')
          bool? defaultTypeOrderType});
}

/// @nodoc
class __$POSDataCopyWithImpl<$Res> extends _$POSDataCopyWithImpl<$Res>
    implements _$POSDataCopyWith<$Res> {
  __$POSDataCopyWithImpl(_POSData _value, $Res Function(_POSData) _then)
      : super(_value, (v) => _then(v as _POSData));

  @override
  _POSData get _value => super._value as _POSData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posType = freezed,
    Object? isProductCaloriesActive = freezed,
    Object? allowedUserIds = freezed,
    Object? floorIds = freezed,
    Object? excludePosCategIds = freezed,
    Object? excludeProductIds = freezed,
    Object? productPrice = freezed,
    Object? paymentMethodIds = freezed,
    Object? header = freezed,
    Object? footer = freezed,
    Object? discountProgramActive = freezed,
    Object? avalDiscountProgram = freezed,
    Object? discountProgramProductId = freezed,
    Object? allowPinCode = freezed,
    Object? pinCode = freezed,
    Object? orderTypeActive = freezed,
    Object? orderTypeIds = freezed,
    Object? orderTypeJournalIds = freezed,
    Object? defaultTypeOrderType = freezed,
  }) {
    return _then(_POSData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      posType: posType == freezed
          ? _value.posType
          : posType // ignore: cast_nullable_to_non_nullable
              as String?,
      isProductCaloriesActive: isProductCaloriesActive == freezed
          ? _value.isProductCaloriesActive
          : isProductCaloriesActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowedUserIds: allowedUserIds == freezed
          ? _value.allowedUserIds
          : allowedUserIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      floorIds: floorIds == freezed
          ? _value.floorIds
          : floorIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      excludePosCategIds: excludePosCategIds == freezed
          ? _value.excludePosCategIds
          : excludePosCategIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      excludeProductIds: excludeProductIds == freezed
          ? _value.excludeProductIds
          : excludeProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      productPrice: productPrice == freezed
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodIds: paymentMethodIds == freezed
          ? _value.paymentMethodIds
          : paymentMethodIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as bool?,
      footer: footer == freezed
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountProgramActive: discountProgramActive == freezed
          ? _value.discountProgramActive
          : discountProgramActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      avalDiscountProgram: avalDiscountProgram == freezed
          ? _value.avalDiscountProgram
          : avalDiscountProgram // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discountProgramProductId: discountProgramProductId == freezed
          ? _value.discountProgramProductId
          : discountProgramProductId // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowPinCode: allowPinCode == freezed
          ? _value.allowPinCode
          : allowPinCode // ignore: cast_nullable_to_non_nullable
              as bool?,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderTypeActive: orderTypeActive == freezed
          ? _value.orderTypeActive
          : orderTypeActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderTypeIds: orderTypeIds == freezed
          ? _value.orderTypeIds
          : orderTypeIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      orderTypeJournalIds: orderTypeJournalIds == freezed
          ? _value.orderTypeJournalIds
          : orderTypeJournalIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      defaultTypeOrderType: defaultTypeOrderType == freezed
          ? _value.defaultTypeOrderType
          : defaultTypeOrderType // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSData implements _POSData {
  const _$_POSData(
      {required this.id,
      required this.name,
      @JsonKey(name: 'pos_type')
          this.posType,
      @JsonKey(name: 'is_product_calories_active')
          this.isProductCaloriesActive,
      @JsonKey(name: 'allowed_user_ids')
          this.allowedUserIds,
      @JsonKey(name: 'floor_ids')
          this.floorIds,
      @JsonKey(name: 'exclude_pos_categ_ids')
          this.excludePosCategIds,
      @JsonKey(name: 'exclude_product_ids')
          this.excludeProductIds,
      @JsonKey(name: 'product_price')
          this.productPrice,
      @JsonKey(name: 'payment_method_ids')
          this.paymentMethodIds,
      this.header,
      this.footer,
      @JsonKey(name: 'discount_program_active')
          this.discountProgramActive,
      @JsonKey(name: 'aval_discount_program')
          this.avalDiscountProgram,
      @JsonKey(name: 'discount_program_product_id')
          this.discountProgramProductId,
      @JsonKey(name: 'allow_pin_code')
          this.allowPinCode,
      @JsonKey(name: 'pin_code')
          this.pinCode,
      @JsonKey(name: 'order_type_active')
          this.orderTypeActive,
      @JsonKey(name: 'order_type_ids')
          this.orderTypeIds,
      @JsonKey(name: 'order_type_journal_ids')
          this.orderTypeJournalIds,
      @JsonKey(name: 'default_type_order_type')
          this.defaultTypeOrderType});

  factory _$_POSData.fromJson(Map<String, dynamic> json) =>
      _$$_POSDataFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'pos_type')
  final String? posType;
  @override
  @JsonKey(name: 'is_product_calories_active')
  final bool? isProductCaloriesActive;
  @override
  @JsonKey(name: 'allowed_user_ids')
  final List<int>? allowedUserIds;
  @override
  @JsonKey(name: 'floor_ids')
  final List<int>? floorIds;
  @override
  @JsonKey(name: 'exclude_pos_categ_ids')
  final List<int>? excludePosCategIds;
  @override
  @JsonKey(name: 'exclude_product_ids')
  final List<int>? excludeProductIds;
  @override
  @JsonKey(name: 'product_price')
  final String? productPrice;
  @override
  @JsonKey(name: 'payment_method_ids')
  final List<int>? paymentMethodIds;
  @override
  final bool? header;
  @override
  final bool? footer;
  @override
  @JsonKey(name: 'discount_program_active')
  final bool? discountProgramActive;
  @override
  @JsonKey(name: 'aval_discount_program')
  final List<String>? avalDiscountProgram;
  @override
  @JsonKey(name: 'discount_program_product_id')
  final bool? discountProgramProductId;
  @override
  @JsonKey(name: 'allow_pin_code')
  final bool? allowPinCode;
  @override
  @JsonKey(name: 'pin_code')
  final bool? pinCode;
  @override
  @JsonKey(name: 'order_type_active')
  final bool? orderTypeActive;
  @override
  @JsonKey(name: 'order_type_ids')
  final List<int>? orderTypeIds;
  @override
  @JsonKey(name: 'order_type_journal_ids')
  final List<int>? orderTypeJournalIds;
  @override
  @JsonKey(name: 'default_type_order_type')
  final bool? defaultTypeOrderType;

  @override
  String toString() {
    return 'POSData(id: $id, name: $name, posType: $posType, isProductCaloriesActive: $isProductCaloriesActive, allowedUserIds: $allowedUserIds, floorIds: $floorIds, excludePosCategIds: $excludePosCategIds, excludeProductIds: $excludeProductIds, productPrice: $productPrice, paymentMethodIds: $paymentMethodIds, header: $header, footer: $footer, discountProgramActive: $discountProgramActive, avalDiscountProgram: $avalDiscountProgram, discountProgramProductId: $discountProgramProductId, allowPinCode: $allowPinCode, pinCode: $pinCode, orderTypeActive: $orderTypeActive, orderTypeIds: $orderTypeIds, orderTypeJournalIds: $orderTypeJournalIds, defaultTypeOrderType: $defaultTypeOrderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.posType, posType) &&
            const DeepCollectionEquality().equals(
                other.isProductCaloriesActive, isProductCaloriesActive) &&
            const DeepCollectionEquality()
                .equals(other.allowedUserIds, allowedUserIds) &&
            const DeepCollectionEquality().equals(other.floorIds, floorIds) &&
            const DeepCollectionEquality()
                .equals(other.excludePosCategIds, excludePosCategIds) &&
            const DeepCollectionEquality()
                .equals(other.excludeProductIds, excludeProductIds) &&
            const DeepCollectionEquality()
                .equals(other.productPrice, productPrice) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethodIds, paymentMethodIds) &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality().equals(other.footer, footer) &&
            const DeepCollectionEquality()
                .equals(other.discountProgramActive, discountProgramActive) &&
            const DeepCollectionEquality()
                .equals(other.avalDiscountProgram, avalDiscountProgram) &&
            const DeepCollectionEquality().equals(
                other.discountProgramProductId, discountProgramProductId) &&
            const DeepCollectionEquality()
                .equals(other.allowPinCode, allowPinCode) &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode) &&
            const DeepCollectionEquality()
                .equals(other.orderTypeActive, orderTypeActive) &&
            const DeepCollectionEquality()
                .equals(other.orderTypeIds, orderTypeIds) &&
            const DeepCollectionEquality()
                .equals(other.orderTypeJournalIds, orderTypeJournalIds) &&
            const DeepCollectionEquality()
                .equals(other.defaultTypeOrderType, defaultTypeOrderType));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(posType),
        const DeepCollectionEquality().hash(isProductCaloriesActive),
        const DeepCollectionEquality().hash(allowedUserIds),
        const DeepCollectionEquality().hash(floorIds),
        const DeepCollectionEquality().hash(excludePosCategIds),
        const DeepCollectionEquality().hash(excludeProductIds),
        const DeepCollectionEquality().hash(productPrice),
        const DeepCollectionEquality().hash(paymentMethodIds),
        const DeepCollectionEquality().hash(header),
        const DeepCollectionEquality().hash(footer),
        const DeepCollectionEquality().hash(discountProgramActive),
        const DeepCollectionEquality().hash(avalDiscountProgram),
        const DeepCollectionEquality().hash(discountProgramProductId),
        const DeepCollectionEquality().hash(allowPinCode),
        const DeepCollectionEquality().hash(pinCode),
        const DeepCollectionEquality().hash(orderTypeActive),
        const DeepCollectionEquality().hash(orderTypeIds),
        const DeepCollectionEquality().hash(orderTypeJournalIds),
        const DeepCollectionEquality().hash(defaultTypeOrderType)
      ]);

  @JsonKey(ignore: true)
  @override
  _$POSDataCopyWith<_POSData> get copyWith =>
      __$POSDataCopyWithImpl<_POSData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSDataToJson(this);
  }
}

abstract class _POSData implements POSData {
  const factory _POSData(
      {required int id,
      required String name,
      @JsonKey(name: 'pos_type')
          String? posType,
      @JsonKey(name: 'is_product_calories_active')
          bool? isProductCaloriesActive,
      @JsonKey(name: 'allowed_user_ids')
          List<int>? allowedUserIds,
      @JsonKey(name: 'floor_ids')
          List<int>? floorIds,
      @JsonKey(name: 'exclude_pos_categ_ids')
          List<int>? excludePosCategIds,
      @JsonKey(name: 'exclude_product_ids')
          List<int>? excludeProductIds,
      @JsonKey(name: 'product_price')
          String? productPrice,
      @JsonKey(name: 'payment_method_ids')
          List<int>? paymentMethodIds,
      bool? header,
      bool? footer,
      @JsonKey(name: 'discount_program_active')
          bool? discountProgramActive,
      @JsonKey(name: 'aval_discount_program')
          List<String>? avalDiscountProgram,
      @JsonKey(name: 'discount_program_product_id')
          bool? discountProgramProductId,
      @JsonKey(name: 'allow_pin_code')
          bool? allowPinCode,
      @JsonKey(name: 'pin_code')
          bool? pinCode,
      @JsonKey(name: 'order_type_active')
          bool? orderTypeActive,
      @JsonKey(name: 'order_type_ids')
          List<int>? orderTypeIds,
      @JsonKey(name: 'order_type_journal_ids')
          List<int>? orderTypeJournalIds,
      @JsonKey(name: 'default_type_order_type')
          bool? defaultTypeOrderType}) = _$_POSData;

  factory _POSData.fromJson(Map<String, dynamic> json) = _$_POSData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'pos_type')
  String? get posType;
  @override
  @JsonKey(name: 'is_product_calories_active')
  bool? get isProductCaloriesActive;
  @override
  @JsonKey(name: 'allowed_user_ids')
  List<int>? get allowedUserIds;
  @override
  @JsonKey(name: 'floor_ids')
  List<int>? get floorIds;
  @override
  @JsonKey(name: 'exclude_pos_categ_ids')
  List<int>? get excludePosCategIds;
  @override
  @JsonKey(name: 'exclude_product_ids')
  List<int>? get excludeProductIds;
  @override
  @JsonKey(name: 'product_price')
  String? get productPrice;
  @override
  @JsonKey(name: 'payment_method_ids')
  List<int>? get paymentMethodIds;
  @override
  bool? get header;
  @override
  bool? get footer;
  @override
  @JsonKey(name: 'discount_program_active')
  bool? get discountProgramActive;
  @override
  @JsonKey(name: 'aval_discount_program')
  List<String>? get avalDiscountProgram;
  @override
  @JsonKey(name: 'discount_program_product_id')
  bool? get discountProgramProductId;
  @override
  @JsonKey(name: 'allow_pin_code')
  bool? get allowPinCode;
  @override
  @JsonKey(name: 'pin_code')
  bool? get pinCode;
  @override
  @JsonKey(name: 'order_type_active')
  bool? get orderTypeActive;
  @override
  @JsonKey(name: 'order_type_ids')
  List<int>? get orderTypeIds;
  @override
  @JsonKey(name: 'order_type_journal_ids')
  List<int>? get orderTypeJournalIds;
  @override
  @JsonKey(name: 'default_type_order_type')
  bool? get defaultTypeOrderType;
  @override
  @JsonKey(ignore: true)
  _$POSDataCopyWith<_POSData> get copyWith =>
      throw _privateConstructorUsedError;
}

POSDataResults _$POSDataResultsFromJson(Map<String, dynamic> json) {
  return _POSDataResults.fromJson(json);
}

/// @nodoc
class _$POSDataResultsTearOff {
  const _$POSDataResultsTearOff();

  _POSDataResults call(
      {@JsonKey(name: 'results') required List<POSData> POSDatas}) {
    return _POSDataResults(
      POSDatas: POSDatas,
    );
  }

  POSDataResults fromJson(Map<String, Object?> json) {
    return POSDataResults.fromJson(json);
  }
}

/// @nodoc
const $POSDataResults = _$POSDataResultsTearOff();

/// @nodoc
mixin _$POSDataResults {
  @JsonKey(name: 'results')
  List<POSData> get POSDatas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSDataResultsCopyWith<POSDataResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSDataResultsCopyWith<$Res> {
  factory $POSDataResultsCopyWith(
          POSDataResults value, $Res Function(POSDataResults) then) =
      _$POSDataResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<POSData> POSDatas});
}

/// @nodoc
class _$POSDataResultsCopyWithImpl<$Res>
    implements $POSDataResultsCopyWith<$Res> {
  _$POSDataResultsCopyWithImpl(this._value, this._then);

  final POSDataResults _value;
  // ignore: unused_field
  final $Res Function(POSDataResults) _then;

  @override
  $Res call({
    Object? POSDatas = freezed,
  }) {
    return _then(_value.copyWith(
      POSDatas: POSDatas == freezed
          ? _value.POSDatas
          : POSDatas // ignore: cast_nullable_to_non_nullable
              as List<POSData>,
    ));
  }
}

/// @nodoc
abstract class _$POSDataResultsCopyWith<$Res>
    implements $POSDataResultsCopyWith<$Res> {
  factory _$POSDataResultsCopyWith(
          _POSDataResults value, $Res Function(_POSDataResults) then) =
      __$POSDataResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<POSData> POSDatas});
}

/// @nodoc
class __$POSDataResultsCopyWithImpl<$Res>
    extends _$POSDataResultsCopyWithImpl<$Res>
    implements _$POSDataResultsCopyWith<$Res> {
  __$POSDataResultsCopyWithImpl(
      _POSDataResults _value, $Res Function(_POSDataResults) _then)
      : super(_value, (v) => _then(v as _POSDataResults));

  @override
  _POSDataResults get _value => super._value as _POSDataResults;

  @override
  $Res call({
    Object? POSDatas = freezed,
  }) {
    return _then(_POSDataResults(
      POSDatas: POSDatas == freezed
          ? _value.POSDatas
          : POSDatas // ignore: cast_nullable_to_non_nullable
              as List<POSData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSDataResults implements _POSDataResults {
  const _$_POSDataResults({@JsonKey(name: 'results') required this.POSDatas});

  factory _$_POSDataResults.fromJson(Map<String, dynamic> json) =>
      _$$_POSDataResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<POSData> POSDatas;

  @override
  String toString() {
    return 'POSDataResults(POSDatas: $POSDatas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSDataResults &&
            const DeepCollectionEquality().equals(other.POSDatas, POSDatas));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(POSDatas));

  @JsonKey(ignore: true)
  @override
  _$POSDataResultsCopyWith<_POSDataResults> get copyWith =>
      __$POSDataResultsCopyWithImpl<_POSDataResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSDataResultsToJson(this);
  }
}

abstract class _POSDataResults implements POSDataResults {
  const factory _POSDataResults(
          {@JsonKey(name: 'results') required List<POSData> POSDatas}) =
      _$_POSDataResults;

  factory _POSDataResults.fromJson(Map<String, dynamic> json) =
      _$_POSDataResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<POSData> get POSDatas;
  @override
  @JsonKey(ignore: true)
  _$POSDataResultsCopyWith<_POSDataResults> get copyWith =>
      throw _privateConstructorUsedError;
}
