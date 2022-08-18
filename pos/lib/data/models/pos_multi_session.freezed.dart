// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_multi_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

POSMultiSession _$POSMultiSessionFromJson(Map<String, dynamic> json) {
  return _POSMultiSession.fromJson(json);
}

/// @nodoc
class _$POSMultiSessionTearOff {
  const _$POSMultiSessionTearOff();

  _POSMultiSession call(
      {required String id,
      required String name,
      @JsonKey(name: 'pos_ids') List<Map<String, int>>? posIds,
      @JsonKey(name: 'floor_ids') List<int>? floorIds,
      @JsonKey(name: 'table_blocking') bool? tableBlocking,
      @JsonKey(name: 'multi_session_active') bool? multiSessionActive,
      @JsonKey(name: 'sync_server') String? syncServer,
      @JsonKey(name: 'fiscal_position_ids') List<int>? fiscalPositionIds,
      @JsonKey(name: 'company_id') int? companyId}) {
    return _POSMultiSession(
      id: id,
      name: name,
      posIds: posIds,
      floorIds: floorIds,
      tableBlocking: tableBlocking,
      multiSessionActive: multiSessionActive,
      syncServer: syncServer,
      fiscalPositionIds: fiscalPositionIds,
      companyId: companyId,
    );
  }

  POSMultiSession fromJson(Map<String, Object?> json) {
    return POSMultiSession.fromJson(json);
  }
}

/// @nodoc
const $POSMultiSession = _$POSMultiSessionTearOff();

/// @nodoc
mixin _$POSMultiSession {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'pos_ids')
  List<Map<String, int>>? get posIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor_ids')
  List<int>? get floorIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'table_blocking')
  bool? get tableBlocking => throw _privateConstructorUsedError;
  @JsonKey(name: 'multi_session_active')
  bool? get multiSessionActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'sync_server')
  String? get syncServer => throw _privateConstructorUsedError;
  @JsonKey(name: 'fiscal_position_ids')
  List<int>? get fiscalPositionIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSMultiSessionCopyWith<POSMultiSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSMultiSessionCopyWith<$Res> {
  factory $POSMultiSessionCopyWith(
          POSMultiSession value, $Res Function(POSMultiSession) then) =
      _$POSMultiSessionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'pos_ids') List<Map<String, int>>? posIds,
      @JsonKey(name: 'floor_ids') List<int>? floorIds,
      @JsonKey(name: 'table_blocking') bool? tableBlocking,
      @JsonKey(name: 'multi_session_active') bool? multiSessionActive,
      @JsonKey(name: 'sync_server') String? syncServer,
      @JsonKey(name: 'fiscal_position_ids') List<int>? fiscalPositionIds,
      @JsonKey(name: 'company_id') int? companyId});
}

/// @nodoc
class _$POSMultiSessionCopyWithImpl<$Res>
    implements $POSMultiSessionCopyWith<$Res> {
  _$POSMultiSessionCopyWithImpl(this._value, this._then);

  final POSMultiSession _value;
  // ignore: unused_field
  final $Res Function(POSMultiSession) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posIds = freezed,
    Object? floorIds = freezed,
    Object? tableBlocking = freezed,
    Object? multiSessionActive = freezed,
    Object? syncServer = freezed,
    Object? fiscalPositionIds = freezed,
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
      posIds: posIds == freezed
          ? _value.posIds
          : posIds // ignore: cast_nullable_to_non_nullable
              as List<Map<String, int>>?,
      floorIds: floorIds == freezed
          ? _value.floorIds
          : floorIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      tableBlocking: tableBlocking == freezed
          ? _value.tableBlocking
          : tableBlocking // ignore: cast_nullable_to_non_nullable
              as bool?,
      multiSessionActive: multiSessionActive == freezed
          ? _value.multiSessionActive
          : multiSessionActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      syncServer: syncServer == freezed
          ? _value.syncServer
          : syncServer // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalPositionIds: fiscalPositionIds == freezed
          ? _value.fiscalPositionIds
          : fiscalPositionIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$POSMultiSessionCopyWith<$Res>
    implements $POSMultiSessionCopyWith<$Res> {
  factory _$POSMultiSessionCopyWith(
          _POSMultiSession value, $Res Function(_POSMultiSession) then) =
      __$POSMultiSessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'pos_ids') List<Map<String, int>>? posIds,
      @JsonKey(name: 'floor_ids') List<int>? floorIds,
      @JsonKey(name: 'table_blocking') bool? tableBlocking,
      @JsonKey(name: 'multi_session_active') bool? multiSessionActive,
      @JsonKey(name: 'sync_server') String? syncServer,
      @JsonKey(name: 'fiscal_position_ids') List<int>? fiscalPositionIds,
      @JsonKey(name: 'company_id') int? companyId});
}

/// @nodoc
class __$POSMultiSessionCopyWithImpl<$Res>
    extends _$POSMultiSessionCopyWithImpl<$Res>
    implements _$POSMultiSessionCopyWith<$Res> {
  __$POSMultiSessionCopyWithImpl(
      _POSMultiSession _value, $Res Function(_POSMultiSession) _then)
      : super(_value, (v) => _then(v as _POSMultiSession));

  @override
  _POSMultiSession get _value => super._value as _POSMultiSession;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posIds = freezed,
    Object? floorIds = freezed,
    Object? tableBlocking = freezed,
    Object? multiSessionActive = freezed,
    Object? syncServer = freezed,
    Object? fiscalPositionIds = freezed,
    Object? companyId = freezed,
  }) {
    return _then(_POSMultiSession(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      posIds: posIds == freezed
          ? _value.posIds
          : posIds // ignore: cast_nullable_to_non_nullable
              as List<Map<String, int>>?,
      floorIds: floorIds == freezed
          ? _value.floorIds
          : floorIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      tableBlocking: tableBlocking == freezed
          ? _value.tableBlocking
          : tableBlocking // ignore: cast_nullable_to_non_nullable
              as bool?,
      multiSessionActive: multiSessionActive == freezed
          ? _value.multiSessionActive
          : multiSessionActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      syncServer: syncServer == freezed
          ? _value.syncServer
          : syncServer // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalPositionIds: fiscalPositionIds == freezed
          ? _value.fiscalPositionIds
          : fiscalPositionIds // ignore: cast_nullable_to_non_nullable
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
class _$_POSMultiSession implements _POSMultiSession {
  const _$_POSMultiSession(
      {required this.id,
      required this.name,
      @JsonKey(name: 'pos_ids') this.posIds,
      @JsonKey(name: 'floor_ids') this.floorIds,
      @JsonKey(name: 'table_blocking') this.tableBlocking,
      @JsonKey(name: 'multi_session_active') this.multiSessionActive,
      @JsonKey(name: 'sync_server') this.syncServer,
      @JsonKey(name: 'fiscal_position_ids') this.fiscalPositionIds,
      @JsonKey(name: 'company_id') this.companyId});

  factory _$_POSMultiSession.fromJson(Map<String, dynamic> json) =>
      _$$_POSMultiSessionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'pos_ids')
  final List<Map<String, int>>? posIds;
  @override
  @JsonKey(name: 'floor_ids')
  final List<int>? floorIds;
  @override
  @JsonKey(name: 'table_blocking')
  final bool? tableBlocking;
  @override
  @JsonKey(name: 'multi_session_active')
  final bool? multiSessionActive;
  @override
  @JsonKey(name: 'sync_server')
  final String? syncServer;
  @override
  @JsonKey(name: 'fiscal_position_ids')
  final List<int>? fiscalPositionIds;
  @override
  @JsonKey(name: 'company_id')
  final int? companyId;

  @override
  String toString() {
    return 'POSMultiSession(id: $id, name: $name, posIds: $posIds, floorIds: $floorIds, tableBlocking: $tableBlocking, multiSessionActive: $multiSessionActive, syncServer: $syncServer, fiscalPositionIds: $fiscalPositionIds, companyId: $companyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSMultiSession &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.posIds, posIds) &&
            const DeepCollectionEquality().equals(other.floorIds, floorIds) &&
            const DeepCollectionEquality()
                .equals(other.tableBlocking, tableBlocking) &&
            const DeepCollectionEquality()
                .equals(other.multiSessionActive, multiSessionActive) &&
            const DeepCollectionEquality()
                .equals(other.syncServer, syncServer) &&
            const DeepCollectionEquality()
                .equals(other.fiscalPositionIds, fiscalPositionIds) &&
            const DeepCollectionEquality().equals(other.companyId, companyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(posIds),
      const DeepCollectionEquality().hash(floorIds),
      const DeepCollectionEquality().hash(tableBlocking),
      const DeepCollectionEquality().hash(multiSessionActive),
      const DeepCollectionEquality().hash(syncServer),
      const DeepCollectionEquality().hash(fiscalPositionIds),
      const DeepCollectionEquality().hash(companyId));

  @JsonKey(ignore: true)
  @override
  _$POSMultiSessionCopyWith<_POSMultiSession> get copyWith =>
      __$POSMultiSessionCopyWithImpl<_POSMultiSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSMultiSessionToJson(this);
  }
}

abstract class _POSMultiSession implements POSMultiSession {
  const factory _POSMultiSession(
      {required String id,
      required String name,
      @JsonKey(name: 'pos_ids') List<Map<String, int>>? posIds,
      @JsonKey(name: 'floor_ids') List<int>? floorIds,
      @JsonKey(name: 'table_blocking') bool? tableBlocking,
      @JsonKey(name: 'multi_session_active') bool? multiSessionActive,
      @JsonKey(name: 'sync_server') String? syncServer,
      @JsonKey(name: 'fiscal_position_ids') List<int>? fiscalPositionIds,
      @JsonKey(name: 'company_id') int? companyId}) = _$_POSMultiSession;

  factory _POSMultiSession.fromJson(Map<String, dynamic> json) =
      _$_POSMultiSession.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'pos_ids')
  List<Map<String, int>>? get posIds;
  @override
  @JsonKey(name: 'floor_ids')
  List<int>? get floorIds;
  @override
  @JsonKey(name: 'table_blocking')
  bool? get tableBlocking;
  @override
  @JsonKey(name: 'multi_session_active')
  bool? get multiSessionActive;
  @override
  @JsonKey(name: 'sync_server')
  String? get syncServer;
  @override
  @JsonKey(name: 'fiscal_position_ids')
  List<int>? get fiscalPositionIds;
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @override
  @JsonKey(ignore: true)
  _$POSMultiSessionCopyWith<_POSMultiSession> get copyWith =>
      throw _privateConstructorUsedError;
}

POSMultiSessionResults _$POSMultiSessionResultsFromJson(
    Map<String, dynamic> json) {
  return _POSMultiSessionResults.fromJson(json);
}

/// @nodoc
class _$POSMultiSessionResultsTearOff {
  const _$POSMultiSessionResultsTearOff();

  _POSMultiSessionResults call(
      {@JsonKey(name: 'results')
          required List<POSMultiSession> POSMultiSessions}) {
    return _POSMultiSessionResults(
      POSMultiSessions: POSMultiSessions,
    );
  }

  POSMultiSessionResults fromJson(Map<String, Object?> json) {
    return POSMultiSessionResults.fromJson(json);
  }
}

/// @nodoc
const $POSMultiSessionResults = _$POSMultiSessionResultsTearOff();

/// @nodoc
mixin _$POSMultiSessionResults {
  @JsonKey(name: 'results')
  List<POSMultiSession> get POSMultiSessions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSMultiSessionResultsCopyWith<POSMultiSessionResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSMultiSessionResultsCopyWith<$Res> {
  factory $POSMultiSessionResultsCopyWith(POSMultiSessionResults value,
          $Res Function(POSMultiSessionResults) then) =
      _$POSMultiSessionResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'results') List<POSMultiSession> POSMultiSessions});
}

/// @nodoc
class _$POSMultiSessionResultsCopyWithImpl<$Res>
    implements $POSMultiSessionResultsCopyWith<$Res> {
  _$POSMultiSessionResultsCopyWithImpl(this._value, this._then);

  final POSMultiSessionResults _value;
  // ignore: unused_field
  final $Res Function(POSMultiSessionResults) _then;

  @override
  $Res call({
    Object? POSMultiSessions = freezed,
  }) {
    return _then(_value.copyWith(
      POSMultiSessions: POSMultiSessions == freezed
          ? _value.POSMultiSessions
          : POSMultiSessions // ignore: cast_nullable_to_non_nullable
              as List<POSMultiSession>,
    ));
  }
}

/// @nodoc
abstract class _$POSMultiSessionResultsCopyWith<$Res>
    implements $POSMultiSessionResultsCopyWith<$Res> {
  factory _$POSMultiSessionResultsCopyWith(_POSMultiSessionResults value,
          $Res Function(_POSMultiSessionResults) then) =
      __$POSMultiSessionResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'results') List<POSMultiSession> POSMultiSessions});
}

/// @nodoc
class __$POSMultiSessionResultsCopyWithImpl<$Res>
    extends _$POSMultiSessionResultsCopyWithImpl<$Res>
    implements _$POSMultiSessionResultsCopyWith<$Res> {
  __$POSMultiSessionResultsCopyWithImpl(_POSMultiSessionResults _value,
      $Res Function(_POSMultiSessionResults) _then)
      : super(_value, (v) => _then(v as _POSMultiSessionResults));

  @override
  _POSMultiSessionResults get _value => super._value as _POSMultiSessionResults;

  @override
  $Res call({
    Object? POSMultiSessions = freezed,
  }) {
    return _then(_POSMultiSessionResults(
      POSMultiSessions: POSMultiSessions == freezed
          ? _value.POSMultiSessions
          : POSMultiSessions // ignore: cast_nullable_to_non_nullable
              as List<POSMultiSession>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSMultiSessionResults implements _POSMultiSessionResults {
  const _$_POSMultiSessionResults(
      {@JsonKey(name: 'results') required this.POSMultiSessions});

  factory _$_POSMultiSessionResults.fromJson(Map<String, dynamic> json) =>
      _$$_POSMultiSessionResultsFromJson(json);

  @override
  @JsonKey(name: 'results')
  final List<POSMultiSession> POSMultiSessions;

  @override
  String toString() {
    return 'POSMultiSessionResults(POSMultiSessions: $POSMultiSessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _POSMultiSessionResults &&
            const DeepCollectionEquality()
                .equals(other.POSMultiSessions, POSMultiSessions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(POSMultiSessions));

  @JsonKey(ignore: true)
  @override
  _$POSMultiSessionResultsCopyWith<_POSMultiSessionResults> get copyWith =>
      __$POSMultiSessionResultsCopyWithImpl<_POSMultiSessionResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSMultiSessionResultsToJson(this);
  }
}

abstract class _POSMultiSessionResults implements POSMultiSessionResults {
  const factory _POSMultiSessionResults(
          {@JsonKey(name: 'results')
              required List<POSMultiSession> POSMultiSessions}) =
      _$_POSMultiSessionResults;

  factory _POSMultiSessionResults.fromJson(Map<String, dynamic> json) =
      _$_POSMultiSessionResults.fromJson;

  @override
  @JsonKey(name: 'results')
  List<POSMultiSession> get POSMultiSessions;
  @override
  @JsonKey(ignore: true)
  _$POSMultiSessionResultsCopyWith<_POSMultiSessionResults> get copyWith =>
      throw _privateConstructorUsedError;
}
