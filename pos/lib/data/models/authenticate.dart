import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate.freezed.dart';

part 'authenticate.g.dart';

@freezed
class Authenticate with _$Authenticate {
  const factory Authenticate(String? jsonrpc, String? id, Result? result) =
      _Authenticate;

  factory Authenticate.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result(
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
      bool? display_switch_branch_menu) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class UserBranches with _$UserBranches {
  const factory UserBranches(bool? current_branch) = _UserBranches;

  factory UserBranches.fromJson(Map<String, dynamic> json) =>
      _$UserBranchesFromJson(json);
}

@freezed
class UserCompanies with _$UserCompanies {
  const factory UserCompanies(int? current_company) = _UserCompanies;

  factory UserCompanies.fromJson(Map<String, dynamic> json) =>
      _$UserCompaniesFromJson(json);
}

@freezed
class CacheHashes with _$CacheHashes {
  const factory CacheHashes(
      String? translations, String? load_menus, String? qweb) = _CacheHashes;

  factory CacheHashes.fromJson(Map<String, dynamic> json) =>
      _$CacheHashesFromJson(json);
}

@freezed
class UserContext with _$UserContext {
  const factory UserContext(String? lang, String? tz, int uid) = _UserContext;

  factory UserContext.fromJson(Map<String, dynamic> json) =>
      _$UserContextFromJson(json);
}