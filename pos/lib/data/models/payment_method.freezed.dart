// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return _PaymentMethod.fromJson(json);
}

/// @nodoc
class _$PaymentMethodTearOff {
  const _$PaymentMethodTearOff();

  _PaymentMethod call(
      {required int id,
      required String name,
      @JsonKey(name: 'journal_id') Map<String, dynamic>? journalId,
      @JsonKey(name: 'identify_customer') bool? identifyCustomer}) {
    return _PaymentMethod(
      id: id,
      name: name,
      journalId: journalId,
      identifyCustomer: identifyCustomer,
    );
  }

  PaymentMethod fromJson(Map<String, Object?> json) {
    return PaymentMethod.fromJson(json);
  }
}

/// @nodoc
const $PaymentMethod = _$PaymentMethodTearOff();

/// @nodoc
mixin _$PaymentMethod {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'journal_id')
  Map<String, dynamic>? get journalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'identify_customer')
  bool? get identifyCustomer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'journal_id') Map<String, dynamic>? journalId,
      @JsonKey(name: 'identify_customer') bool? identifyCustomer});
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  final PaymentMethod _value;
  // ignore: unused_field
  final $Res Function(PaymentMethod) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? journalId = freezed,
    Object? identifyCustomer = freezed,
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
      journalId: journalId == freezed
          ? _value.journalId
          : journalId // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      identifyCustomer: identifyCustomer == freezed
          ? _value.identifyCustomer
          : identifyCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentMethodCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$PaymentMethodCopyWith(
          _PaymentMethod value, $Res Function(_PaymentMethod) then) =
      __$PaymentMethodCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'journal_id') Map<String, dynamic>? journalId,
      @JsonKey(name: 'identify_customer') bool? identifyCustomer});
}

/// @nodoc
class __$PaymentMethodCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res>
    implements _$PaymentMethodCopyWith<$Res> {
  __$PaymentMethodCopyWithImpl(
      _PaymentMethod _value, $Res Function(_PaymentMethod) _then)
      : super(_value, (v) => _then(v as _PaymentMethod));

  @override
  _PaymentMethod get _value => super._value as _PaymentMethod;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? journalId = freezed,
    Object? identifyCustomer = freezed,
  }) {
    return _then(_PaymentMethod(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      journalId: journalId == freezed
          ? _value.journalId
          : journalId // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      identifyCustomer: identifyCustomer == freezed
          ? _value.identifyCustomer
          : identifyCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethod implements _PaymentMethod {
  const _$_PaymentMethod(
      {required this.id,
      required this.name,
      @JsonKey(name: 'journal_id') this.journalId,
      @JsonKey(name: 'identify_customer') this.identifyCustomer});

  factory _$_PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'journal_id')
  final Map<String, dynamic>? journalId;
  @override
  @JsonKey(name: 'identify_customer')
  final bool? identifyCustomer;

  @override
  String toString() {
    return 'PaymentMethod(id: $id, name: $name, journalId: $journalId, identifyCustomer: $identifyCustomer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentMethod &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.journalId, journalId) &&
            const DeepCollectionEquality()
                .equals(other.identifyCustomer, identifyCustomer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(journalId),
      const DeepCollectionEquality().hash(identifyCustomer));

  @JsonKey(ignore: true)
  @override
  _$PaymentMethodCopyWith<_PaymentMethod> get copyWith =>
      __$PaymentMethodCopyWithImpl<_PaymentMethod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodToJson(this);
  }
}

abstract class _PaymentMethod implements PaymentMethod {
  const factory _PaymentMethod(
          {required int id,
          required String name,
          @JsonKey(name: 'journal_id') Map<String, dynamic>? journalId,
          @JsonKey(name: 'identify_customer') bool? identifyCustomer}) =
      _$_PaymentMethod;

  factory _PaymentMethod.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethod.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'journal_id')
  Map<String, dynamic>? get journalId;
  @override
  @JsonKey(name: 'identify_customer')
  bool? get identifyCustomer;
  @override
  @JsonKey(ignore: true)
  _$PaymentMethodCopyWith<_PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentMethodResults _$PaymentMethodResultsFromJson(Map<String, dynamic> json) {
  return _PaymentMethodResults.fromJson(json);
}

/// @nodoc
class _$PaymentMethodResultsTearOff {
  const _$PaymentMethodResultsTearOff();

  _PaymentMethodResults call(
      {@JsonKey(name: 'results') List<PaymentMethod>? paymentMethods}) {
    return _PaymentMethodResults(
      paymentMethods: paymentMethods,
    );
  }

  PaymentMethodResults fromJson(Map<String, Object?> json) {
    return PaymentMethodResults.fromJson(json);
  }
}

/// @nodoc
const $PaymentMethodResults = _$PaymentMethodResultsTearOff();

/// @nodoc
mixin _$PaymentMethodResults {
  @JsonKey(name: 'results')
  List<PaymentMethod>? get paymentMethods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodResultsCopyWith<PaymentMethodResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodResultsCopyWith<$Res> {
  factory $PaymentMethodResultsCopyWith(PaymentMethodResults value,
          $Res Function(PaymentMethodResults) then) =
      _$PaymentMethodResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<PaymentMethod>? paymentMethods});
}

/// @nodoc
class _$PaymentMethodResultsCopyWithImpl<$Res>
    implements $PaymentMethodResultsCopyWith<$Res> {
  _$PaymentMethodResultsCopyWithImpl(this._value, this._then);

  final PaymentMethodResults _value;
  // ignore: unused_field
  final $Res Function(PaymentMethodResults) _then;

  @override
  $Res call({
    Object? paymentMethods = freezed,
  }) {
    return _then(_value.copyWith(
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentMethodResultsCopyWith<$Res>
    implements $PaymentMethodResultsCopyWith<$Res> {
  factory _$PaymentMethodResultsCopyWith(_PaymentMethodResults value,
          $Res Function(_PaymentMethodResults) then) =
      __$PaymentMethodResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<PaymentMethod>? paymentMethods});
}

/// @nodoc
class __$PaymentMethodResultsCopyWithImpl<$Res>
    extends _$PaymentMethodResultsCopyWithImpl<$Res>
    implements _$PaymentMethodResultsCopyWith<$Res> {
  __$PaymentMethodResultsCopyWithImpl(
      _PaymentMethodResults _value, $Res Function(_PaymentMethodResults) _then)
      : super(_value, (v) => _then(v as _PaymentMethodResults));

  @override
  _PaymentMethodResults get _value => super._value as _PaymentMethodResults;

  @override
  $Res call({
    Object? paymentMethods = freezed,
  }) {
    return _then(_PaymentMethodResults(
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethodResults implements _PaymentMethodResults {
  const _$_PaymentMethodResults(
      {@JsonKey(name: 'results') this.paymentMethods});

  factory _$_PaymentMethodResults.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<PaymentMethod>? paymentMethods;

  @override
  String toString() {
    return 'PaymentMethodResults(paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentMethodResults &&
            const DeepCollectionEquality()
                .equals(other.paymentMethods, paymentMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(paymentMethods));

  @JsonKey(ignore: true)
  @override
  _$PaymentMethodResultsCopyWith<_PaymentMethodResults> get copyWith =>
      __$PaymentMethodResultsCopyWithImpl<_PaymentMethodResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodResultsToJson(this);
  }
}

abstract class _PaymentMethodResults implements PaymentMethodResults {
  const factory _PaymentMethodResults(
          {@JsonKey(name: 'results') List<PaymentMethod>? paymentMethods}) =
      _$_PaymentMethodResults;

  factory _PaymentMethodResults.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<PaymentMethod>? get paymentMethods;
  @override
  @JsonKey(ignore: true)
  _$PaymentMethodResultsCopyWith<_PaymentMethodResults> get copyWith =>
      throw _privateConstructorUsedError;
}
