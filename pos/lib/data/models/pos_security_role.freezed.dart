// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_security_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

POSSecurityRole _$POSSecurityRoleFromJson(Map<String, dynamic> json) {
  return _POSSecurityRole.fromJson(json);
}

/// @nodoc
class _$POSSecurityRoleTearOff {
  const _$POSSecurityRoleTearOff();

  _POSSecurityRole call(
      {required int id,
      required String name,
      bool? desc,
      String? key,
      @JsonKey(name: 'is_default_value') bool? isDefaultValue,
      @JsonKey(name: 'company_id') int? companyId}) {
    return _POSSecurityRole(
      id: id,
      name: name,
      desc: desc,
      key: key,
      isDefaultValue: isDefaultValue,
      companyId: companyId,
    );
  }

  POSSecurityRole fromJson(Map<String, Object?> json) {
    return POSSecurityRole.fromJson(json);
  }
}

/// @nodoc
const $POSSecurityRole = _$POSSecurityRoleTearOff();

/// @nodoc
mixin _$POSSecurityRole {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool? get desc => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default_value')
  bool? get isDefaultValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSSecurityRoleCopyWith<POSSecurityRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSSecurityRoleCopyWith<$Res> {
  factory $POSSecurityRoleCopyWith(
          POSSecurityRole value, $Res Function(POSSecurityRole) then) =
      _$POSSecurityRoleCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      bool? desc,
      String? key,
      @JsonKey(name: 'is_default_value') bool? isDefaultValue,
      @JsonKey(name: 'company_id') int? companyId});
}

/// @nodoc
class _$POSSecurityRoleCopyWithImpl<$Res>
    implements $POSSecurityRoleCopyWith<$Res> {
  _$POSSecurityRoleCopyWithImpl(this._value, this._then);

  final POSSecurityRole _value;
  // ignore: unused_field
  final $Res Function(POSSecurityRole) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? key = freezed,
    Object? isDefaultValue = freezed,
    Object? companyId = freezed,
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
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as bool?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefaultValue: isDefaultValue == freezed
          ? _value.isDefaultValue
          : isDefaultValue // ignore: cast_nullable_to_non_nullable
              as bool?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$POSSecurityRoleCopyWith<$Res>
    implements $POSSecurityRoleCopyWith<$Res> {
  factory _$POSSecurityRoleCopyWith(
          _POSSecurityRole value, $Res Function(_POSSecurityRole) then) =
      __$POSSecurityRoleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      bool? desc,
      String? key,
      @JsonKey(name: 'is_default_value') bool? isDefaultValue,
      @JsonKey(name: 'company_id') int? companyId});
}

/// @nodoc
class __$POSSecurityRoleCopyWithImpl<$Res>
    extends _$POSSecurityRoleCopyWithImpl<$Res>
    implements _$POSSecurityRoleCopyWith<$Res> {
  __$POSSecurityRoleCopyWithImpl(
      _POSSecurityRole _value, $Res Function(_POSSecurityRole) _then)
      : super(_value, (v) => _then(v as _POSSecurityRole));

  @override
  _POSSecurityRole get _value => super._value as _POSSecurityRole;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? key = freezed,
    Object? isDefaultValue = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_POSSecurityRole(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as bool?,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefaultValue: isDefaultValue == freezed
          ? _value.isDefaultValue
          : isDefaultValue // ignore: cast_nullable_to_non_nullable
              as bool?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSSecurityRole implements _POSSecurityRole {
  const _$_POSSecurityRole(
      {required this.id,
      required this.name,
      this.desc,
      this.key,
      @JsonKey(name: 'is_default_value') this.isDefaultValue,
      @JsonKey(name: 'company_id') this.companyId});

  factory _$_POSSecurityRole.fromJson(Map<String, dynamic> json) =>
      _$$_POSSecurityRoleFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final bool? desc;
  @override
  final String? key;
  @override
  @JsonKey(name: 'is_default_value')
  final bool? isDefaultValue;
  @override
  @JsonKey(name: 'company_id')
  final int? companyId;

  @override
  String toString() {
    return 'POSSecurityRole(id: $id, name: $name, desc: $desc, key: $key, isDefaultValue: $isDefaultValue, companyId: $companyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSSecurityRole &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.isDefaultValue, isDefaultValue) &&
            const DeepCollectionEquality().equals(other.companyId, companyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(isDefaultValue),
      const DeepCollectionEquality().hash(companyId));

  @JsonKey(ignore: true)
  @override
  _$POSSecurityRoleCopyWith<_POSSecurityRole> get copyWith =>
      __$POSSecurityRoleCopyWithImpl<_POSSecurityRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSSecurityRoleToJson(this);
  }
}

abstract class _POSSecurityRole implements POSSecurityRole {
  const factory _POSSecurityRole(
      {required int id,
      required String name,
      bool? desc,
      String? key,
      @JsonKey(name: 'is_default_value') bool? isDefaultValue,
      @JsonKey(name: 'company_id') int? companyId}) = _$_POSSecurityRole;

  factory _POSSecurityRole.fromJson(Map<String, dynamic> json) =
      _$_POSSecurityRole.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool? get desc;
  @override
  String? get key;
  @override
  @JsonKey(name: 'is_default_value')
  bool? get isDefaultValue;
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @override
  @JsonKey(ignore: true)
  _$POSSecurityRoleCopyWith<_POSSecurityRole> get copyWith =>
      throw _privateConstructorUsedError;
}

POSSecurityRoleResults _$POSSecurityRoleResultsFromJson(
    Map<String, dynamic> json) {
  return _POSSecurityRoleResults.fromJson(json);
}

/// @nodoc
class _$POSSecurityRoleResultsTearOff {
  const _$POSSecurityRoleResultsTearOff();

  _POSSecurityRoleResults call(
      {@JsonKey(name: 'results')
          required List<POSSecurityRole> POSSecurityRoles}) {
    return _POSSecurityRoleResults(
      POSSecurityRoles: POSSecurityRoles,
    );
  }

  POSSecurityRoleResults fromJson(Map<String, Object?> json) {
    return POSSecurityRoleResults.fromJson(json);
  }
}

/// @nodoc
const $POSSecurityRoleResults = _$POSSecurityRoleResultsTearOff();

/// @nodoc
mixin _$POSSecurityRoleResults {
  @JsonKey(name: 'results')
  List<POSSecurityRole> get POSSecurityRoles =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSSecurityRoleResultsCopyWith<POSSecurityRoleResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSSecurityRoleResultsCopyWith<$Res> {
  factory $POSSecurityRoleResultsCopyWith(POSSecurityRoleResults value,
          $Res Function(POSSecurityRoleResults) then) =
      _$POSSecurityRoleResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<POSSecurityRole> POSSecurityRoles});
}

/// @nodoc
class _$POSSecurityRoleResultsCopyWithImpl<$Res>
    implements $POSSecurityRoleResultsCopyWith<$Res> {
  _$POSSecurityRoleResultsCopyWithImpl(this._value, this._then);

  final POSSecurityRoleResults _value;
  // ignore: unused_field
  final $Res Function(POSSecurityRoleResults) _then;

  @override
  $Res call({
    Object? POSSecurityRoles = freezed,
  }) {
    return _then(_value.copyWith(
      POSSecurityRoles: POSSecurityRoles == freezed
          ? _value.POSSecurityRoles
          : POSSecurityRoles // ignore: cast_nullable_to_non_nullable
              as List<POSSecurityRole>,
    ));
  }
}

/// @nodoc
abstract class _$POSSecurityRoleResultsCopyWith<$Res>
    implements $POSSecurityRoleResultsCopyWith<$Res> {
  factory _$POSSecurityRoleResultsCopyWith(_POSSecurityRoleResults value,
          $Res Function(_POSSecurityRoleResults) then) =
      __$POSSecurityRoleResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<POSSecurityRole> POSSecurityRoles});
}

/// @nodoc
class __$POSSecurityRoleResultsCopyWithImpl<$Res>
    extends _$POSSecurityRoleResultsCopyWithImpl<$Res>
    implements _$POSSecurityRoleResultsCopyWith<$Res> {
  __$POSSecurityRoleResultsCopyWithImpl(_POSSecurityRoleResults _value,
      $Res Function(_POSSecurityRoleResults) _then)
      : super(_value, (v) => _then(v as _POSSecurityRoleResults));

  @override
  _POSSecurityRoleResults get _value => super._value as _POSSecurityRoleResults;

  @override
  $Res call({
    Object? POSSecurityRoles = freezed,
  }) {
    return _then(_POSSecurityRoleResults(
      POSSecurityRoles: POSSecurityRoles == freezed
          ? _value.POSSecurityRoles
          : POSSecurityRoles // ignore: cast_nullable_to_non_nullable
              as List<POSSecurityRole>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSSecurityRoleResults implements _POSSecurityRoleResults {
  const _$_POSSecurityRoleResults(
      {@JsonKey(name: 'results') required this.POSSecurityRoles});

  factory _$_POSSecurityRoleResults.fromJson(Map<String, dynamic> json) =>
      _$$_POSSecurityRoleResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<POSSecurityRole> POSSecurityRoles;

  @override
  String toString() {
    return 'POSSecurityRoleResults(POSSecurityRoles: $POSSecurityRoles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSSecurityRoleResults &&
            const DeepCollectionEquality()
                .equals(other.POSSecurityRoles, POSSecurityRoles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(POSSecurityRoles));

  @JsonKey(ignore: true)
  @override
  _$POSSecurityRoleResultsCopyWith<_POSSecurityRoleResults> get copyWith =>
      __$POSSecurityRoleResultsCopyWithImpl<_POSSecurityRoleResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSSecurityRoleResultsToJson(this);
  }
}

abstract class _POSSecurityRoleResults implements POSSecurityRoleResults {
  const factory _POSSecurityRoleResults(
          {@JsonKey(name: 'results')
              required List<POSSecurityRole> POSSecurityRoles}) =
      _$_POSSecurityRoleResults;

  factory _POSSecurityRoleResults.fromJson(Map<String, dynamic> json) =
      _$_POSSecurityRoleResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<POSSecurityRole> get POSSecurityRoles;
  @override
  @JsonKey(ignore: true)
  _$POSSecurityRoleResultsCopyWith<_POSSecurityRoleResults> get copyWith =>
      throw _privateConstructorUsedError;
}
