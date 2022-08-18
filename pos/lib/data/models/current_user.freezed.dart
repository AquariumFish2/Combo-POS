// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentUser _$CurrentUserFromJson(Map<String, dynamic> json) {
  return _CurrentUser.fromJson(json);
}

/// @nodoc
class _$CurrentUserTearOff {
  const _$CurrentUserTearOff();

  _CurrentUser call(
      {required int uid,
      @JsonKey(name: 'is_system')
          bool? isSystem,
      @JsonKey(name: 'is_admin')
          bool? isAdmin,
      @JsonKey(name: 'user_context')
          dynamic userContext,
      String? db,
      @JsonKey(name: 'server_version')
          String? serverVersion,
      @JsonKey(name: 'server_version_info')
          List<dynamic>? serverVersionInfo,
      @JsonKey(name: 'support_url')
          String? supportUrl,
      required String name,
      required String username,
      @JsonKey(name: 'partner_display_name')
          String? partnerDisplayName,
      @JsonKey(name: 'company_id')
          int? companyId,
      @JsonKey(name: 'branch_id')
          int? branchId,
      @JsonKey(name: 'partner_id')
          int? partnerId,
      @JsonKey(name: 'web.base.url')
          String? webBaseUrl,
      @JsonKey(name: 'active_ids_limit')
          int? activeIdsLimit,
      @JsonKey(name: 'profile_session')
          dynamic profileSession,
      @JsonKey(name: 'profile_collectors')
          dynamic profileCollectors,
      @JsonKey(name: 'profile_params')
          dynamic profileParams,
      @JsonKey(name: 'max_file_upload_size')
          int? maxFileUploadSize,
      @JsonKey(name: 'home_action_id')
          dynamic homeActionId,
      @JsonKey(name: 'cache_hashes')
          dynamic cacheHashes,
      Map<int, Map<dynamic, dynamic>?>? currencies,
      @JsonKey(name: 'user_companies')
          Map<String, dynamic>? userCompanies,
      @JsonKey(name: 'user_branches')
          Map<String, dynamic>? userBranches,
      @JsonKey(name: 'show_effect')
          bool? showEffect,
      @JsonKey(name: 'display_switch_company_menu')
          bool? displaySwitchCompanyMenu,
      @JsonKey(name: 'display_switch_branch_menu')
          bool? displaySwitchBranchMenu}) {
    return _CurrentUser(
      uid: uid,
      isSystem: isSystem,
      isAdmin: isAdmin,
      userContext: userContext,
      db: db,
      serverVersion: serverVersion,
      serverVersionInfo: serverVersionInfo,
      supportUrl: supportUrl,
      name: name,
      username: username,
      partnerDisplayName: partnerDisplayName,
      companyId: companyId,
      branchId: branchId,
      partnerId: partnerId,
      webBaseUrl: webBaseUrl,
      activeIdsLimit: activeIdsLimit,
      profileSession: profileSession,
      profileCollectors: profileCollectors,
      profileParams: profileParams,
      maxFileUploadSize: maxFileUploadSize,
      homeActionId: homeActionId,
      cacheHashes: cacheHashes,
      currencies: currencies,
      userCompanies: userCompanies,
      userBranches: userBranches,
      showEffect: showEffect,
      displaySwitchCompanyMenu: displaySwitchCompanyMenu,
      displaySwitchBranchMenu: displaySwitchBranchMenu,
    );
  }

  CurrentUser fromJson(Map<String, Object?> json) {
    return CurrentUser.fromJson(json);
  }
}

/// @nodoc
const $CurrentUser = _$CurrentUserTearOff();

/// @nodoc
mixin _$CurrentUser {
  int get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_system')
  bool? get isSystem => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin')
  bool? get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_context')
  dynamic get userContext => throw _privateConstructorUsedError;
  String? get db => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_version')
  String? get serverVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_version_info')
  List<dynamic>? get serverVersionInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'support_url')
  String? get supportUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'partner_display_name')
  String? get partnerDisplayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch_id')
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'partner_id')
  int? get partnerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'web.base.url')
  String? get webBaseUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_ids_limit')
  int? get activeIdsLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_session')
  dynamic get profileSession => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_collectors')
  dynamic get profileCollectors => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_params')
  dynamic get profileParams => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_file_upload_size')
  int? get maxFileUploadSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'home_action_id')
  dynamic get homeActionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'cache_hashes')
  dynamic get cacheHashes => throw _privateConstructorUsedError;
  Map<int, Map<dynamic, dynamic>?>? get currencies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'user_companies')
  Map<String, dynamic>? get userCompanies => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_branches')
  Map<String, dynamic>? get userBranches => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_effect')
  bool? get showEffect => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_switch_company_menu')
  bool? get displaySwitchCompanyMenu => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_switch_branch_menu')
  bool? get displaySwitchBranchMenu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUserCopyWith<CurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserCopyWith<$Res> {
  factory $CurrentUserCopyWith(
          CurrentUser value, $Res Function(CurrentUser) then) =
      _$CurrentUserCopyWithImpl<$Res>;
  $Res call(
      {int uid,
      @JsonKey(name: 'is_system')
          bool? isSystem,
      @JsonKey(name: 'is_admin')
          bool? isAdmin,
      @JsonKey(name: 'user_context')
          dynamic userContext,
      String? db,
      @JsonKey(name: 'server_version')
          String? serverVersion,
      @JsonKey(name: 'server_version_info')
          List<dynamic>? serverVersionInfo,
      @JsonKey(name: 'support_url')
          String? supportUrl,
      String name,
      String username,
      @JsonKey(name: 'partner_display_name')
          String? partnerDisplayName,
      @JsonKey(name: 'company_id')
          int? companyId,
      @JsonKey(name: 'branch_id')
          int? branchId,
      @JsonKey(name: 'partner_id')
          int? partnerId,
      @JsonKey(name: 'web.base.url')
          String? webBaseUrl,
      @JsonKey(name: 'active_ids_limit')
          int? activeIdsLimit,
      @JsonKey(name: 'profile_session')
          dynamic profileSession,
      @JsonKey(name: 'profile_collectors')
          dynamic profileCollectors,
      @JsonKey(name: 'profile_params')
          dynamic profileParams,
      @JsonKey(name: 'max_file_upload_size')
          int? maxFileUploadSize,
      @JsonKey(name: 'home_action_id')
          dynamic homeActionId,
      @JsonKey(name: 'cache_hashes')
          dynamic cacheHashes,
      Map<int, Map<dynamic, dynamic>?>? currencies,
      @JsonKey(name: 'user_companies')
          Map<String, dynamic>? userCompanies,
      @JsonKey(name: 'user_branches')
          Map<String, dynamic>? userBranches,
      @JsonKey(name: 'show_effect')
          bool? showEffect,
      @JsonKey(name: 'display_switch_company_menu')
          bool? displaySwitchCompanyMenu,
      @JsonKey(name: 'display_switch_branch_menu')
          bool? displaySwitchBranchMenu});
}

/// @nodoc
class _$CurrentUserCopyWithImpl<$Res> implements $CurrentUserCopyWith<$Res> {
  _$CurrentUserCopyWithImpl(this._value, this._then);

  final CurrentUser _value;
  // ignore: unused_field
  final $Res Function(CurrentUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? isSystem = freezed,
    Object? isAdmin = freezed,
    Object? userContext = freezed,
    Object? db = freezed,
    Object? serverVersion = freezed,
    Object? serverVersionInfo = freezed,
    Object? supportUrl = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? partnerDisplayName = freezed,
    Object? companyId = freezed,
    Object? branchId = freezed,
    Object? partnerId = freezed,
    Object? webBaseUrl = freezed,
    Object? activeIdsLimit = freezed,
    Object? profileSession = freezed,
    Object? profileCollectors = freezed,
    Object? profileParams = freezed,
    Object? maxFileUploadSize = freezed,
    Object? homeActionId = freezed,
    Object? cacheHashes = freezed,
    Object? currencies = freezed,
    Object? userCompanies = freezed,
    Object? userBranches = freezed,
    Object? showEffect = freezed,
    Object? displaySwitchCompanyMenu = freezed,
    Object? displaySwitchBranchMenu = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      isSystem: isSystem == freezed
          ? _value.isSystem
          : isSystem // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      userContext: userContext == freezed
          ? _value.userContext
          : userContext // ignore: cast_nullable_to_non_nullable
              as dynamic,
      db: db == freezed
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as String?,
      serverVersion: serverVersion == freezed
          ? _value.serverVersion
          : serverVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      serverVersionInfo: serverVersionInfo == freezed
          ? _value.serverVersionInfo
          : serverVersionInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      supportUrl: supportUrl == freezed
          ? _value.supportUrl
          : supportUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      partnerDisplayName: partnerDisplayName == freezed
          ? _value.partnerDisplayName
          : partnerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerId: partnerId == freezed
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int?,
      webBaseUrl: webBaseUrl == freezed
          ? _value.webBaseUrl
          : webBaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      activeIdsLimit: activeIdsLimit == freezed
          ? _value.activeIdsLimit
          : activeIdsLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      profileSession: profileSession == freezed
          ? _value.profileSession
          : profileSession // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileCollectors: profileCollectors == freezed
          ? _value.profileCollectors
          : profileCollectors // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileParams: profileParams == freezed
          ? _value.profileParams
          : profileParams // ignore: cast_nullable_to_non_nullable
              as dynamic,
      maxFileUploadSize: maxFileUploadSize == freezed
          ? _value.maxFileUploadSize
          : maxFileUploadSize // ignore: cast_nullable_to_non_nullable
              as int?,
      homeActionId: homeActionId == freezed
          ? _value.homeActionId
          : homeActionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cacheHashes: cacheHashes == freezed
          ? _value.cacheHashes
          : cacheHashes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<int, Map<dynamic, dynamic>?>?,
      userCompanies: userCompanies == freezed
          ? _value.userCompanies
          : userCompanies // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      userBranches: userBranches == freezed
          ? _value.userBranches
          : userBranches // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      showEffect: showEffect == freezed
          ? _value.showEffect
          : showEffect // ignore: cast_nullable_to_non_nullable
              as bool?,
      displaySwitchCompanyMenu: displaySwitchCompanyMenu == freezed
          ? _value.displaySwitchCompanyMenu
          : displaySwitchCompanyMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
      displaySwitchBranchMenu: displaySwitchBranchMenu == freezed
          ? _value.displaySwitchBranchMenu
          : displaySwitchBranchMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$CurrentUserCopyWith<$Res>
    implements $CurrentUserCopyWith<$Res> {
  factory _$CurrentUserCopyWith(
          _CurrentUser value, $Res Function(_CurrentUser) then) =
      __$CurrentUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int uid,
      @JsonKey(name: 'is_system')
          bool? isSystem,
      @JsonKey(name: 'is_admin')
          bool? isAdmin,
      @JsonKey(name: 'user_context')
          dynamic userContext,
      String? db,
      @JsonKey(name: 'server_version')
          String? serverVersion,
      @JsonKey(name: 'server_version_info')
          List<dynamic>? serverVersionInfo,
      @JsonKey(name: 'support_url')
          String? supportUrl,
      String name,
      String username,
      @JsonKey(name: 'partner_display_name')
          String? partnerDisplayName,
      @JsonKey(name: 'company_id')
          int? companyId,
      @JsonKey(name: 'branch_id')
          int? branchId,
      @JsonKey(name: 'partner_id')
          int? partnerId,
      @JsonKey(name: 'web.base.url')
          String? webBaseUrl,
      @JsonKey(name: 'active_ids_limit')
          int? activeIdsLimit,
      @JsonKey(name: 'profile_session')
          dynamic profileSession,
      @JsonKey(name: 'profile_collectors')
          dynamic profileCollectors,
      @JsonKey(name: 'profile_params')
          dynamic profileParams,
      @JsonKey(name: 'max_file_upload_size')
          int? maxFileUploadSize,
      @JsonKey(name: 'home_action_id')
          dynamic homeActionId,
      @JsonKey(name: 'cache_hashes')
          dynamic cacheHashes,
      Map<int, Map<dynamic, dynamic>?>? currencies,
      @JsonKey(name: 'user_companies')
          Map<String, dynamic>? userCompanies,
      @JsonKey(name: 'user_branches')
          Map<String, dynamic>? userBranches,
      @JsonKey(name: 'show_effect')
          bool? showEffect,
      @JsonKey(name: 'display_switch_company_menu')
          bool? displaySwitchCompanyMenu,
      @JsonKey(name: 'display_switch_branch_menu')
          bool? displaySwitchBranchMenu});
}

/// @nodoc
class __$CurrentUserCopyWithImpl<$Res> extends _$CurrentUserCopyWithImpl<$Res>
    implements _$CurrentUserCopyWith<$Res> {
  __$CurrentUserCopyWithImpl(
      _CurrentUser _value, $Res Function(_CurrentUser) _then)
      : super(_value, (v) => _then(v as _CurrentUser));

  @override
  _CurrentUser get _value => super._value as _CurrentUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? isSystem = freezed,
    Object? isAdmin = freezed,
    Object? userContext = freezed,
    Object? db = freezed,
    Object? serverVersion = freezed,
    Object? serverVersionInfo = freezed,
    Object? supportUrl = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? partnerDisplayName = freezed,
    Object? companyId = freezed,
    Object? branchId = freezed,
    Object? partnerId = freezed,
    Object? webBaseUrl = freezed,
    Object? activeIdsLimit = freezed,
    Object? profileSession = freezed,
    Object? profileCollectors = freezed,
    Object? profileParams = freezed,
    Object? maxFileUploadSize = freezed,
    Object? homeActionId = freezed,
    Object? cacheHashes = freezed,
    Object? currencies = freezed,
    Object? userCompanies = freezed,
    Object? userBranches = freezed,
    Object? showEffect = freezed,
    Object? displaySwitchCompanyMenu = freezed,
    Object? displaySwitchBranchMenu = freezed,
  }) {
    return _then(_CurrentUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      isSystem: isSystem == freezed
          ? _value.isSystem
          : isSystem // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      userContext: userContext == freezed
          ? _value.userContext
          : userContext // ignore: cast_nullable_to_non_nullable
              as dynamic,
      db: db == freezed
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as String?,
      serverVersion: serverVersion == freezed
          ? _value.serverVersion
          : serverVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      serverVersionInfo: serverVersionInfo == freezed
          ? _value.serverVersionInfo
          : serverVersionInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      supportUrl: supportUrl == freezed
          ? _value.supportUrl
          : supportUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      partnerDisplayName: partnerDisplayName == freezed
          ? _value.partnerDisplayName
          : partnerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerId: partnerId == freezed
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int?,
      webBaseUrl: webBaseUrl == freezed
          ? _value.webBaseUrl
          : webBaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      activeIdsLimit: activeIdsLimit == freezed
          ? _value.activeIdsLimit
          : activeIdsLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      profileSession: profileSession == freezed
          ? _value.profileSession
          : profileSession // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileCollectors: profileCollectors == freezed
          ? _value.profileCollectors
          : profileCollectors // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileParams: profileParams == freezed
          ? _value.profileParams
          : profileParams // ignore: cast_nullable_to_non_nullable
              as dynamic,
      maxFileUploadSize: maxFileUploadSize == freezed
          ? _value.maxFileUploadSize
          : maxFileUploadSize // ignore: cast_nullable_to_non_nullable
              as int?,
      homeActionId: homeActionId == freezed
          ? _value.homeActionId
          : homeActionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cacheHashes: cacheHashes == freezed
          ? _value.cacheHashes
          : cacheHashes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<int, Map<dynamic, dynamic>?>?,
      userCompanies: userCompanies == freezed
          ? _value.userCompanies
          : userCompanies // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      userBranches: userBranches == freezed
          ? _value.userBranches
          : userBranches // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      showEffect: showEffect == freezed
          ? _value.showEffect
          : showEffect // ignore: cast_nullable_to_non_nullable
              as bool?,
      displaySwitchCompanyMenu: displaySwitchCompanyMenu == freezed
          ? _value.displaySwitchCompanyMenu
          : displaySwitchCompanyMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
      displaySwitchBranchMenu: displaySwitchBranchMenu == freezed
          ? _value.displaySwitchBranchMenu
          : displaySwitchBranchMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentUser implements _CurrentUser {
  const _$_CurrentUser(
      {required this.uid,
      @JsonKey(name: 'is_system')
          this.isSystem,
      @JsonKey(name: 'is_admin')
          this.isAdmin,
      @JsonKey(name: 'user_context')
          this.userContext,
      this.db,
      @JsonKey(name: 'server_version')
          this.serverVersion,
      @JsonKey(name: 'server_version_info')
          this.serverVersionInfo,
      @JsonKey(name: 'support_url')
          this.supportUrl,
      required this.name,
      required this.username,
      @JsonKey(name: 'partner_display_name')
          this.partnerDisplayName,
      @JsonKey(name: 'company_id')
          this.companyId,
      @JsonKey(name: 'branch_id')
          this.branchId,
      @JsonKey(name: 'partner_id')
          this.partnerId,
      @JsonKey(name: 'web.base.url')
          this.webBaseUrl,
      @JsonKey(name: 'active_ids_limit')
          this.activeIdsLimit,
      @JsonKey(name: 'profile_session')
          this.profileSession,
      @JsonKey(name: 'profile_collectors')
          this.profileCollectors,
      @JsonKey(name: 'profile_params')
          this.profileParams,
      @JsonKey(name: 'max_file_upload_size')
          this.maxFileUploadSize,
      @JsonKey(name: 'home_action_id')
          this.homeActionId,
      @JsonKey(name: 'cache_hashes')
          this.cacheHashes,
      this.currencies,
      @JsonKey(name: 'user_companies')
          this.userCompanies,
      @JsonKey(name: 'user_branches')
          this.userBranches,
      @JsonKey(name: 'show_effect')
          this.showEffect,
      @JsonKey(name: 'display_switch_company_menu')
          this.displaySwitchCompanyMenu,
      @JsonKey(name: 'display_switch_branch_menu')
          this.displaySwitchBranchMenu});

  factory _$_CurrentUser.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentUserFromJson(json);

  @override
  final int uid;
  @override
  @JsonKey(name: 'is_system')
  final bool? isSystem;
  @override
  @JsonKey(name: 'is_admin')
  final bool? isAdmin;
  @override
  @JsonKey(name: 'user_context')
  final dynamic userContext;
  @override
  final String? db;
  @override
  @JsonKey(name: 'server_version')
  final String? serverVersion;
  @override
  @JsonKey(name: 'server_version_info')
  final List<dynamic>? serverVersionInfo;
  @override
  @JsonKey(name: 'support_url')
  final String? supportUrl;
  @override
  final String name;
  @override
  final String username;
  @override
  @JsonKey(name: 'partner_display_name')
  final String? partnerDisplayName;
  @override
  @JsonKey(name: 'company_id')
  final int? companyId;
  @override
  @JsonKey(name: 'branch_id')
  final int? branchId;
  @override
  @JsonKey(name: 'partner_id')
  final int? partnerId;
  @override
  @JsonKey(name: 'web.base.url')
  final String? webBaseUrl;
  @override
  @JsonKey(name: 'active_ids_limit')
  final int? activeIdsLimit;
  @override
  @JsonKey(name: 'profile_session')
  final dynamic profileSession;
  @override
  @JsonKey(name: 'profile_collectors')
  final dynamic profileCollectors;
  @override
  @JsonKey(name: 'profile_params')
  final dynamic profileParams;
  @override
  @JsonKey(name: 'max_file_upload_size')
  final int? maxFileUploadSize;
  @override
  @JsonKey(name: 'home_action_id')
  final dynamic homeActionId;
  @override
  @JsonKey(name: 'cache_hashes')
  final dynamic cacheHashes;
  @override
  final Map<int, Map<dynamic, dynamic>?>? currencies;
  @override
  @JsonKey(name: 'user_companies')
  final Map<String, dynamic>? userCompanies;
  @override
  @JsonKey(name: 'user_branches')
  final Map<String, dynamic>? userBranches;
  @override
  @JsonKey(name: 'show_effect')
  final bool? showEffect;
  @override
  @JsonKey(name: 'display_switch_company_menu')
  final bool? displaySwitchCompanyMenu;
  @override
  @JsonKey(name: 'display_switch_branch_menu')
  final bool? displaySwitchBranchMenu;

  @override
  String toString() {
    return 'CurrentUser(uid: $uid, isSystem: $isSystem, isAdmin: $isAdmin, userContext: $userContext, db: $db, serverVersion: $serverVersion, serverVersionInfo: $serverVersionInfo, supportUrl: $supportUrl, name: $name, username: $username, partnerDisplayName: $partnerDisplayName, companyId: $companyId, branchId: $branchId, partnerId: $partnerId, webBaseUrl: $webBaseUrl, activeIdsLimit: $activeIdsLimit, profileSession: $profileSession, profileCollectors: $profileCollectors, profileParams: $profileParams, maxFileUploadSize: $maxFileUploadSize, homeActionId: $homeActionId, cacheHashes: $cacheHashes, currencies: $currencies, userCompanies: $userCompanies, userBranches: $userBranches, showEffect: $showEffect, displaySwitchCompanyMenu: $displaySwitchCompanyMenu, displaySwitchBranchMenu: $displaySwitchBranchMenu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.isSystem, isSystem) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin) &&
            const DeepCollectionEquality()
                .equals(other.userContext, userContext) &&
            const DeepCollectionEquality().equals(other.db, db) &&
            const DeepCollectionEquality()
                .equals(other.serverVersion, serverVersion) &&
            const DeepCollectionEquality()
                .equals(other.serverVersionInfo, serverVersionInfo) &&
            const DeepCollectionEquality()
                .equals(other.supportUrl, supportUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.partnerDisplayName, partnerDisplayName) &&
            const DeepCollectionEquality().equals(other.companyId, companyId) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.partnerId, partnerId) &&
            const DeepCollectionEquality()
                .equals(other.webBaseUrl, webBaseUrl) &&
            const DeepCollectionEquality()
                .equals(other.activeIdsLimit, activeIdsLimit) &&
            const DeepCollectionEquality()
                .equals(other.profileSession, profileSession) &&
            const DeepCollectionEquality()
                .equals(other.profileCollectors, profileCollectors) &&
            const DeepCollectionEquality()
                .equals(other.profileParams, profileParams) &&
            const DeepCollectionEquality()
                .equals(other.maxFileUploadSize, maxFileUploadSize) &&
            const DeepCollectionEquality()
                .equals(other.homeActionId, homeActionId) &&
            const DeepCollectionEquality()
                .equals(other.cacheHashes, cacheHashes) &&
            const DeepCollectionEquality()
                .equals(other.currencies, currencies) &&
            const DeepCollectionEquality()
                .equals(other.userCompanies, userCompanies) &&
            const DeepCollectionEquality()
                .equals(other.userBranches, userBranches) &&
            const DeepCollectionEquality()
                .equals(other.showEffect, showEffect) &&
            const DeepCollectionEquality().equals(
                other.displaySwitchCompanyMenu, displaySwitchCompanyMenu) &&
            const DeepCollectionEquality().equals(
                other.displaySwitchBranchMenu, displaySwitchBranchMenu));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(uid),
        const DeepCollectionEquality().hash(isSystem),
        const DeepCollectionEquality().hash(isAdmin),
        const DeepCollectionEquality().hash(userContext),
        const DeepCollectionEquality().hash(db),
        const DeepCollectionEquality().hash(serverVersion),
        const DeepCollectionEquality().hash(serverVersionInfo),
        const DeepCollectionEquality().hash(supportUrl),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(partnerDisplayName),
        const DeepCollectionEquality().hash(companyId),
        const DeepCollectionEquality().hash(branchId),
        const DeepCollectionEquality().hash(partnerId),
        const DeepCollectionEquality().hash(webBaseUrl),
        const DeepCollectionEquality().hash(activeIdsLimit),
        const DeepCollectionEquality().hash(profileSession),
        const DeepCollectionEquality().hash(profileCollectors),
        const DeepCollectionEquality().hash(profileParams),
        const DeepCollectionEquality().hash(maxFileUploadSize),
        const DeepCollectionEquality().hash(homeActionId),
        const DeepCollectionEquality().hash(cacheHashes),
        const DeepCollectionEquality().hash(currencies),
        const DeepCollectionEquality().hash(userCompanies),
        const DeepCollectionEquality().hash(userBranches),
        const DeepCollectionEquality().hash(showEffect),
        const DeepCollectionEquality().hash(displaySwitchCompanyMenu),
        const DeepCollectionEquality().hash(displaySwitchBranchMenu)
      ]);

  @JsonKey(ignore: true)
  @override
  _$CurrentUserCopyWith<_CurrentUser> get copyWith =>
      __$CurrentUserCopyWithImpl<_CurrentUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentUserToJson(this);
  }
}

abstract class _CurrentUser implements CurrentUser {
  const factory _CurrentUser(
      {required int uid,
      @JsonKey(name: 'is_system')
          bool? isSystem,
      @JsonKey(name: 'is_admin')
          bool? isAdmin,
      @JsonKey(name: 'user_context')
          dynamic userContext,
      String? db,
      @JsonKey(name: 'server_version')
          String? serverVersion,
      @JsonKey(name: 'server_version_info')
          List<dynamic>? serverVersionInfo,
      @JsonKey(name: 'support_url')
          String? supportUrl,
      required String name,
      required String username,
      @JsonKey(name: 'partner_display_name')
          String? partnerDisplayName,
      @JsonKey(name: 'company_id')
          int? companyId,
      @JsonKey(name: 'branch_id')
          int? branchId,
      @JsonKey(name: 'partner_id')
          int? partnerId,
      @JsonKey(name: 'web.base.url')
          String? webBaseUrl,
      @JsonKey(name: 'active_ids_limit')
          int? activeIdsLimit,
      @JsonKey(name: 'profile_session')
          dynamic profileSession,
      @JsonKey(name: 'profile_collectors')
          dynamic profileCollectors,
      @JsonKey(name: 'profile_params')
          dynamic profileParams,
      @JsonKey(name: 'max_file_upload_size')
          int? maxFileUploadSize,
      @JsonKey(name: 'home_action_id')
          dynamic homeActionId,
      @JsonKey(name: 'cache_hashes')
          dynamic cacheHashes,
      Map<int, Map<dynamic, dynamic>?>? currencies,
      @JsonKey(name: 'user_companies')
          Map<String, dynamic>? userCompanies,
      @JsonKey(name: 'user_branches')
          Map<String, dynamic>? userBranches,
      @JsonKey(name: 'show_effect')
          bool? showEffect,
      @JsonKey(name: 'display_switch_company_menu')
          bool? displaySwitchCompanyMenu,
      @JsonKey(name: 'display_switch_branch_menu')
          bool? displaySwitchBranchMenu}) = _$_CurrentUser;

  factory _CurrentUser.fromJson(Map<String, dynamic> json) =
      _$_CurrentUser.fromJson;

  @override
  int get uid;
  @override
  @JsonKey(name: 'is_system')
  bool? get isSystem;
  @override
  @JsonKey(name: 'is_admin')
  bool? get isAdmin;
  @override
  @JsonKey(name: 'user_context')
  dynamic get userContext;
  @override
  String? get db;
  @override
  @JsonKey(name: 'server_version')
  String? get serverVersion;
  @override
  @JsonKey(name: 'server_version_info')
  List<dynamic>? get serverVersionInfo;
  @override
  @JsonKey(name: 'support_url')
  String? get supportUrl;
  @override
  String get name;
  @override
  String get username;
  @override
  @JsonKey(name: 'partner_display_name')
  String? get partnerDisplayName;
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @override
  @JsonKey(name: 'branch_id')
  int? get branchId;
  @override
  @JsonKey(name: 'partner_id')
  int? get partnerId;
  @override
  @JsonKey(name: 'web.base.url')
  String? get webBaseUrl;
  @override
  @JsonKey(name: 'active_ids_limit')
  int? get activeIdsLimit;
  @override
  @JsonKey(name: 'profile_session')
  dynamic get profileSession;
  @override
  @JsonKey(name: 'profile_collectors')
  dynamic get profileCollectors;
  @override
  @JsonKey(name: 'profile_params')
  dynamic get profileParams;
  @override
  @JsonKey(name: 'max_file_upload_size')
  int? get maxFileUploadSize;
  @override
  @JsonKey(name: 'home_action_id')
  dynamic get homeActionId;
  @override
  @JsonKey(name: 'cache_hashes')
  dynamic get cacheHashes;
  @override
  Map<int, Map<dynamic, dynamic>?>? get currencies;
  @override
  @JsonKey(name: 'user_companies')
  Map<String, dynamic>? get userCompanies;
  @override
  @JsonKey(name: 'user_branches')
  Map<String, dynamic>? get userBranches;
  @override
  @JsonKey(name: 'show_effect')
  bool? get showEffect;
  @override
  @JsonKey(name: 'display_switch_company_menu')
  bool? get displaySwitchCompanyMenu;
  @override
  @JsonKey(name: 'display_switch_branch_menu')
  bool? get displaySwitchBranchMenu;
  @override
  @JsonKey(ignore: true)
  _$CurrentUserCopyWith<_CurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}
