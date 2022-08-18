import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_security_role.freezed.dart';
part 'pos_security_role.g.dart';

@freezed
class POSSecurityRole with _$POSSecurityRole {
  const factory POSSecurityRole({
    required int id,
    required String name,
    bool? desc,
    String? key,
    @JsonKey(name: 'is_default_value') bool? isDefaultValue,
    @JsonKey(name: 'company_id') int? companyId,
  }) = _POSSecurityRole;
  factory POSSecurityRole.fromJson(Map<String, dynamic> json) =>
      _$POSSecurityRoleFromJson(json);
}

@freezed
class POSSecurityRoleResults with _$POSSecurityRoleResults {
  const factory POSSecurityRoleResults({
    @JsonKey(name: 'results') required List<POSSecurityRole> POSSecurityRoles,
  }) = _POSSecurityRoleResults;
  factory POSSecurityRoleResults.fromJson(Map<String, dynamic> json) =>
      _$POSSecurityRoleResultsFromJson(json);
}
