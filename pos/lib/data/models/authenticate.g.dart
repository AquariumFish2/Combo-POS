// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Authenticate _$$_AuthenticateFromJson(Map<String, dynamic> json) =>
    _$_Authenticate(
      json['jsonrpc'] as String?,
      json['id'] as String?,
      json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthenticateToJson(_$_Authenticate instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      json['uid'] as int?,
      json['is_system'] as bool?,
      json['is_admin'] as bool?,
      json['user_context'] == null
          ? null
          : UserContext.fromJson(json['user_context'] as Map<String, dynamic>),
      json['db'] as String?,
      json['server_version'] as String?,
      json['server_version_info'] as List<dynamic>,
      json['support_url'] as String?,
      json['name'] as String?,
      json['username'] as String?,
      json['partner_display_name'] as String?,
      json['company_id'] as int?,
      json['branch_id'] as bool?,
      json['partner_id'] as int?,
      json['active_ids_limit'] as int?,
      json['profile_session'] as String?,
      json['profile_collectors'] as String?,
      json['profile_params'] as String?,
      json['max_file_upload_size'] as int?,
      json['home_action_id'] as bool?,
      json['cache_hashes'] == null
          ? null
          : CacheHashes.fromJson(json['cache_hashes'] as Map<String, dynamic>),
      json['user_companies'] == null
          ? null
          : UserCompanies.fromJson(
              json['user_companies'] as Map<String, dynamic>),
      json['user_branches'] == null
          ? null
          : UserBranches.fromJson(
              json['user_branches'] as Map<String, dynamic>),
      json['show_effect'] as bool?,
      json['display_switch_company_menu'] as bool?,
      json['display_switch_branch_menu'] as bool?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'uid': instance.uid,
      'is_system': instance.is_system,
      'is_admin': instance.is_admin,
      'user_context': instance.user_context,
      'db': instance.db,
      'server_version': instance.server_version,
      'server_version_info': instance.server_version_info,
      'support_url': instance.support_url,
      'name': instance.name,
      'username': instance.username,
      'partner_display_name': instance.partner_display_name,
      'company_id': instance.company_id,
      'branch_id': instance.branch_id,
      'partner_id': instance.partner_id,
      'active_ids_limit': instance.active_ids_limit,
      'profile_session': instance.profile_session,
      'profile_collectors': instance.profile_collectors,
      'profile_params': instance.profile_params,
      'max_file_upload_size': instance.max_file_upload_size,
      'home_action_id': instance.home_action_id,
      'cache_hashes': instance.cache_hashes,
      'user_companies': instance.user_companies,
      'user_branches': instance.user_branches,
      'show_effect': instance.show_effect,
      'display_switch_company_menu': instance.display_switch_company_menu,
      'display_switch_branch_menu': instance.display_switch_branch_menu,
    };

_$_UserBranches _$$_UserBranchesFromJson(Map<String, dynamic> json) =>
    _$_UserBranches(
      json['current_branch'] as bool?,
    );

Map<String, dynamic> _$$_UserBranchesToJson(_$_UserBranches instance) =>
    <String, dynamic>{
      'current_branch': instance.current_branch,
    };

_$_UserCompanies _$$_UserCompaniesFromJson(Map<String, dynamic> json) =>
    _$_UserCompanies(
      json['current_company'] as int?,
    );

Map<String, dynamic> _$$_UserCompaniesToJson(_$_UserCompanies instance) =>
    <String, dynamic>{
      'current_company': instance.current_company,
    };

_$_CacheHashes _$$_CacheHashesFromJson(Map<String, dynamic> json) =>
    _$_CacheHashes(
      json['translations'] as String?,
      json['load_menus'] as String?,
      json['qweb'] as String?,
    );

Map<String, dynamic> _$$_CacheHashesToJson(_$_CacheHashes instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'load_menus': instance.load_menus,
      'qweb': instance.qweb,
    };

_$_UserContext _$$_UserContextFromJson(Map<String, dynamic> json) =>
    _$_UserContext(
      json['lang'] as String?,
      json['tz'] as String?,
      json['uid'] as int,
    );

Map<String, dynamic> _$$_UserContextToJson(_$_UserContext instance) =>
    <String, dynamic>{
      'lang': instance.lang,
      'tz': instance.tz,
      'uid': instance.uid,
    };
