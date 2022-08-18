// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required int id,
      required String name,
      required String login,
      @JsonKey(name: 'security_pin', fromJson: pinCodeFromJson, toJson: pinCodeToJson)
          required String pinCode,
      @JsonKey(name: 'pos_user_type')
          required String posUserType}) {
    return _User(
      id: id,
      name: name,
      login: login,
      pinCode: pinCode,
      posUserType: posUserType,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'security_pin', fromJson: pinCodeFromJson, toJson: pinCodeToJson)
  String get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'pos_user_type')
  String get posUserType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String login,
      @JsonKey(name: 'security_pin', fromJson: pinCodeFromJson, toJson: pinCodeToJson)
          String pinCode,
      @JsonKey(name: 'pos_user_type')
          String posUserType});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? login = freezed,
    Object? pinCode = freezed,
    Object? posUserType = freezed,
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
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      posUserType: posUserType == freezed
          ? _value.posUserType
          : posUserType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String login,
      @JsonKey(name: 'security_pin', fromJson: pinCodeFromJson, toJson: pinCodeToJson)
          String pinCode,
      @JsonKey(name: 'pos_user_type')
          String posUserType});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? login = freezed,
    Object? pinCode = freezed,
    Object? posUserType = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      posUserType: posUserType == freezed
          ? _value.posUserType
          : posUserType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  _$_User(
      {required this.id,
      required this.name,
      required this.login,
      @JsonKey(name: 'security_pin', fromJson: pinCodeFromJson, toJson: pinCodeToJson)
          required this.pinCode,
      @JsonKey(name: 'pos_user_type')
          required this.posUserType});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String login;
  @override
  @JsonKey(
      name: 'security_pin', fromJson: pinCodeFromJson, toJson: pinCodeToJson)
  final String pinCode;
  @override
  @JsonKey(name: 'pos_user_type')
  final String posUserType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, login: $login, pinCode: $pinCode, posUserType: $posUserType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('pinCode', pinCode))
      ..add(DiagnosticsProperty('posUserType', posUserType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode) &&
            const DeepCollectionEquality()
                .equals(other.posUserType, posUserType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(pinCode),
      const DeepCollectionEquality().hash(posUserType));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {required int id,
      required String name,
      required String login,
      @JsonKey(name: 'security_pin', fromJson: pinCodeFromJson, toJson: pinCodeToJson)
          required String pinCode,
      @JsonKey(name: 'pos_user_type')
          required String posUserType}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get login;
  @override
  @JsonKey(
      name: 'security_pin', fromJson: pinCodeFromJson, toJson: pinCodeToJson)
  String get pinCode;
  @override
  @JsonKey(name: 'pos_user_type')
  String get posUserType;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

UserResults _$UserResultsFromJson(Map<String, dynamic> json) {
  return _UserResults.fromJson(json);
}

/// @nodoc
class _$UserResultsTearOff {
  const _$UserResultsTearOff();

  _UserResults call({@JsonKey(name: "result") required List<User> users}) {
    return _UserResults(
      users: users,
    );
  }

  UserResults fromJson(Map<String, Object?> json) {
    return UserResults.fromJson(json);
  }
}

/// @nodoc
const $UserResults = _$UserResultsTearOff();

/// @nodoc
mixin _$UserResults {
  @JsonKey(name: "result")
  List<User> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResultsCopyWith<UserResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResultsCopyWith<$Res> {
  factory $UserResultsCopyWith(
          UserResults value, $Res Function(UserResults) then) =
      _$UserResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "result") List<User> users});
}

/// @nodoc
class _$UserResultsCopyWithImpl<$Res> implements $UserResultsCopyWith<$Res> {
  _$UserResultsCopyWithImpl(this._value, this._then);

  final UserResults _value;
  // ignore: unused_field
  final $Res Function(UserResults) _then;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
abstract class _$UserResultsCopyWith<$Res>
    implements $UserResultsCopyWith<$Res> {
  factory _$UserResultsCopyWith(
          _UserResults value, $Res Function(_UserResults) then) =
      __$UserResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "result") List<User> users});
}

/// @nodoc
class __$UserResultsCopyWithImpl<$Res> extends _$UserResultsCopyWithImpl<$Res>
    implements _$UserResultsCopyWith<$Res> {
  __$UserResultsCopyWithImpl(
      _UserResults _value, $Res Function(_UserResults) _then)
      : super(_value, (v) => _then(v as _UserResults));

  @override
  _UserResults get _value => super._value as _UserResults;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_UserResults(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResults with DiagnosticableTreeMixin implements _UserResults {
  _$_UserResults({@JsonKey(name: "result") required this.users});

  factory _$_UserResults.fromJson(Map<String, dynamic> json) =>
      _$$_UserResultsFromJson(json);

  @override
  @JsonKey(name: "result")
  final List<User> users;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserResults(users: $users)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserResults'))
      ..add(DiagnosticsProperty('users', users));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserResults &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  _$UserResultsCopyWith<_UserResults> get copyWith =>
      __$UserResultsCopyWithImpl<_UserResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResultsToJson(this);
  }
}

abstract class _UserResults implements UserResults {
  factory _UserResults({@JsonKey(name: "result") required List<User> users}) =
      _$_UserResults;

  factory _UserResults.fromJson(Map<String, dynamic> json) =
      _$_UserResults.fromJson;

  @override
  @JsonKey(name: "result")
  List<User> get users;
  @override
  @JsonKey(ignore: true)
  _$UserResultsCopyWith<_UserResults> get copyWith =>
      throw _privateConstructorUsedError;
}
