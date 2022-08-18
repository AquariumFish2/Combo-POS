// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authenticate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Authenticate _$AuthenticateFromJson(Map<String, dynamic> json) {
  return _Authenticate.fromJson(json);
}

/// @nodoc
class _$AuthenticateTearOff {
  const _$AuthenticateTearOff();

  _Authenticate call(String? jsonrpc, String? id, Result? result) {
    return _Authenticate(
      jsonrpc,
      id,
      result,
    );
  }

  Authenticate fromJson(Map<String, Object?> json) {
    return Authenticate.fromJson(json);
  }
}

/// @nodoc
const $Authenticate = _$AuthenticateTearOff();

/// @nodoc
mixin _$Authenticate {
  String? get jsonrpc => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateCopyWith<Authenticate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateCopyWith<$Res> {
  factory $AuthenticateCopyWith(
          Authenticate value, $Res Function(Authenticate) then) =
      _$AuthenticateCopyWithImpl<$Res>;
  $Res call({String? jsonrpc, String? id, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$AuthenticateCopyWithImpl<$Res> implements $AuthenticateCopyWith<$Res> {
  _$AuthenticateCopyWithImpl(this._value, this._then);

  final Authenticate _value;
  // ignore: unused_field
  final $Res Function(Authenticate) _then;

  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      jsonrpc: jsonrpc == freezed
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }

  @override
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$AuthenticateCopyWith<$Res>
    implements $AuthenticateCopyWith<$Res> {
  factory _$AuthenticateCopyWith(
          _Authenticate value, $Res Function(_Authenticate) then) =
      __$AuthenticateCopyWithImpl<$Res>;
  @override
  $Res call({String? jsonrpc, String? id, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$AuthenticateCopyWithImpl<$Res> extends _$AuthenticateCopyWithImpl<$Res>
    implements _$AuthenticateCopyWith<$Res> {
  __$AuthenticateCopyWithImpl(
      _Authenticate _value, $Res Function(_Authenticate) _then)
      : super(_value, (v) => _then(v as _Authenticate));

  @override
  _Authenticate get _value => super._value as _Authenticate;

  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_Authenticate(
      jsonrpc == freezed
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Authenticate implements _Authenticate {
  const _$_Authenticate(this.jsonrpc, this.id, this.result);

  factory _$_Authenticate.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticateFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final String? id;
  @override
  final Result? result;

  @override
  String toString() {
    return 'Authenticate(jsonrpc: $jsonrpc, id: $id, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Authenticate &&
            const DeepCollectionEquality().equals(other.jsonrpc, jsonrpc) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(jsonrpc),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$AuthenticateCopyWith<_Authenticate> get copyWith =>
      __$AuthenticateCopyWithImpl<_Authenticate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticateToJson(this);
  }
}

abstract class _Authenticate implements Authenticate {
  const factory _Authenticate(String? jsonrpc, String? id, Result? result) =
      _$_Authenticate;

  factory _Authenticate.fromJson(Map<String, dynamic> json) =
      _$_Authenticate.fromJson;

  @override
  String? get jsonrpc;
  @override
  String? get id;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$AuthenticateCopyWith<_Authenticate> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  _Result call(
      int? uid,
      bool? is_system,
      bool? is_admin,
      UserContext? user_context,
      String? db,
      String? server_version,
      List<dynamic> server_version_info,
      String? support_url,
      String? name,
      String? username,
      String? partner_display_name,
      int? company_id,
      bool? branch_id,
      int? partner_id,
      int? active_ids_limit,
      String? profile_session,
      String? profile_collectors,
      String? profile_params,
      int? max_file_upload_size,
      bool? home_action_id,
      CacheHashes? cache_hashes,
      UserCompanies? user_companies,
      UserBranches? user_branches,
      bool? show_effect,
      bool? display_switch_company_menu,
      bool? display_switch_branch_menu) {
    return _Result(
      uid,
      is_system,
      is_admin,
      user_context,
      db,
      server_version,
      server_version_info,
      support_url,
      name,
      username,
      partner_display_name,
      company_id,
      branch_id,
      partner_id,
      active_ids_limit,
      profile_session,
      profile_collectors,
      profile_params,
      max_file_upload_size,
      home_action_id,
      cache_hashes,
      user_companies,
      user_branches,
      show_effect,
      display_switch_company_menu,
      display_switch_branch_menu,
    );
  }

  Result fromJson(Map<String, Object?> json) {
    return Result.fromJson(json);
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result {
  int? get uid => throw _privateConstructorUsedError;
  bool? get is_system => throw _privateConstructorUsedError;
  bool? get is_admin => throw _privateConstructorUsedError;
  UserContext? get user_context => throw _privateConstructorUsedError;
  String? get db => throw _privateConstructorUsedError;
  String? get server_version => throw _privateConstructorUsedError;
  List<dynamic> get server_version_info => throw _privateConstructorUsedError;
  String? get support_url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get partner_display_name => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  bool? get branch_id => throw _privateConstructorUsedError;
  int? get partner_id => throw _privateConstructorUsedError;
  int? get active_ids_limit => throw _privateConstructorUsedError;
  String? get profile_session => throw _privateConstructorUsedError;
  String? get profile_collectors => throw _privateConstructorUsedError;
  String? get profile_params => throw _privateConstructorUsedError;
  int? get max_file_upload_size => throw _privateConstructorUsedError;
  bool? get home_action_id => throw _privateConstructorUsedError;
  CacheHashes? get cache_hashes => throw _privateConstructorUsedError;
  UserCompanies? get user_companies => throw _privateConstructorUsedError;
  UserBranches? get user_branches => throw _privateConstructorUsedError;
  bool? get show_effect => throw _privateConstructorUsedError;
  bool? get display_switch_company_menu => throw _privateConstructorUsedError;
  bool? get display_switch_branch_menu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {int? uid,
      bool? is_system,
      bool? is_admin,
      UserContext? user_context,
      String? db,
      String? server_version,
      List<dynamic> server_version_info,
      String? support_url,
      String? name,
      String? username,
      String? partner_display_name,
      int? company_id,
      bool? branch_id,
      int? partner_id,
      int? active_ids_limit,
      String? profile_session,
      String? profile_collectors,
      String? profile_params,
      int? max_file_upload_size,
      bool? home_action_id,
      CacheHashes? cache_hashes,
      UserCompanies? user_companies,
      UserBranches? user_branches,
      bool? show_effect,
      bool? display_switch_company_menu,
      bool? display_switch_branch_menu});

  $UserContextCopyWith<$Res>? get user_context;
  $CacheHashesCopyWith<$Res>? get cache_hashes;
  $UserCompaniesCopyWith<$Res>? get user_companies;
  $UserBranchesCopyWith<$Res>? get user_branches;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? is_system = freezed,
    Object? is_admin = freezed,
    Object? user_context = freezed,
    Object? db = freezed,
    Object? server_version = freezed,
    Object? server_version_info = freezed,
    Object? support_url = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? partner_display_name = freezed,
    Object? company_id = freezed,
    Object? branch_id = freezed,
    Object? partner_id = freezed,
    Object? active_ids_limit = freezed,
    Object? profile_session = freezed,
    Object? profile_collectors = freezed,
    Object? profile_params = freezed,
    Object? max_file_upload_size = freezed,
    Object? home_action_id = freezed,
    Object? cache_hashes = freezed,
    Object? user_companies = freezed,
    Object? user_branches = freezed,
    Object? show_effect = freezed,
    Object? display_switch_company_menu = freezed,
    Object? display_switch_branch_menu = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      is_system: is_system == freezed
          ? _value.is_system
          : is_system // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_admin: is_admin == freezed
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool?,
      user_context: user_context == freezed
          ? _value.user_context
          : user_context // ignore: cast_nullable_to_non_nullable
              as UserContext?,
      db: db == freezed
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as String?,
      server_version: server_version == freezed
          ? _value.server_version
          : server_version // ignore: cast_nullable_to_non_nullable
              as String?,
      server_version_info: server_version_info == freezed
          ? _value.server_version_info
          : server_version_info // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      support_url: support_url == freezed
          ? _value.support_url
          : support_url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      partner_display_name: partner_display_name == freezed
          ? _value.partner_display_name
          : partner_display_name // ignore: cast_nullable_to_non_nullable
              as String?,
      company_id: company_id == freezed
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      branch_id: branch_id == freezed
          ? _value.branch_id
          : branch_id // ignore: cast_nullable_to_non_nullable
              as bool?,
      partner_id: partner_id == freezed
          ? _value.partner_id
          : partner_id // ignore: cast_nullable_to_non_nullable
              as int?,
      active_ids_limit: active_ids_limit == freezed
          ? _value.active_ids_limit
          : active_ids_limit // ignore: cast_nullable_to_non_nullable
              as int?,
      profile_session: profile_session == freezed
          ? _value.profile_session
          : profile_session // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_collectors: profile_collectors == freezed
          ? _value.profile_collectors
          : profile_collectors // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_params: profile_params == freezed
          ? _value.profile_params
          : profile_params // ignore: cast_nullable_to_non_nullable
              as String?,
      max_file_upload_size: max_file_upload_size == freezed
          ? _value.max_file_upload_size
          : max_file_upload_size // ignore: cast_nullable_to_non_nullable
              as int?,
      home_action_id: home_action_id == freezed
          ? _value.home_action_id
          : home_action_id // ignore: cast_nullable_to_non_nullable
              as bool?,
      cache_hashes: cache_hashes == freezed
          ? _value.cache_hashes
          : cache_hashes // ignore: cast_nullable_to_non_nullable
              as CacheHashes?,
      user_companies: user_companies == freezed
          ? _value.user_companies
          : user_companies // ignore: cast_nullable_to_non_nullable
              as UserCompanies?,
      user_branches: user_branches == freezed
          ? _value.user_branches
          : user_branches // ignore: cast_nullable_to_non_nullable
              as UserBranches?,
      show_effect: show_effect == freezed
          ? _value.show_effect
          : show_effect // ignore: cast_nullable_to_non_nullable
              as bool?,
      display_switch_company_menu: display_switch_company_menu == freezed
          ? _value.display_switch_company_menu
          : display_switch_company_menu // ignore: cast_nullable_to_non_nullable
              as bool?,
      display_switch_branch_menu: display_switch_branch_menu == freezed
          ? _value.display_switch_branch_menu
          : display_switch_branch_menu // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $UserContextCopyWith<$Res>? get user_context {
    if (_value.user_context == null) {
      return null;
    }

    return $UserContextCopyWith<$Res>(_value.user_context!, (value) {
      return _then(_value.copyWith(user_context: value));
    });
  }

  @override
  $CacheHashesCopyWith<$Res>? get cache_hashes {
    if (_value.cache_hashes == null) {
      return null;
    }

    return $CacheHashesCopyWith<$Res>(_value.cache_hashes!, (value) {
      return _then(_value.copyWith(cache_hashes: value));
    });
  }

  @override
  $UserCompaniesCopyWith<$Res>? get user_companies {
    if (_value.user_companies == null) {
      return null;
    }

    return $UserCompaniesCopyWith<$Res>(_value.user_companies!, (value) {
      return _then(_value.copyWith(user_companies: value));
    });
  }

  @override
  $UserBranchesCopyWith<$Res>? get user_branches {
    if (_value.user_branches == null) {
      return null;
    }

    return $UserBranchesCopyWith<$Res>(_value.user_branches!, (value) {
      return _then(_value.copyWith(user_branches: value));
    });
  }
}

/// @nodoc
abstract class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) then) =
      __$ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? uid,
      bool? is_system,
      bool? is_admin,
      UserContext? user_context,
      String? db,
      String? server_version,
      List<dynamic> server_version_info,
      String? support_url,
      String? name,
      String? username,
      String? partner_display_name,
      int? company_id,
      bool? branch_id,
      int? partner_id,
      int? active_ids_limit,
      String? profile_session,
      String? profile_collectors,
      String? profile_params,
      int? max_file_upload_size,
      bool? home_action_id,
      CacheHashes? cache_hashes,
      UserCompanies? user_companies,
      UserBranches? user_branches,
      bool? show_effect,
      bool? display_switch_company_menu,
      bool? display_switch_branch_menu});

  @override
  $UserContextCopyWith<$Res>? get user_context;
  @override
  $CacheHashesCopyWith<$Res>? get cache_hashes;
  @override
  $UserCompaniesCopyWith<$Res>? get user_companies;
  @override
  $UserBranchesCopyWith<$Res>? get user_branches;
}

/// @nodoc
class __$ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(_Result _value, $Res Function(_Result) _then)
      : super(_value, (v) => _then(v as _Result));

  @override
  _Result get _value => super._value as _Result;

  @override
  $Res call({
    Object? uid = freezed,
    Object? is_system = freezed,
    Object? is_admin = freezed,
    Object? user_context = freezed,
    Object? db = freezed,
    Object? server_version = freezed,
    Object? server_version_info = freezed,
    Object? support_url = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? partner_display_name = freezed,
    Object? company_id = freezed,
    Object? branch_id = freezed,
    Object? partner_id = freezed,
    Object? active_ids_limit = freezed,
    Object? profile_session = freezed,
    Object? profile_collectors = freezed,
    Object? profile_params = freezed,
    Object? max_file_upload_size = freezed,
    Object? home_action_id = freezed,
    Object? cache_hashes = freezed,
    Object? user_companies = freezed,
    Object? user_branches = freezed,
    Object? show_effect = freezed,
    Object? display_switch_company_menu = freezed,
    Object? display_switch_branch_menu = freezed,
  }) {
    return _then(_Result(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      is_system == freezed
          ? _value.is_system
          : is_system // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_admin == freezed
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool?,
      user_context == freezed
          ? _value.user_context
          : user_context // ignore: cast_nullable_to_non_nullable
              as UserContext?,
      db == freezed
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as String?,
      server_version == freezed
          ? _value.server_version
          : server_version // ignore: cast_nullable_to_non_nullable
              as String?,
      server_version_info == freezed
          ? _value.server_version_info
          : server_version_info // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      support_url == freezed
          ? _value.support_url
          : support_url // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      partner_display_name == freezed
          ? _value.partner_display_name
          : partner_display_name // ignore: cast_nullable_to_non_nullable
              as String?,
      company_id == freezed
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      branch_id == freezed
          ? _value.branch_id
          : branch_id // ignore: cast_nullable_to_non_nullable
              as bool?,
      partner_id == freezed
          ? _value.partner_id
          : partner_id // ignore: cast_nullable_to_non_nullable
              as int?,
      active_ids_limit == freezed
          ? _value.active_ids_limit
          : active_ids_limit // ignore: cast_nullable_to_non_nullable
              as int?,
      profile_session == freezed
          ? _value.profile_session
          : profile_session // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_collectors == freezed
          ? _value.profile_collectors
          : profile_collectors // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_params == freezed
          ? _value.profile_params
          : profile_params // ignore: cast_nullable_to_non_nullable
              as String?,
      max_file_upload_size == freezed
          ? _value.max_file_upload_size
          : max_file_upload_size // ignore: cast_nullable_to_non_nullable
              as int?,
      home_action_id == freezed
          ? _value.home_action_id
          : home_action_id // ignore: cast_nullable_to_non_nullable
              as bool?,
      cache_hashes == freezed
          ? _value.cache_hashes
          : cache_hashes // ignore: cast_nullable_to_non_nullable
              as CacheHashes?,
      user_companies == freezed
          ? _value.user_companies
          : user_companies // ignore: cast_nullable_to_non_nullable
              as UserCompanies?,
      user_branches == freezed
          ? _value.user_branches
          : user_branches // ignore: cast_nullable_to_non_nullable
              as UserBranches?,
      show_effect == freezed
          ? _value.show_effect
          : show_effect // ignore: cast_nullable_to_non_nullable
              as bool?,
      display_switch_company_menu == freezed
          ? _value.display_switch_company_menu
          : display_switch_company_menu // ignore: cast_nullable_to_non_nullable
              as bool?,
      display_switch_branch_menu == freezed
          ? _value.display_switch_branch_menu
          : display_switch_branch_menu // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      this.uid,
      this.is_system,
      this.is_admin,
      this.user_context,
      this.db,
      this.server_version,
      this.server_version_info,
      this.support_url,
      this.name,
      this.username,
      this.partner_display_name,
      this.company_id,
      this.branch_id,
      this.partner_id,
      this.active_ids_limit,
      this.profile_session,
      this.profile_collectors,
      this.profile_params,
      this.max_file_upload_size,
      this.home_action_id,
      this.cache_hashes,
      this.user_companies,
      this.user_branches,
      this.show_effect,
      this.display_switch_company_menu,
      this.display_switch_branch_menu);

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int? uid;
  @override
  final bool? is_system;
  @override
  final bool? is_admin;
  @override
  final UserContext? user_context;
  @override
  final String? db;
  @override
  final String? server_version;
  @override
  final List<dynamic> server_version_info;
  @override
  final String? support_url;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? partner_display_name;
  @override
  final int? company_id;
  @override
  final bool? branch_id;
  @override
  final int? partner_id;
  @override
  final int? active_ids_limit;
  @override
  final String? profile_session;
  @override
  final String? profile_collectors;
  @override
  final String? profile_params;
  @override
  final int? max_file_upload_size;
  @override
  final bool? home_action_id;
  @override
  final CacheHashes? cache_hashes;
  @override
  final UserCompanies? user_companies;
  @override
  final UserBranches? user_branches;
  @override
  final bool? show_effect;
  @override
  final bool? display_switch_company_menu;
  @override
  final bool? display_switch_branch_menu;

  @override
  String toString() {
    return 'Result(uid: $uid, is_system: $is_system, is_admin: $is_admin, user_context: $user_context, db: $db, server_version: $server_version, server_version_info: $server_version_info, support_url: $support_url, name: $name, username: $username, partner_display_name: $partner_display_name, company_id: $company_id, branch_id: $branch_id, partner_id: $partner_id, active_ids_limit: $active_ids_limit, profile_session: $profile_session, profile_collectors: $profile_collectors, profile_params: $profile_params, max_file_upload_size: $max_file_upload_size, home_action_id: $home_action_id, cache_hashes: $cache_hashes, user_companies: $user_companies, user_branches: $user_branches, show_effect: $show_effect, display_switch_company_menu: $display_switch_company_menu, display_switch_branch_menu: $display_switch_branch_menu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Result &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.is_system, is_system) &&
            const DeepCollectionEquality().equals(other.is_admin, is_admin) &&
            const DeepCollectionEquality()
                .equals(other.user_context, user_context) &&
            const DeepCollectionEquality().equals(other.db, db) &&
            const DeepCollectionEquality()
                .equals(other.server_version, server_version) &&
            const DeepCollectionEquality()
                .equals(other.server_version_info, server_version_info) &&
            const DeepCollectionEquality()
                .equals(other.support_url, support_url) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.partner_display_name, partner_display_name) &&
            const DeepCollectionEquality()
                .equals(other.company_id, company_id) &&
            const DeepCollectionEquality().equals(other.branch_id, branch_id) &&
            const DeepCollectionEquality()
                .equals(other.partner_id, partner_id) &&
            const DeepCollectionEquality()
                .equals(other.active_ids_limit, active_ids_limit) &&
            const DeepCollectionEquality()
                .equals(other.profile_session, profile_session) &&
            const DeepCollectionEquality()
                .equals(other.profile_collectors, profile_collectors) &&
            const DeepCollectionEquality()
                .equals(other.profile_params, profile_params) &&
            const DeepCollectionEquality()
                .equals(other.max_file_upload_size, max_file_upload_size) &&
            const DeepCollectionEquality()
                .equals(other.home_action_id, home_action_id) &&
            const DeepCollectionEquality()
                .equals(other.cache_hashes, cache_hashes) &&
            const DeepCollectionEquality()
                .equals(other.user_companies, user_companies) &&
            const DeepCollectionEquality()
                .equals(other.user_branches, user_branches) &&
            const DeepCollectionEquality()
                .equals(other.show_effect, show_effect) &&
            const DeepCollectionEquality().equals(
                other.display_switch_company_menu,
                display_switch_company_menu) &&
            const DeepCollectionEquality().equals(
                other.display_switch_branch_menu, display_switch_branch_menu));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(uid),
        const DeepCollectionEquality().hash(is_system),
        const DeepCollectionEquality().hash(is_admin),
        const DeepCollectionEquality().hash(user_context),
        const DeepCollectionEquality().hash(db),
        const DeepCollectionEquality().hash(server_version),
        const DeepCollectionEquality().hash(server_version_info),
        const DeepCollectionEquality().hash(support_url),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(partner_display_name),
        const DeepCollectionEquality().hash(company_id),
        const DeepCollectionEquality().hash(branch_id),
        const DeepCollectionEquality().hash(partner_id),
        const DeepCollectionEquality().hash(active_ids_limit),
        const DeepCollectionEquality().hash(profile_session),
        const DeepCollectionEquality().hash(profile_collectors),
        const DeepCollectionEquality().hash(profile_params),
        const DeepCollectionEquality().hash(max_file_upload_size),
        const DeepCollectionEquality().hash(home_action_id),
        const DeepCollectionEquality().hash(cache_hashes),
        const DeepCollectionEquality().hash(user_companies),
        const DeepCollectionEquality().hash(user_branches),
        const DeepCollectionEquality().hash(show_effect),
        const DeepCollectionEquality().hash(display_switch_company_menu),
        const DeepCollectionEquality().hash(display_switch_branch_menu)
      ]);

  @JsonKey(ignore: true)
  @override
  _$ResultCopyWith<_Result> get copyWith =>
      __$ResultCopyWithImpl<_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  const factory _Result(
      int? uid,
      bool? is_system,
      bool? is_admin,
      UserContext? user_context,
      String? db,
      String? server_version,
      List<dynamic> server_version_info,
      String? support_url,
      String? name,
      String? username,
      String? partner_display_name,
      int? company_id,
      bool? branch_id,
      int? partner_id,
      int? active_ids_limit,
      String? profile_session,
      String? profile_collectors,
      String? profile_params,
      int? max_file_upload_size,
      bool? home_action_id,
      CacheHashes? cache_hashes,
      UserCompanies? user_companies,
      UserBranches? user_branches,
      bool? show_effect,
      bool? display_switch_company_menu,
      bool? display_switch_branch_menu) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int? get uid;
  @override
  bool? get is_system;
  @override
  bool? get is_admin;
  @override
  UserContext? get user_context;
  @override
  String? get db;
  @override
  String? get server_version;
  @override
  List<dynamic> get server_version_info;
  @override
  String? get support_url;
  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get partner_display_name;
  @override
  int? get company_id;
  @override
  bool? get branch_id;
  @override
  int? get partner_id;
  @override
  int? get active_ids_limit;
  @override
  String? get profile_session;
  @override
  String? get profile_collectors;
  @override
  String? get profile_params;
  @override
  int? get max_file_upload_size;
  @override
  bool? get home_action_id;
  @override
  CacheHashes? get cache_hashes;
  @override
  UserCompanies? get user_companies;
  @override
  UserBranches? get user_branches;
  @override
  bool? get show_effect;
  @override
  bool? get display_switch_company_menu;
  @override
  bool? get display_switch_branch_menu;
  @override
  @JsonKey(ignore: true)
  _$ResultCopyWith<_Result> get copyWith => throw _privateConstructorUsedError;
}

UserBranches _$UserBranchesFromJson(Map<String, dynamic> json) {
  return _UserBranches.fromJson(json);
}

/// @nodoc
class _$UserBranchesTearOff {
  const _$UserBranchesTearOff();

  _UserBranches call(bool? current_branch) {
    return _UserBranches(
      current_branch,
    );
  }

  UserBranches fromJson(Map<String, Object?> json) {
    return UserBranches.fromJson(json);
  }
}

/// @nodoc
const $UserBranches = _$UserBranchesTearOff();

/// @nodoc
mixin _$UserBranches {
  bool? get current_branch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBranchesCopyWith<UserBranches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBranchesCopyWith<$Res> {
  factory $UserBranchesCopyWith(
          UserBranches value, $Res Function(UserBranches) then) =
      _$UserBranchesCopyWithImpl<$Res>;
  $Res call({bool? current_branch});
}

/// @nodoc
class _$UserBranchesCopyWithImpl<$Res> implements $UserBranchesCopyWith<$Res> {
  _$UserBranchesCopyWithImpl(this._value, this._then);

  final UserBranches _value;
  // ignore: unused_field
  final $Res Function(UserBranches) _then;

  @override
  $Res call({
    Object? current_branch = freezed,
  }) {
    return _then(_value.copyWith(
      current_branch: current_branch == freezed
          ? _value.current_branch
          : current_branch // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$UserBranchesCopyWith<$Res>
    implements $UserBranchesCopyWith<$Res> {
  factory _$UserBranchesCopyWith(
          _UserBranches value, $Res Function(_UserBranches) then) =
      __$UserBranchesCopyWithImpl<$Res>;
  @override
  $Res call({bool? current_branch});
}

/// @nodoc
class __$UserBranchesCopyWithImpl<$Res> extends _$UserBranchesCopyWithImpl<$Res>
    implements _$UserBranchesCopyWith<$Res> {
  __$UserBranchesCopyWithImpl(
      _UserBranches _value, $Res Function(_UserBranches) _then)
      : super(_value, (v) => _then(v as _UserBranches));

  @override
  _UserBranches get _value => super._value as _UserBranches;

  @override
  $Res call({
    Object? current_branch = freezed,
  }) {
    return _then(_UserBranches(
      current_branch == freezed
          ? _value.current_branch
          : current_branch // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBranches implements _UserBranches {
  const _$_UserBranches(this.current_branch);

  factory _$_UserBranches.fromJson(Map<String, dynamic> json) =>
      _$$_UserBranchesFromJson(json);

  @override
  final bool? current_branch;

  @override
  String toString() {
    return 'UserBranches(current_branch: $current_branch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserBranches &&
            const DeepCollectionEquality()
                .equals(other.current_branch, current_branch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(current_branch));

  @JsonKey(ignore: true)
  @override
  _$UserBranchesCopyWith<_UserBranches> get copyWith =>
      __$UserBranchesCopyWithImpl<_UserBranches>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBranchesToJson(this);
  }
}

abstract class _UserBranches implements UserBranches {
  const factory _UserBranches(bool? current_branch) = _$_UserBranches;

  factory _UserBranches.fromJson(Map<String, dynamic> json) =
      _$_UserBranches.fromJson;

  @override
  bool? get current_branch;
  @override
  @JsonKey(ignore: true)
  _$UserBranchesCopyWith<_UserBranches> get copyWith =>
      throw _privateConstructorUsedError;
}

UserCompanies _$UserCompaniesFromJson(Map<String, dynamic> json) {
  return _UserCompanies.fromJson(json);
}

/// @nodoc
class _$UserCompaniesTearOff {
  const _$UserCompaniesTearOff();

  _UserCompanies call(int? current_company) {
    return _UserCompanies(
      current_company,
    );
  }

  UserCompanies fromJson(Map<String, Object?> json) {
    return UserCompanies.fromJson(json);
  }
}

/// @nodoc
const $UserCompanies = _$UserCompaniesTearOff();

/// @nodoc
mixin _$UserCompanies {
  int? get current_company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCompaniesCopyWith<UserCompanies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCompaniesCopyWith<$Res> {
  factory $UserCompaniesCopyWith(
          UserCompanies value, $Res Function(UserCompanies) then) =
      _$UserCompaniesCopyWithImpl<$Res>;
  $Res call({int? current_company});
}

/// @nodoc
class _$UserCompaniesCopyWithImpl<$Res>
    implements $UserCompaniesCopyWith<$Res> {
  _$UserCompaniesCopyWithImpl(this._value, this._then);

  final UserCompanies _value;
  // ignore: unused_field
  final $Res Function(UserCompanies) _then;

  @override
  $Res call({
    Object? current_company = freezed,
  }) {
    return _then(_value.copyWith(
      current_company: current_company == freezed
          ? _value.current_company
          : current_company // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserCompaniesCopyWith<$Res>
    implements $UserCompaniesCopyWith<$Res> {
  factory _$UserCompaniesCopyWith(
          _UserCompanies value, $Res Function(_UserCompanies) then) =
      __$UserCompaniesCopyWithImpl<$Res>;
  @override
  $Res call({int? current_company});
}

/// @nodoc
class __$UserCompaniesCopyWithImpl<$Res>
    extends _$UserCompaniesCopyWithImpl<$Res>
    implements _$UserCompaniesCopyWith<$Res> {
  __$UserCompaniesCopyWithImpl(
      _UserCompanies _value, $Res Function(_UserCompanies) _then)
      : super(_value, (v) => _then(v as _UserCompanies));

  @override
  _UserCompanies get _value => super._value as _UserCompanies;

  @override
  $Res call({
    Object? current_company = freezed,
  }) {
    return _then(_UserCompanies(
      current_company == freezed
          ? _value.current_company
          : current_company // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCompanies implements _UserCompanies {
  const _$_UserCompanies(this.current_company);

  factory _$_UserCompanies.fromJson(Map<String, dynamic> json) =>
      _$$_UserCompaniesFromJson(json);

  @override
  final int? current_company;

  @override
  String toString() {
    return 'UserCompanies(current_company: $current_company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserCompanies &&
            const DeepCollectionEquality()
                .equals(other.current_company, current_company));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(current_company));

  @JsonKey(ignore: true)
  @override
  _$UserCompaniesCopyWith<_UserCompanies> get copyWith =>
      __$UserCompaniesCopyWithImpl<_UserCompanies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCompaniesToJson(this);
  }
}

abstract class _UserCompanies implements UserCompanies {
  const factory _UserCompanies(int? current_company) = _$_UserCompanies;

  factory _UserCompanies.fromJson(Map<String, dynamic> json) =
      _$_UserCompanies.fromJson;

  @override
  int? get current_company;
  @override
  @JsonKey(ignore: true)
  _$UserCompaniesCopyWith<_UserCompanies> get copyWith =>
      throw _privateConstructorUsedError;
}

CacheHashes _$CacheHashesFromJson(Map<String, dynamic> json) {
  return _CacheHashes.fromJson(json);
}

/// @nodoc
class _$CacheHashesTearOff {
  const _$CacheHashesTearOff();

  _CacheHashes call(String? translations, String? load_menus, String? qweb) {
    return _CacheHashes(
      translations,
      load_menus,
      qweb,
    );
  }

  CacheHashes fromJson(Map<String, Object?> json) {
    return CacheHashes.fromJson(json);
  }
}

/// @nodoc
const $CacheHashes = _$CacheHashesTearOff();

/// @nodoc
mixin _$CacheHashes {
  String? get translations => throw _privateConstructorUsedError;
  String? get load_menus => throw _privateConstructorUsedError;
  String? get qweb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CacheHashesCopyWith<CacheHashes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheHashesCopyWith<$Res> {
  factory $CacheHashesCopyWith(
          CacheHashes value, $Res Function(CacheHashes) then) =
      _$CacheHashesCopyWithImpl<$Res>;
  $Res call({String? translations, String? load_menus, String? qweb});
}

/// @nodoc
class _$CacheHashesCopyWithImpl<$Res> implements $CacheHashesCopyWith<$Res> {
  _$CacheHashesCopyWithImpl(this._value, this._then);

  final CacheHashes _value;
  // ignore: unused_field
  final $Res Function(CacheHashes) _then;

  @override
  $Res call({
    Object? translations = freezed,
    Object? load_menus = freezed,
    Object? qweb = freezed,
  }) {
    return _then(_value.copyWith(
      translations: translations == freezed
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as String?,
      load_menus: load_menus == freezed
          ? _value.load_menus
          : load_menus // ignore: cast_nullable_to_non_nullable
              as String?,
      qweb: qweb == freezed
          ? _value.qweb
          : qweb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CacheHashesCopyWith<$Res>
    implements $CacheHashesCopyWith<$Res> {
  factory _$CacheHashesCopyWith(
          _CacheHashes value, $Res Function(_CacheHashes) then) =
      __$CacheHashesCopyWithImpl<$Res>;
  @override
  $Res call({String? translations, String? load_menus, String? qweb});
}

/// @nodoc
class __$CacheHashesCopyWithImpl<$Res> extends _$CacheHashesCopyWithImpl<$Res>
    implements _$CacheHashesCopyWith<$Res> {
  __$CacheHashesCopyWithImpl(
      _CacheHashes _value, $Res Function(_CacheHashes) _then)
      : super(_value, (v) => _then(v as _CacheHashes));

  @override
  _CacheHashes get _value => super._value as _CacheHashes;

  @override
  $Res call({
    Object? translations = freezed,
    Object? load_menus = freezed,
    Object? qweb = freezed,
  }) {
    return _then(_CacheHashes(
      translations == freezed
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as String?,
      load_menus == freezed
          ? _value.load_menus
          : load_menus // ignore: cast_nullable_to_non_nullable
              as String?,
      qweb == freezed
          ? _value.qweb
          : qweb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CacheHashes implements _CacheHashes {
  const _$_CacheHashes(this.translations, this.load_menus, this.qweb);

  factory _$_CacheHashes.fromJson(Map<String, dynamic> json) =>
      _$$_CacheHashesFromJson(json);

  @override
  final String? translations;
  @override
  final String? load_menus;
  @override
  final String? qweb;

  @override
  String toString() {
    return 'CacheHashes(translations: $translations, load_menus: $load_menus, qweb: $qweb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CacheHashes &&
            const DeepCollectionEquality()
                .equals(other.translations, translations) &&
            const DeepCollectionEquality()
                .equals(other.load_menus, load_menus) &&
            const DeepCollectionEquality().equals(other.qweb, qweb));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(translations),
      const DeepCollectionEquality().hash(load_menus),
      const DeepCollectionEquality().hash(qweb));

  @JsonKey(ignore: true)
  @override
  _$CacheHashesCopyWith<_CacheHashes> get copyWith =>
      __$CacheHashesCopyWithImpl<_CacheHashes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CacheHashesToJson(this);
  }
}

abstract class _CacheHashes implements CacheHashes {
  const factory _CacheHashes(
      String? translations, String? load_menus, String? qweb) = _$_CacheHashes;

  factory _CacheHashes.fromJson(Map<String, dynamic> json) =
      _$_CacheHashes.fromJson;

  @override
  String? get translations;
  @override
  String? get load_menus;
  @override
  String? get qweb;
  @override
  @JsonKey(ignore: true)
  _$CacheHashesCopyWith<_CacheHashes> get copyWith =>
      throw _privateConstructorUsedError;
}

UserContext _$UserContextFromJson(Map<String, dynamic> json) {
  return _UserContext.fromJson(json);
}

/// @nodoc
class _$UserContextTearOff {
  const _$UserContextTearOff();

  _UserContext call(String? lang, String? tz, int uid) {
    return _UserContext(
      lang,
      tz,
      uid,
    );
  }

  UserContext fromJson(Map<String, Object?> json) {
    return UserContext.fromJson(json);
  }
}

/// @nodoc
const $UserContext = _$UserContextTearOff();

/// @nodoc
mixin _$UserContext {
  String? get lang => throw _privateConstructorUsedError;
  String? get tz => throw _privateConstructorUsedError;
  int get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserContextCopyWith<UserContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserContextCopyWith<$Res> {
  factory $UserContextCopyWith(
          UserContext value, $Res Function(UserContext) then) =
      _$UserContextCopyWithImpl<$Res>;
  $Res call({String? lang, String? tz, int uid});
}

/// @nodoc
class _$UserContextCopyWithImpl<$Res> implements $UserContextCopyWith<$Res> {
  _$UserContextCopyWithImpl(this._value, this._then);

  final UserContext _value;
  // ignore: unused_field
  final $Res Function(UserContext) _then;

  @override
  $Res call({
    Object? lang = freezed,
    Object? tz = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      tz: tz == freezed
          ? _value.tz
          : tz // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UserContextCopyWith<$Res>
    implements $UserContextCopyWith<$Res> {
  factory _$UserContextCopyWith(
          _UserContext value, $Res Function(_UserContext) then) =
      __$UserContextCopyWithImpl<$Res>;
  @override
  $Res call({String? lang, String? tz, int uid});
}

/// @nodoc
class __$UserContextCopyWithImpl<$Res> extends _$UserContextCopyWithImpl<$Res>
    implements _$UserContextCopyWith<$Res> {
  __$UserContextCopyWithImpl(
      _UserContext _value, $Res Function(_UserContext) _then)
      : super(_value, (v) => _then(v as _UserContext));

  @override
  _UserContext get _value => super._value as _UserContext;

  @override
  $Res call({
    Object? lang = freezed,
    Object? tz = freezed,
    Object? uid = freezed,
  }) {
    return _then(_UserContext(
      lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      tz == freezed
          ? _value.tz
          : tz // ignore: cast_nullable_to_non_nullable
              as String?,
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserContext implements _UserContext {
  const _$_UserContext(this.lang, this.tz, this.uid);

  factory _$_UserContext.fromJson(Map<String, dynamic> json) =>
      _$$_UserContextFromJson(json);

  @override
  final String? lang;
  @override
  final String? tz;
  @override
  final int uid;

  @override
  String toString() {
    return 'UserContext(lang: $lang, tz: $tz, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserContext &&
            const DeepCollectionEquality().equals(other.lang, lang) &&
            const DeepCollectionEquality().equals(other.tz, tz) &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lang),
      const DeepCollectionEquality().hash(tz),
      const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$UserContextCopyWith<_UserContext> get copyWith =>
      __$UserContextCopyWithImpl<_UserContext>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserContextToJson(this);
  }
}

abstract class _UserContext implements UserContext {
  const factory _UserContext(String? lang, String? tz, int uid) =
      _$_UserContext;

  factory _UserContext.fromJson(Map<String, dynamic> json) =
      _$_UserContext.fromJson;

  @override
  String? get lang;
  @override
  String? get tz;
  @override
  int get uid;
  @override
  @JsonKey(ignore: true)
  _$UserContextCopyWith<_UserContext> get copyWith =>
      throw _privateConstructorUsedError;
}
