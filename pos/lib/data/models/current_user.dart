import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_user.freezed.dart';
part 'current_user.g.dart';

@freezed
class CurrentUser with _$CurrentUser {
  const factory CurrentUser({
    required int uid,
    @JsonKey(name: 'is_system') bool? isSystem,
    @JsonKey(name: 'is_admin') bool? isAdmin,
    @JsonKey(name: 'user_context') dynamic userContext,
    String? db,
    @JsonKey(name: 'server_version') String? serverVersion,
    @JsonKey(name: 'server_version_info') List<dynamic>? serverVersionInfo,
    @JsonKey(name: 'support_url') String? supportUrl,
    required String name,
    required String username,
    @JsonKey(name: 'partner_display_name') String? partnerDisplayName,
    @JsonKey(name: 'company_id') int? companyId,
    @JsonKey(name: 'branch_id') int? branchId,
    @JsonKey(name: 'partner_id') int? partnerId,
    @JsonKey(name: 'web.base.url') String? webBaseUrl,
    @JsonKey(name: 'active_ids_limit') int? activeIdsLimit,
    @JsonKey(name: 'profile_session') dynamic profileSession,
    @JsonKey(name: 'profile_collectors') dynamic profileCollectors,
    @JsonKey(name: 'profile_params') dynamic profileParams,
    @JsonKey(name: 'max_file_upload_size') int? maxFileUploadSize,
    @JsonKey(name: 'home_action_id') dynamic homeActionId,
    @JsonKey(name: 'cache_hashes') dynamic cacheHashes,
    Map<int, Map<dynamic, dynamic>?>? currencies,
    @JsonKey(name: 'user_companies') Map<String, dynamic>? userCompanies,
    @JsonKey(name: 'user_branches') Map<String, dynamic>? userBranches,
    @JsonKey(name: 'show_effect') bool? showEffect,
    @JsonKey(name: 'display_switch_company_menu')
        bool? displaySwitchCompanyMenu,
    @JsonKey(name: 'display_switch_branch_menu') bool? displaySwitchBranchMenu,
  }) = _CurrentUser;
  factory CurrentUser.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserFromJson(json);
}
