import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_group.freezed.dart';
part 'pos_group.g.dart';

@freezed
class POSGroup with _$POSGroup {
  const factory POSGroup({
    required int id,
    required String name,
    @JsonKey(name: 'pos_role_ids') List<int>? posRoleIds,
    @JsonKey(name: 'pos_user_ids') List<int>? posUserIds,
    @JsonKey(name: 'company_id') int? companyId,
  }) = _POSGroup;
  factory POSGroup.fromJson(Map<String, dynamic> json) =>
      _$POSGroupFromJson(json);
}

@freezed
class POSGroupResults with _$POSGroupResults {
  const factory POSGroupResults({
    @JsonKey(name: 'results') required List<POSGroup> POSGroups,
  }) = _POSGroupResults;
  factory POSGroupResults.fromJson(Map<String, dynamic> json) =>
      _$POSGroupResultsFromJson(json);
}
