// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

POSGroup _$POSGroupFromJson(Map<String, dynamic> json) {
  return _POSGroup.fromJson(json);
}

/// @nodoc
class _$POSGroupTearOff {
  const _$POSGroupTearOff();

  _POSGroup call(
      {required int id,
      required String name,
      @JsonKey(name: 'pos_role_ids') List<int>? posRoleIds,
      @JsonKey(name: 'pos_user_ids') List<int>? posUserIds,
      @JsonKey(name: 'company_id') int? companyId}) {
    return _POSGroup(
      id: id,
      name: name,
      posRoleIds: posRoleIds,
      posUserIds: posUserIds,
      companyId: companyId,
    );
  }

  POSGroup fromJson(Map<String, Object?> json) {
    return POSGroup.fromJson(json);
  }
}

/// @nodoc
const $POSGroup = _$POSGroupTearOff();

/// @nodoc
mixin _$POSGroup {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'pos_role_ids')
  List<int>? get posRoleIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'pos_user_ids')
  List<int>? get posUserIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSGroupCopyWith<POSGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSGroupCopyWith<$Res> {
  factory $POSGroupCopyWith(POSGroup value, $Res Function(POSGroup) then) =
      _$POSGroupCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'pos_role_ids') List<int>? posRoleIds,
      @JsonKey(name: 'pos_user_ids') List<int>? posUserIds,
      @JsonKey(name: 'company_id') int? companyId});
}

/// @nodoc
class _$POSGroupCopyWithImpl<$Res> implements $POSGroupCopyWith<$Res> {
  _$POSGroupCopyWithImpl(this._value, this._then);

  final POSGroup _value;
  // ignore: unused_field
  final $Res Function(POSGroup) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posRoleIds = freezed,
    Object? posUserIds = freezed,
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
      posRoleIds: posRoleIds == freezed
          ? _value.posRoleIds
          : posRoleIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      posUserIds: posUserIds == freezed
          ? _value.posUserIds
          : posUserIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$POSGroupCopyWith<$Res> implements $POSGroupCopyWith<$Res> {
  factory _$POSGroupCopyWith(_POSGroup value, $Res Function(_POSGroup) then) =
      __$POSGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'pos_role_ids') List<int>? posRoleIds,
      @JsonKey(name: 'pos_user_ids') List<int>? posUserIds,
      @JsonKey(name: 'company_id') int? companyId});
}

/// @nodoc
class __$POSGroupCopyWithImpl<$Res> extends _$POSGroupCopyWithImpl<$Res>
    implements _$POSGroupCopyWith<$Res> {
  __$POSGroupCopyWithImpl(_POSGroup _value, $Res Function(_POSGroup) _then)
      : super(_value, (v) => _then(v as _POSGroup));

  @override
  _POSGroup get _value => super._value as _POSGroup;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posRoleIds = freezed,
    Object? posUserIds = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_POSGroup(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      posRoleIds: posRoleIds == freezed
          ? _value.posRoleIds
          : posRoleIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      posUserIds: posUserIds == freezed
          ? _value.posUserIds
          : posUserIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSGroup implements _POSGroup {
  const _$_POSGroup(
      {required this.id,
      required this.name,
      @JsonKey(name: 'pos_role_ids') this.posRoleIds,
      @JsonKey(name: 'pos_user_ids') this.posUserIds,
      @JsonKey(name: 'company_id') this.companyId});

  factory _$_POSGroup.fromJson(Map<String, dynamic> json) =>
      _$$_POSGroupFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'pos_role_ids')
  final List<int>? posRoleIds;
  @override
  @JsonKey(name: 'pos_user_ids')
  final List<int>? posUserIds;
  @override
  @JsonKey(name: 'company_id')
  final int? companyId;

  @override
  String toString() {
    return 'POSGroup(id: $id, name: $name, posRoleIds: $posRoleIds, posUserIds: $posUserIds, companyId: $companyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSGroup &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.posRoleIds, posRoleIds) &&
            const DeepCollectionEquality()
                .equals(other.posUserIds, posUserIds) &&
            const DeepCollectionEquality().equals(other.companyId, companyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(posRoleIds),
      const DeepCollectionEquality().hash(posUserIds),
      const DeepCollectionEquality().hash(companyId));

  @JsonKey(ignore: true)
  @override
  _$POSGroupCopyWith<_POSGroup> get copyWith =>
      __$POSGroupCopyWithImpl<_POSGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSGroupToJson(this);
  }
}

abstract class _POSGroup implements POSGroup {
  const factory _POSGroup(
      {required int id,
      required String name,
      @JsonKey(name: 'pos_role_ids') List<int>? posRoleIds,
      @JsonKey(name: 'pos_user_ids') List<int>? posUserIds,
      @JsonKey(name: 'company_id') int? companyId}) = _$_POSGroup;

  factory _POSGroup.fromJson(Map<String, dynamic> json) = _$_POSGroup.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'pos_role_ids')
  List<int>? get posRoleIds;
  @override
  @JsonKey(name: 'pos_user_ids')
  List<int>? get posUserIds;
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @override
  @JsonKey(ignore: true)
  _$POSGroupCopyWith<_POSGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

POSGroupResults _$POSGroupResultsFromJson(Map<String, dynamic> json) {
  return _POSGroupResults.fromJson(json);
}

/// @nodoc
class _$POSGroupResultsTearOff {
  const _$POSGroupResultsTearOff();

  _POSGroupResults call(
      {@JsonKey(name: 'results') required List<POSGroup> POSGroups}) {
    return _POSGroupResults(
      POSGroups: POSGroups,
    );
  }

  POSGroupResults fromJson(Map<String, Object?> json) {
    return POSGroupResults.fromJson(json);
  }
}

/// @nodoc
const $POSGroupResults = _$POSGroupResultsTearOff();

/// @nodoc
mixin _$POSGroupResults {
  @JsonKey(name: 'results')
  List<POSGroup> get POSGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSGroupResultsCopyWith<POSGroupResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSGroupResultsCopyWith<$Res> {
  factory $POSGroupResultsCopyWith(
          POSGroupResults value, $Res Function(POSGroupResults) then) =
      _$POSGroupResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<POSGroup> POSGroups});
}

/// @nodoc
class _$POSGroupResultsCopyWithImpl<$Res>
    implements $POSGroupResultsCopyWith<$Res> {
  _$POSGroupResultsCopyWithImpl(this._value, this._then);

  final POSGroupResults _value;
  // ignore: unused_field
  final $Res Function(POSGroupResults) _then;

  @override
  $Res call({
    Object? POSGroups = freezed,
  }) {
    return _then(_value.copyWith(
      POSGroups: POSGroups == freezed
          ? _value.POSGroups
          : POSGroups // ignore: cast_nullable_to_non_nullable
              as List<POSGroup>,
    ));
  }
}

/// @nodoc
abstract class _$POSGroupResultsCopyWith<$Res>
    implements $POSGroupResultsCopyWith<$Res> {
  factory _$POSGroupResultsCopyWith(
          _POSGroupResults value, $Res Function(_POSGroupResults) then) =
      __$POSGroupResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<POSGroup> POSGroups});
}

/// @nodoc
class __$POSGroupResultsCopyWithImpl<$Res>
    extends _$POSGroupResultsCopyWithImpl<$Res>
    implements _$POSGroupResultsCopyWith<$Res> {
  __$POSGroupResultsCopyWithImpl(
      _POSGroupResults _value, $Res Function(_POSGroupResults) _then)
      : super(_value, (v) => _then(v as _POSGroupResults));

  @override
  _POSGroupResults get _value => super._value as _POSGroupResults;

  @override
  $Res call({
    Object? POSGroups = freezed,
  }) {
    return _then(_POSGroupResults(
      POSGroups: POSGroups == freezed
          ? _value.POSGroups
          : POSGroups // ignore: cast_nullable_to_non_nullable
              as List<POSGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSGroupResults implements _POSGroupResults {
  const _$_POSGroupResults({@JsonKey(name: 'results') required this.POSGroups});

  factory _$_POSGroupResults.fromJson(Map<String, dynamic> json) =>
      _$$_POSGroupResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<POSGroup> POSGroups;

  @override
  String toString() {
    return 'POSGroupResults(POSGroups: $POSGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSGroupResults &&
            const DeepCollectionEquality().equals(other.POSGroups, POSGroups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(POSGroups));

  @JsonKey(ignore: true)
  @override
  _$POSGroupResultsCopyWith<_POSGroupResults> get copyWith =>
      __$POSGroupResultsCopyWithImpl<_POSGroupResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSGroupResultsToJson(this);
  }
}

abstract class _POSGroupResults implements POSGroupResults {
  const factory _POSGroupResults(
          {@JsonKey(name: 'results') required List<POSGroup> POSGroups}) =
      _$_POSGroupResults;

  factory _POSGroupResults.fromJson(Map<String, dynamic> json) =
      _$_POSGroupResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<POSGroup> get POSGroups;
  @override
  @JsonKey(ignore: true)
  _$POSGroupResultsCopyWith<_POSGroupResults> get copyWith =>
      throw _privateConstructorUsedError;
}
