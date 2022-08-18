// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Auth _$AuthFromJson(Map<String, dynamic> json) {
  return _Auth.fromJson(json);
}

/// @nodoc
class _$AuthTearOff {
  const _$AuthTearOff();

  _Auth call(
      {required int uid,
      @JsonKey(name: "access_token", fromJson: customFromJson)
          required String accessToken,
      @JsonKey(name: "company_name", fromJson: customFromJson)
          String? companyName = '',
      @JsonKey(name: "company_id", fromJson: customFromJson)
          required int? companyId,
      @JsonKey(name: "company_ids", fromJson: customFromJson)
          required List<int>? companyIds,
      @JsonKey(name: "partner_id", fromJson: customFromJson)
          required int? partnerId,
      @JsonKey(name: "country", fromJson: customFromJson)
          String? country = '',
      @JsonKey(name: "contact_address", fromJson: customFromJson)
          String? contactAddress = ''}) {
    return _Auth(
      uid: uid,
      accessToken: accessToken,
      companyName: companyName,
      companyId: companyId,
      companyIds: companyIds,
      partnerId: partnerId,
      country: country,
      contactAddress: contactAddress,
    );
  }

  Auth fromJson(Map<String, Object?> json) {
    return Auth.fromJson(json);
  }
}

/// @nodoc
const $Auth = _$AuthTearOff();

/// @nodoc
mixin _$Auth {
  int get uid => throw _privateConstructorUsedError;
  @JsonKey(name: "access_token", fromJson: customFromJson)
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name", fromJson: customFromJson)
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "company_id", fromJson: customFromJson)
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "company_ids", fromJson: customFromJson)
  List<int>? get companyIds => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_id", fromJson: customFromJson)
  int? get partnerId => throw _privateConstructorUsedError;
  @JsonKey(name: "country", fromJson: customFromJson)
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_address", fromJson: customFromJson)
  String? get contactAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCopyWith<Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res>;
  $Res call(
      {int uid,
      @JsonKey(name: "access_token", fromJson: customFromJson)
          String accessToken,
      @JsonKey(name: "company_name", fromJson: customFromJson)
          String? companyName,
      @JsonKey(name: "company_id", fromJson: customFromJson)
          int? companyId,
      @JsonKey(name: "company_ids", fromJson: customFromJson)
          List<int>? companyIds,
      @JsonKey(name: "partner_id", fromJson: customFromJson)
          int? partnerId,
      @JsonKey(name: "country", fromJson: customFromJson)
          String? country,
      @JsonKey(name: "contact_address", fromJson: customFromJson)
          String? contactAddress});
}

/// @nodoc
class _$AuthCopyWithImpl<$Res> implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  final Auth _value;
  // ignore: unused_field
  final $Res Function(Auth) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? accessToken = freezed,
    Object? companyName = freezed,
    Object? companyId = freezed,
    Object? companyIds = freezed,
    Object? partnerId = freezed,
    Object? country = freezed,
    Object? contactAddress = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyIds: companyIds == freezed
          ? _value.companyIds
          : companyIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      partnerId: partnerId == freezed
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      contactAddress: contactAddress == freezed
          ? _value.contactAddress
          : contactAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AuthCopyWith<$Res> implements $AuthCopyWith<$Res> {
  factory _$AuthCopyWith(_Auth value, $Res Function(_Auth) then) =
      __$AuthCopyWithImpl<$Res>;
  @override
  $Res call(
      {int uid,
      @JsonKey(name: "access_token", fromJson: customFromJson)
          String accessToken,
      @JsonKey(name: "company_name", fromJson: customFromJson)
          String? companyName,
      @JsonKey(name: "company_id", fromJson: customFromJson)
          int? companyId,
      @JsonKey(name: "company_ids", fromJson: customFromJson)
          List<int>? companyIds,
      @JsonKey(name: "partner_id", fromJson: customFromJson)
          int? partnerId,
      @JsonKey(name: "country", fromJson: customFromJson)
          String? country,
      @JsonKey(name: "contact_address", fromJson: customFromJson)
          String? contactAddress});
}

/// @nodoc
class __$AuthCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements _$AuthCopyWith<$Res> {
  __$AuthCopyWithImpl(_Auth _value, $Res Function(_Auth) _then)
      : super(_value, (v) => _then(v as _Auth));

  @override
  _Auth get _value => super._value as _Auth;

  @override
  $Res call({
    Object? uid = freezed,
    Object? accessToken = freezed,
    Object? companyName = freezed,
    Object? companyId = freezed,
    Object? companyIds = freezed,
    Object? partnerId = freezed,
    Object? country = freezed,
    Object? contactAddress = freezed,
  }) {
    return _then(_Auth(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      companyIds: companyIds == freezed
          ? _value.companyIds
          : companyIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      partnerId: partnerId == freezed
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      contactAddress: contactAddress == freezed
          ? _value.contactAddress
          : contactAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Auth implements _Auth {
  const _$_Auth(
      {required this.uid,
      @JsonKey(name: "access_token", fromJson: customFromJson)
          required this.accessToken,
      @JsonKey(name: "company_name", fromJson: customFromJson)
          this.companyName = '',
      @JsonKey(name: "company_id", fromJson: customFromJson)
          required this.companyId,
      @JsonKey(name: "company_ids", fromJson: customFromJson)
          required this.companyIds,
      @JsonKey(name: "partner_id", fromJson: customFromJson)
          required this.partnerId,
      @JsonKey(name: "country", fromJson: customFromJson)
          this.country = '',
      @JsonKey(name: "contact_address", fromJson: customFromJson)
          this.contactAddress = ''});

  factory _$_Auth.fromJson(Map<String, dynamic> json) => _$$_AuthFromJson(json);

  @override
  final int uid;
  @override
  @JsonKey(name: "access_token", fromJson: customFromJson)
  final String accessToken;
  @override
  @JsonKey(name: "company_name", fromJson: customFromJson)
  final String? companyName;
  @override
  @JsonKey(name: "company_id", fromJson: customFromJson)
  final int? companyId;
  @override
  @JsonKey(name: "company_ids", fromJson: customFromJson)
  final List<int>? companyIds;
  @override
  @JsonKey(name: "partner_id", fromJson: customFromJson)
  final int? partnerId;
  @override
  @JsonKey(name: "country", fromJson: customFromJson)
  final String? country;
  @override
  @JsonKey(name: "contact_address", fromJson: customFromJson)
  final String? contactAddress;

  @override
  String toString() {
    return 'Auth(uid: $uid, accessToken: $accessToken, companyName: $companyName, companyId: $companyId, companyIds: $companyIds, partnerId: $partnerId, country: $country, contactAddress: $contactAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Auth &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            const DeepCollectionEquality().equals(other.companyId, companyId) &&
            const DeepCollectionEquality()
                .equals(other.companyIds, companyIds) &&
            const DeepCollectionEquality().equals(other.partnerId, partnerId) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.contactAddress, contactAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(companyName),
      const DeepCollectionEquality().hash(companyId),
      const DeepCollectionEquality().hash(companyIds),
      const DeepCollectionEquality().hash(partnerId),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(contactAddress));

  @JsonKey(ignore: true)
  @override
  _$AuthCopyWith<_Auth> get copyWith =>
      __$AuthCopyWithImpl<_Auth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthToJson(this);
  }
}

abstract class _Auth implements Auth {
  const factory _Auth(
      {required int uid,
      @JsonKey(name: "access_token", fromJson: customFromJson)
          required String accessToken,
      @JsonKey(name: "company_name", fromJson: customFromJson)
          String? companyName,
      @JsonKey(name: "company_id", fromJson: customFromJson)
          required int? companyId,
      @JsonKey(name: "company_ids", fromJson: customFromJson)
          required List<int>? companyIds,
      @JsonKey(name: "partner_id", fromJson: customFromJson)
          required int? partnerId,
      @JsonKey(name: "country", fromJson: customFromJson)
          String? country,
      @JsonKey(name: "contact_address", fromJson: customFromJson)
          String? contactAddress}) = _$_Auth;

  factory _Auth.fromJson(Map<String, dynamic> json) = _$_Auth.fromJson;

  @override
  int get uid;
  @override
  @JsonKey(name: "access_token", fromJson: customFromJson)
  String get accessToken;
  @override
  @JsonKey(name: "company_name", fromJson: customFromJson)
  String? get companyName;
  @override
  @JsonKey(name: "company_id", fromJson: customFromJson)
  int? get companyId;
  @override
  @JsonKey(name: "company_ids", fromJson: customFromJson)
  List<int>? get companyIds;
  @override
  @JsonKey(name: "partner_id", fromJson: customFromJson)
  int? get partnerId;
  @override
  @JsonKey(name: "country", fromJson: customFromJson)
  String? get country;
  @override
  @JsonKey(name: "contact_address", fromJson: customFromJson)
  String? get contactAddress;
  @override
  @JsonKey(ignore: true)
  _$AuthCopyWith<_Auth> get copyWith => throw _privateConstructorUsedError;
}
