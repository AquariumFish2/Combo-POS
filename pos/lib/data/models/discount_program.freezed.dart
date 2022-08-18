// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discount_program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscountProgram _$DiscountProgramFromJson(Map<String, dynamic> json) {
  return _DiscountProgram.fromJson(json);
}

/// @nodoc
class _$DiscountProgramTearOff {
  const _$DiscountProgramTearOff();

  _DiscountProgram call(
      {required int id,
      required String name,
      @JsonKey(name: 'discount_type') String? discountType,
      @JsonKey(name: 'require_customer') bool? requireCustomer,
      @JsonKey(name: 'customer_restricted') bool? customerRestricted,
      int? amount,
      @JsonKey(name: 'pos_category_ids') List<int>? posCategoryIds,
      @JsonKey(name: 'pos_applied') List<int>? posApplied}) {
    return _DiscountProgram(
      id: id,
      name: name,
      discountType: discountType,
      requireCustomer: requireCustomer,
      customerRestricted: customerRestricted,
      amount: amount,
      posCategoryIds: posCategoryIds,
      posApplied: posApplied,
    );
  }

  DiscountProgram fromJson(Map<String, Object?> json) {
    return DiscountProgram.fromJson(json);
  }
}

/// @nodoc
const $DiscountProgram = _$DiscountProgramTearOff();

/// @nodoc
mixin _$DiscountProgram {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'require_customer')
  bool? get requireCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_restricted')
  bool? get customerRestricted => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'pos_category_ids')
  List<int>? get posCategoryIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'pos_applied')
  List<int>? get posApplied => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountProgramCopyWith<DiscountProgram> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountProgramCopyWith<$Res> {
  factory $DiscountProgramCopyWith(
          DiscountProgram value, $Res Function(DiscountProgram) then) =
      _$DiscountProgramCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'discount_type') String? discountType,
      @JsonKey(name: 'require_customer') bool? requireCustomer,
      @JsonKey(name: 'customer_restricted') bool? customerRestricted,
      int? amount,
      @JsonKey(name: 'pos_category_ids') List<int>? posCategoryIds,
      @JsonKey(name: 'pos_applied') List<int>? posApplied});
}

/// @nodoc
class _$DiscountProgramCopyWithImpl<$Res>
    implements $DiscountProgramCopyWith<$Res> {
  _$DiscountProgramCopyWithImpl(this._value, this._then);

  final DiscountProgram _value;
  // ignore: unused_field
  final $Res Function(DiscountProgram) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? discountType = freezed,
    Object? requireCustomer = freezed,
    Object? customerRestricted = freezed,
    Object? amount = freezed,
    Object? posCategoryIds = freezed,
    Object? posApplied = freezed,
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
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      requireCustomer: requireCustomer == freezed
          ? _value.requireCustomer
          : requireCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      customerRestricted: customerRestricted == freezed
          ? _value.customerRestricted
          : customerRestricted // ignore: cast_nullable_to_non_nullable
              as bool?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      posCategoryIds: posCategoryIds == freezed
          ? _value.posCategoryIds
          : posCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      posApplied: posApplied == freezed
          ? _value.posApplied
          : posApplied // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$DiscountProgramCopyWith<$Res>
    implements $DiscountProgramCopyWith<$Res> {
  factory _$DiscountProgramCopyWith(
          _DiscountProgram value, $Res Function(_DiscountProgram) then) =
      __$DiscountProgramCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'discount_type') String? discountType,
      @JsonKey(name: 'require_customer') bool? requireCustomer,
      @JsonKey(name: 'customer_restricted') bool? customerRestricted,
      int? amount,
      @JsonKey(name: 'pos_category_ids') List<int>? posCategoryIds,
      @JsonKey(name: 'pos_applied') List<int>? posApplied});
}

/// @nodoc
class __$DiscountProgramCopyWithImpl<$Res>
    extends _$DiscountProgramCopyWithImpl<$Res>
    implements _$DiscountProgramCopyWith<$Res> {
  __$DiscountProgramCopyWithImpl(
      _DiscountProgram _value, $Res Function(_DiscountProgram) _then)
      : super(_value, (v) => _then(v as _DiscountProgram));

  @override
  _DiscountProgram get _value => super._value as _DiscountProgram;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? discountType = freezed,
    Object? requireCustomer = freezed,
    Object? customerRestricted = freezed,
    Object? amount = freezed,
    Object? posCategoryIds = freezed,
    Object? posApplied = freezed,
  }) {
    return _then(_DiscountProgram(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: discountType == freezed
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      requireCustomer: requireCustomer == freezed
          ? _value.requireCustomer
          : requireCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      customerRestricted: customerRestricted == freezed
          ? _value.customerRestricted
          : customerRestricted // ignore: cast_nullable_to_non_nullable
              as bool?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      posCategoryIds: posCategoryIds == freezed
          ? _value.posCategoryIds
          : posCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      posApplied: posApplied == freezed
          ? _value.posApplied
          : posApplied // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountProgram implements _DiscountProgram {
  const _$_DiscountProgram(
      {required this.id,
      required this.name,
      @JsonKey(name: 'discount_type') this.discountType,
      @JsonKey(name: 'require_customer') this.requireCustomer,
      @JsonKey(name: 'customer_restricted') this.customerRestricted,
      this.amount,
      @JsonKey(name: 'pos_category_ids') this.posCategoryIds,
      @JsonKey(name: 'pos_applied') this.posApplied});

  factory _$_DiscountProgram.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountProgramFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'discount_type')
  final String? discountType;
  @override
  @JsonKey(name: 'require_customer')
  final bool? requireCustomer;
  @override
  @JsonKey(name: 'customer_restricted')
  final bool? customerRestricted;
  @override
  final int? amount;
  @override
  @JsonKey(name: 'pos_category_ids')
  final List<int>? posCategoryIds;
  @override
  @JsonKey(name: 'pos_applied')
  final List<int>? posApplied;

  @override
  String toString() {
    return 'DiscountProgram(id: $id, name: $name, discountType: $discountType, requireCustomer: $requireCustomer, customerRestricted: $customerRestricted, amount: $amount, posCategoryIds: $posCategoryIds, posApplied: $posApplied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiscountProgram &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.discountType, discountType) &&
            const DeepCollectionEquality()
                .equals(other.requireCustomer, requireCustomer) &&
            const DeepCollectionEquality()
                .equals(other.customerRestricted, customerRestricted) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.posCategoryIds, posCategoryIds) &&
            const DeepCollectionEquality()
                .equals(other.posApplied, posApplied));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(discountType),
      const DeepCollectionEquality().hash(requireCustomer),
      const DeepCollectionEquality().hash(customerRestricted),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(posCategoryIds),
      const DeepCollectionEquality().hash(posApplied));

  @JsonKey(ignore: true)
  @override
  _$DiscountProgramCopyWith<_DiscountProgram> get copyWith =>
      __$DiscountProgramCopyWithImpl<_DiscountProgram>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountProgramToJson(this);
  }
}

abstract class _DiscountProgram implements DiscountProgram {
  const factory _DiscountProgram(
          {required int id,
          required String name,
          @JsonKey(name: 'discount_type') String? discountType,
          @JsonKey(name: 'require_customer') bool? requireCustomer,
          @JsonKey(name: 'customer_restricted') bool? customerRestricted,
          int? amount,
          @JsonKey(name: 'pos_category_ids') List<int>? posCategoryIds,
          @JsonKey(name: 'pos_applied') List<int>? posApplied}) =
      _$_DiscountProgram;

  factory _DiscountProgram.fromJson(Map<String, dynamic> json) =
      _$_DiscountProgram.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'discount_type')
  String? get discountType;
  @override
  @JsonKey(name: 'require_customer')
  bool? get requireCustomer;
  @override
  @JsonKey(name: 'customer_restricted')
  bool? get customerRestricted;
  @override
  int? get amount;
  @override
  @JsonKey(name: 'pos_category_ids')
  List<int>? get posCategoryIds;
  @override
  @JsonKey(name: 'pos_applied')
  List<int>? get posApplied;
  @override
  @JsonKey(ignore: true)
  _$DiscountProgramCopyWith<_DiscountProgram> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscountProgramResults _$DiscountProgramResultsFromJson(
    Map<String, dynamic> json) {
  return _DiscountProgramResults.fromJson(json);
}

/// @nodoc
class _$DiscountProgramResultsTearOff {
  const _$DiscountProgramResultsTearOff();

  _DiscountProgramResults call(
      {@JsonKey(name: 'results')
          required List<DiscountProgram> discountPrograms}) {
    return _DiscountProgramResults(
      discountPrograms: discountPrograms,
    );
  }

  DiscountProgramResults fromJson(Map<String, Object?> json) {
    return DiscountProgramResults.fromJson(json);
  }
}

/// @nodoc
const $DiscountProgramResults = _$DiscountProgramResultsTearOff();

/// @nodoc
mixin _$DiscountProgramResults {
  @JsonKey(name: 'results')
  List<DiscountProgram> get discountPrograms =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountProgramResultsCopyWith<DiscountProgramResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountProgramResultsCopyWith<$Res> {
  factory $DiscountProgramResultsCopyWith(DiscountProgramResults value,
          $Res Function(DiscountProgramResults) then) =
      _$DiscountProgramResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<DiscountProgram> discountPrograms});
}

/// @nodoc
class _$DiscountProgramResultsCopyWithImpl<$Res>
    implements $DiscountProgramResultsCopyWith<$Res> {
  _$DiscountProgramResultsCopyWithImpl(this._value, this._then);

  final DiscountProgramResults _value;
  // ignore: unused_field
  final $Res Function(DiscountProgramResults) _then;

  @override
  $Res call({
    Object? discountPrograms = freezed,
  }) {
    return _then(_value.copyWith(
      discountPrograms: discountPrograms == freezed
          ? _value.discountPrograms
          : discountPrograms // ignore: cast_nullable_to_non_nullable
              as List<DiscountProgram>,
    ));
  }
}

/// @nodoc
abstract class _$DiscountProgramResultsCopyWith<$Res>
    implements $DiscountProgramResultsCopyWith<$Res> {
  factory _$DiscountProgramResultsCopyWith(_DiscountProgramResults value,
          $Res Function(_DiscountProgramResults) then) =
      __$DiscountProgramResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<DiscountProgram> discountPrograms});
}

/// @nodoc
class __$DiscountProgramResultsCopyWithImpl<$Res>
    extends _$DiscountProgramResultsCopyWithImpl<$Res>
    implements _$DiscountProgramResultsCopyWith<$Res> {
  __$DiscountProgramResultsCopyWithImpl(_DiscountProgramResults _value,
      $Res Function(_DiscountProgramResults) _then)
      : super(_value, (v) => _then(v as _DiscountProgramResults));

  @override
  _DiscountProgramResults get _value => super._value as _DiscountProgramResults;

  @override
  $Res call({
    Object? discountPrograms = freezed,
  }) {
    return _then(_DiscountProgramResults(
      discountPrograms: discountPrograms == freezed
          ? _value.discountPrograms
          : discountPrograms // ignore: cast_nullable_to_non_nullable
              as List<DiscountProgram>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountProgramResults implements _DiscountProgramResults {
  const _$_DiscountProgramResults(
      {@JsonKey(name: 'results') required this.discountPrograms});

  factory _$_DiscountProgramResults.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountProgramResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<DiscountProgram> discountPrograms;

  @override
  String toString() {
    return 'DiscountProgramResults(discountPrograms: $discountPrograms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiscountProgramResults &&
            const DeepCollectionEquality()
                .equals(other.discountPrograms, discountPrograms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(discountPrograms));

  @JsonKey(ignore: true)
  @override
  _$DiscountProgramResultsCopyWith<_DiscountProgramResults> get copyWith =>
      __$DiscountProgramResultsCopyWithImpl<_DiscountProgramResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountProgramResultsToJson(this);
  }
}

abstract class _DiscountProgramResults implements DiscountProgramResults {
  const factory _DiscountProgramResults(
          {@JsonKey(name: 'results')
              required List<DiscountProgram> discountPrograms}) =
      _$_DiscountProgramResults;

  factory _DiscountProgramResults.fromJson(Map<String, dynamic> json) =
      _$_DiscountProgramResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<DiscountProgram> get discountPrograms;
  @override
  @JsonKey(ignore: true)
  _$DiscountProgramResultsCopyWith<_DiscountProgramResults> get copyWith =>
      throw _privateConstructorUsedError;
}
