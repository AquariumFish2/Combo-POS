// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentUser _$$_CurrentUserFromJson(Map<String, dynamic> json) =>
    _$_CurrentUser(
      uid: json['uid'] as int,
      isSystem: json['is_system'] as bool?,
      isAdmin: json['is_admin'] as bool?,
      userContext: json['user_context'],
      db: json['db'] as String?,
      serverVersion: json['server_version'] as String?,
      serverVersionInfo: json['server_version_info'] as List<dynamic>?,
      supportUrl: json['support_url'] as String?,
      name: json['name'] as String,
      username: json['username'] as String,
      partnerDisplayName: json['partner_display_name'] as String?,
      companyId: json['company_id'] as int?,
      branchId: json['branch_id'] as int?,
      partnerId: json['partner_id'] as int?,
      webBaseUrl: json['web.base.url'] as String?,
      activeIdsLimit: json['active_ids_limit'] as int?,
      profileSession: json['profile_session'],
      profileCollectors: json['profile_collectors'],
      profileParams: json['profile_params'],
      maxFileUploadSize: json['max_file_upload_size'] as int?,
      homeActionId: json['home_action_id'],
      cacheHashes: json['cache_hashes'],
      currencies: (json['currencies'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as Map<String, dynamic>?),
      ),
      userCompanies: json['user_companies'] as Map<String, dynamic>?,
      userBranches: json['user_branches'] as Map<String, dynamic>?,
      showEffect: json['show_effect'] as bool?,
      displaySwitchCompanyMenu: json['display_switch_company_menu'] as bool?,
      displaySwitchBranchMenu: json['display_switch_branch_menu'] as bool?,
    );

Map<String, dynamic> _$$_CurrentUserToJson(_$_CurrentUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'is_system': instance.isSystem,
      'is_admin': instance.isAdmin,
      'user_context': instance.userContext,
      'db': instance.db,
      'server_version': instance.serverVersion,
      'server_version_info': instance.serverVersionInfo,
      'support_url': instance.supportUrl,
      'name': instance.name,
      'username': instance.username,
      'partner_display_name': instance.partnerDisplayName,
      'company_id': instance.companyId,
      'branch_id': instance.branchId,
      'partner_id': instance.partnerId,
      'web.base.url': instance.webBaseUrl,
      'active_ids_limit': instance.activeIdsLimit,
      'profile_session': instance.profileSession,
      'profile_collectors': instance.profileCollectors,
      'profile_params': instance.profileParams,
      'max_file_upload_size': instance.maxFileUploadSize,
      'home_action_id': instance.homeActionId,
      'cache_hashes': instance.cacheHashes,
      'currencies':
          instance.currencies?.map((k, e) => MapEntry(k.toString(), e)),
      'user_companies': instance.userCompanies,
      'user_branches': instance.userBranches,
      'show_effect': instance.showEffect,
      'display_switch_company_menu': instance.displaySwitchCompanyMenu,
      'display_switch_branch_menu': instance.displaySwitchBranchMenu,
    };
