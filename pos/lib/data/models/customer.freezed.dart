// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
class _$CustomerTearOff {
  const _$CustomerTearOff();

  _Customer call(
      {required String id,
      required String name,
      @JsonKey(name: 'image_1920') String? image1920,
      String? street,
      bool? street2,
      String? city,
      @JsonKey(name: 'state_id') String? stateId,
      String? zip,
      @JsonKey(name: 'country_id') int? countryId,
      bool? vat,
      @JsonKey(name: 'branch_id') bool? branchId,
      String? phone,
      bool? mobile,
      String? email,
      String? website,
      @JsonKey(name: 'category_id') List<int>? categoryId,
      @JsonKey(name: 'company_id') bool? companyId}) {
    return _Customer(
      id: id,
      name: name,
      image1920: image1920,
      street: street,
      street2: street2,
      city: city,
      stateId: stateId,
      zip: zip,
      countryId: countryId,
      vat: vat,
      branchId: branchId,
      phone: phone,
      mobile: mobile,
      email: email,
      website: website,
      categoryId: categoryId,
      companyId: companyId,
    );
  }

  Customer fromJson(Map<String, Object?> json) {
    return Customer.fromJson(json);
  }
}

/// @nodoc
const $Customer = _$CustomerTearOff();

/// @nodoc
mixin _$Customer {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_1920')
  String? get image1920 => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  bool? get street2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_id')
  String? get stateId => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  int? get countryId => throw _privateConstructorUsedError;
  bool? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch_id')
  bool? get branchId => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  bool? get mobile => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  List<int>? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  bool? get companyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'image_1920') String? image1920,
      String? street,
      bool? street2,
      String? city,
      @JsonKey(name: 'state_id') String? stateId,
      String? zip,
      @JsonKey(name: 'country_id') int? countryId,
      bool? vat,
      @JsonKey(name: 'branch_id') bool? branchId,
      String? phone,
      bool? mobile,
      String? email,
      String? website,
      @JsonKey(name: 'category_id') List<int>? categoryId,
      @JsonKey(name: 'company_id') bool? companyId});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image1920 = freezed,
    Object? street = freezed,
    Object? street2 = freezed,
    Object? city = freezed,
    Object? stateId = freezed,
    Object? zip = freezed,
    Object? countryId = freezed,
    Object? vat = freezed,
    Object? branchId = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? categoryId = freezed,
    Object? companyId = freezed,
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
      image1920: image1920 == freezed
          ? _value.image1920
          : image1920 // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      street2: street2 == freezed
          ? _value.street2
          : street2 // ignore: cast_nullable_to_non_nullable
              as bool?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as bool?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as bool?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) then) =
      __$CustomerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'image_1920') String? image1920,
      String? street,
      bool? street2,
      String? city,
      @JsonKey(name: 'state_id') String? stateId,
      String? zip,
      @JsonKey(name: 'country_id') int? countryId,
      bool? vat,
      @JsonKey(name: 'branch_id') bool? branchId,
      String? phone,
      bool? mobile,
      String? email,
      String? website,
      @JsonKey(name: 'category_id') List<int>? categoryId,
      @JsonKey(name: 'company_id') bool? companyId});
}

/// @nodoc
class __$CustomerCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(_Customer _value, $Res Function(_Customer) _then)
      : super(_value, (v) => _then(v as _Customer));

  @override
  _Customer get _value => super._value as _Customer;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image1920 = freezed,
    Object? street = freezed,
    Object? street2 = freezed,
    Object? city = freezed,
    Object? stateId = freezed,
    Object? zip = freezed,
    Object? countryId = freezed,
    Object? vat = freezed,
    Object? branchId = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? categoryId = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_Customer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image1920: image1920 == freezed
          ? _value.image1920
          : image1920 // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      street2: street2 == freezed
          ? _value.street2
          : street2 // ignore: cast_nullable_to_non_nullable
              as bool?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as bool?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as bool?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Customer implements _Customer {
  const _$_Customer(
      {required this.id,
      required this.name,
      @JsonKey(name: 'image_1920') this.image1920,
      this.street,
      this.street2,
      this.city,
      @JsonKey(name: 'state_id') this.stateId,
      this.zip,
      @JsonKey(name: 'country_id') this.countryId,
      this.vat,
      @JsonKey(name: 'branch_id') this.branchId,
      this.phone,
      this.mobile,
      this.email,
      this.website,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'company_id') this.companyId});

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'image_1920')
  final String? image1920;
  @override
  final String? street;
  @override
  final bool? street2;
  @override
  final String? city;
  @override
  @JsonKey(name: 'state_id')
  final String? stateId;
  @override
  final String? zip;
  @override
  @JsonKey(name: 'country_id')
  final int? countryId;
  @override
  final bool? vat;
  @override
  @JsonKey(name: 'branch_id')
  final bool? branchId;
  @override
  final String? phone;
  @override
  final bool? mobile;
  @override
  final String? email;
  @override
  final String? website;
  @override
  @JsonKey(name: 'category_id')
  final List<int>? categoryId;
  @override
  @JsonKey(name: 'company_id')
  final bool? companyId;

  @override
  String toString() {
    return 'Customer(id: $id, name: $name, image1920: $image1920, street: $street, street2: $street2, city: $city, stateId: $stateId, zip: $zip, countryId: $countryId, vat: $vat, branchId: $branchId, phone: $phone, mobile: $mobile, email: $email, website: $website, categoryId: $categoryId, companyId: $companyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Customer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image1920, image1920) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.street2, street2) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality().equals(other.zip, zip) &&
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            const DeepCollectionEquality().equals(other.vat, vat) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.mobile, mobile) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality().equals(other.companyId, companyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image1920),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(street2),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(stateId),
      const DeepCollectionEquality().hash(zip),
      const DeepCollectionEquality().hash(countryId),
      const DeepCollectionEquality().hash(vat),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(mobile),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(companyId));

  @JsonKey(ignore: true)
  @override
  _$CustomerCopyWith<_Customer> get copyWith =>
      __$CustomerCopyWithImpl<_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(this);
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {required String id,
      required String name,
      @JsonKey(name: 'image_1920') String? image1920,
      String? street,
      bool? street2,
      String? city,
      @JsonKey(name: 'state_id') String? stateId,
      String? zip,
      @JsonKey(name: 'country_id') int? countryId,
      bool? vat,
      @JsonKey(name: 'branch_id') bool? branchId,
      String? phone,
      bool? mobile,
      String? email,
      String? website,
      @JsonKey(name: 'category_id') List<int>? categoryId,
      @JsonKey(name: 'company_id') bool? companyId}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image_1920')
  String? get image1920;
  @override
  String? get street;
  @override
  bool? get street2;
  @override
  String? get city;
  @override
  @JsonKey(name: 'state_id')
  String? get stateId;
  @override
  String? get zip;
  @override
  @JsonKey(name: 'country_id')
  int? get countryId;
  @override
  bool? get vat;
  @override
  @JsonKey(name: 'branch_id')
  bool? get branchId;
  @override
  String? get phone;
  @override
  bool? get mobile;
  @override
  String? get email;
  @override
  String? get website;
  @override
  @JsonKey(name: 'category_id')
  List<int>? get categoryId;
  @override
  @JsonKey(name: 'company_id')
  bool? get companyId;
  @override
  @JsonKey(ignore: true)
  _$CustomerCopyWith<_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerResults _$CustomerResultsFromJson(Map<String, dynamic> json) {
  return _CustomerResults.fromJson(json);
}

/// @nodoc
class _$CustomerResultsTearOff {
  const _$CustomerResultsTearOff();

  _CustomerResults call(
      {@JsonKey(name: 'results') required List<Customer> Customers}) {
    return _CustomerResults(
      Customers: Customers,
    );
  }

  CustomerResults fromJson(Map<String, Object?> json) {
    return CustomerResults.fromJson(json);
  }
}

/// @nodoc
const $CustomerResults = _$CustomerResultsTearOff();

/// @nodoc
mixin _$CustomerResults {
  @JsonKey(name: 'results')
  List<Customer> get Customers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerResultsCopyWith<CustomerResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerResultsCopyWith<$Res> {
  factory $CustomerResultsCopyWith(
          CustomerResults value, $Res Function(CustomerResults) then) =
      _$CustomerResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<Customer> Customers});
}

/// @nodoc
class _$CustomerResultsCopyWithImpl<$Res>
    implements $CustomerResultsCopyWith<$Res> {
  _$CustomerResultsCopyWithImpl(this._value, this._then);

  final CustomerResults _value;
  // ignore: unused_field
  final $Res Function(CustomerResults) _then;

  @override
  $Res call({
    Object? Customers = freezed,
  }) {
    return _then(_value.copyWith(
      Customers: Customers == freezed
          ? _value.Customers
          : Customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
    ));
  }
}

/// @nodoc
abstract class _$CustomerResultsCopyWith<$Res>
    implements $CustomerResultsCopyWith<$Res> {
  factory _$CustomerResultsCopyWith(
          _CustomerResults value, $Res Function(_CustomerResults) then) =
      __$CustomerResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<Customer> Customers});
}

/// @nodoc
class __$CustomerResultsCopyWithImpl<$Res>
    extends _$CustomerResultsCopyWithImpl<$Res>
    implements _$CustomerResultsCopyWith<$Res> {
  __$CustomerResultsCopyWithImpl(
      _CustomerResults _value, $Res Function(_CustomerResults) _then)
      : super(_value, (v) => _then(v as _CustomerResults));

  @override
  _CustomerResults get _value => super._value as _CustomerResults;

  @override
  $Res call({
    Object? Customers = freezed,
  }) {
    return _then(_CustomerResults(
      Customers: Customers == freezed
          ? _value.Customers
          : Customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerResults implements _CustomerResults {
  const _$_CustomerResults({@JsonKey(name: 'results') required this.Customers});

  factory _$_CustomerResults.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<Customer> Customers;

  @override
  String toString() {
    return 'CustomerResults(Customers: $Customers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerResults &&
            const DeepCollectionEquality().equals(other.Customers, Customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(Customers));

  @JsonKey(ignore: true)
  @override
  _$CustomerResultsCopyWith<_CustomerResults> get copyWith =>
      __$CustomerResultsCopyWithImpl<_CustomerResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerResultsToJson(this);
  }
}

abstract class _CustomerResults implements CustomerResults {
  const factory _CustomerResults(
          {@JsonKey(name: 'results') required List<Customer> Customers}) =
      _$_CustomerResults;

  factory _CustomerResults.fromJson(Map<String, dynamic> json) =
      _$_CustomerResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<Customer> get Customers;
  @override
  @JsonKey(ignore: true)
  _$CustomerResultsCopyWith<_CustomerResults> get copyWith =>
      throw _privateConstructorUsedError;
}
