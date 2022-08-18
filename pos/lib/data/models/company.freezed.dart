// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
class _$CompanyTearOff {
  const _$CompanyTearOff();

  _Company call(
      {required int id,
      required String name,
      String? image,
      String? phone,
      String? mobile,
      String? email,
      String? street,
      String? street2,
      String? city,
      @JsonKey(name: 'state_id') int? stateId,
      String? zip,
      @JsonKey(name: 'company_registry') dynamic companyRegistry,
      dynamic vat,
      @JsonKey(name: 'currency_id') dynamic currencyId}) {
    return _Company(
      id: id,
      name: name,
      image: image,
      phone: phone,
      mobile: mobile,
      email: email,
      street: street,
      street2: street2,
      city: city,
      stateId: stateId,
      zip: zip,
      companyRegistry: companyRegistry,
      vat: vat,
      currencyId: currencyId,
    );
  }

  Company fromJson(Map<String, Object?> json) {
    return Company.fromJson(json);
  }
}

/// @nodoc
const $Company = _$CompanyTearOff();

/// @nodoc
mixin _$Company {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get street2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_id')
  int? get stateId => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_registry')
  dynamic get companyRegistry => throw _privateConstructorUsedError;
  dynamic get vat => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_id')
  dynamic get currencyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String? image,
      String? phone,
      String? mobile,
      String? email,
      String? street,
      String? street2,
      String? city,
      @JsonKey(name: 'state_id') int? stateId,
      String? zip,
      @JsonKey(name: 'company_registry') dynamic companyRegistry,
      dynamic vat,
      @JsonKey(name: 'currency_id') dynamic currencyId});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  final Company _value;
  // ignore: unused_field
  final $Res Function(Company) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? email = freezed,
    Object? street = freezed,
    Object? street2 = freezed,
    Object? city = freezed,
    Object? stateId = freezed,
    Object? zip = freezed,
    Object? companyRegistry = freezed,
    Object? vat = freezed,
    Object? currencyId = freezed,
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
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      street2: street2 == freezed
          ? _value.street2
          : street2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      companyRegistry: companyRegistry == freezed
          ? _value.companyRegistry
          : companyRegistry // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currencyId: currencyId == freezed
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) then) =
      __$CompanyCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String? image,
      String? phone,
      String? mobile,
      String? email,
      String? street,
      String? street2,
      String? city,
      @JsonKey(name: 'state_id') int? stateId,
      String? zip,
      @JsonKey(name: 'company_registry') dynamic companyRegistry,
      dynamic vat,
      @JsonKey(name: 'currency_id') dynamic currencyId});
}

/// @nodoc
class __$CompanyCopyWithImpl<$Res> extends _$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(_Company _value, $Res Function(_Company) _then)
      : super(_value, (v) => _then(v as _Company));

  @override
  _Company get _value => super._value as _Company;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? email = freezed,
    Object? street = freezed,
    Object? street2 = freezed,
    Object? city = freezed,
    Object? stateId = freezed,
    Object? zip = freezed,
    Object? companyRegistry = freezed,
    Object? vat = freezed,
    Object? currencyId = freezed,
  }) {
    return _then(_Company(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      street2: street2 == freezed
          ? _value.street2
          : street2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      companyRegistry: companyRegistry == freezed
          ? _value.companyRegistry
          : companyRegistry // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currencyId: currencyId == freezed
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Company implements _Company {
  const _$_Company(
      {required this.id,
      required this.name,
      this.image,
      this.phone,
      this.mobile,
      this.email,
      this.street,
      this.street2,
      this.city,
      @JsonKey(name: 'state_id') this.stateId,
      this.zip,
      @JsonKey(name: 'company_registry') this.companyRegistry,
      this.vat,
      @JsonKey(name: 'currency_id') this.currencyId});

  factory _$_Company.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;
  @override
  final String? phone;
  @override
  final String? mobile;
  @override
  final String? email;
  @override
  final String? street;
  @override
  final String? street2;
  @override
  final String? city;
  @override
  @JsonKey(name: 'state_id')
  final int? stateId;
  @override
  final String? zip;
  @override
  @JsonKey(name: 'company_registry')
  final dynamic companyRegistry;
  @override
  final dynamic vat;
  @override
  @JsonKey(name: 'currency_id')
  final dynamic currencyId;

  @override
  String toString() {
    return 'Company(id: $id, name: $name, image: $image, phone: $phone, mobile: $mobile, email: $email, street: $street, street2: $street2, city: $city, stateId: $stateId, zip: $zip, companyRegistry: $companyRegistry, vat: $vat, currencyId: $currencyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Company &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.mobile, mobile) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.street2, street2) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality().equals(other.zip, zip) &&
            const DeepCollectionEquality()
                .equals(other.companyRegistry, companyRegistry) &&
            const DeepCollectionEquality().equals(other.vat, vat) &&
            const DeepCollectionEquality()
                .equals(other.currencyId, currencyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(mobile),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(street2),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(stateId),
      const DeepCollectionEquality().hash(zip),
      const DeepCollectionEquality().hash(companyRegistry),
      const DeepCollectionEquality().hash(vat),
      const DeepCollectionEquality().hash(currencyId));

  @JsonKey(ignore: true)
  @override
  _$CompanyCopyWith<_Company> get copyWith =>
      __$CompanyCopyWithImpl<_Company>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyToJson(this);
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {required int id,
      required String name,
      String? image,
      String? phone,
      String? mobile,
      String? email,
      String? street,
      String? street2,
      String? city,
      @JsonKey(name: 'state_id') int? stateId,
      String? zip,
      @JsonKey(name: 'company_registry') dynamic companyRegistry,
      dynamic vat,
      @JsonKey(name: 'currency_id') dynamic currencyId}) = _$_Company;

  factory _Company.fromJson(Map<String, dynamic> json) = _$_Company.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;
  @override
  String? get phone;
  @override
  String? get mobile;
  @override
  String? get email;
  @override
  String? get street;
  @override
  String? get street2;
  @override
  String? get city;
  @override
  @JsonKey(name: 'state_id')
  int? get stateId;
  @override
  String? get zip;
  @override
  @JsonKey(name: 'company_registry')
  dynamic get companyRegistry;
  @override
  dynamic get vat;
  @override
  @JsonKey(name: 'currency_id')
  dynamic get currencyId;
  @override
  @JsonKey(ignore: true)
  _$CompanyCopyWith<_Company> get copyWith =>
      throw _privateConstructorUsedError;
}
