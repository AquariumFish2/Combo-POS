import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_multi_session.freezed.dart';
part 'pos_multi_session.g.dart';



@freezed
class POSMultiSession with _$POSMultiSession {
  const factory POSMultiSession({
    required String id,
    required String name,
    @JsonKey(name: 'pos_ids') List<Map<String, int>>? posIds,
    @JsonKey(name: 'floor_ids') List<int>? floorIds,
    @JsonKey(name: 'table_blocking') bool? tableBlocking,
    @JsonKey(name: 'multi_session_active') bool? multiSessionActive,
    @JsonKey(name: 'sync_server') String? syncServer,
    @JsonKey(name: 'fiscal_position_ids') List<int>? fiscalPositionIds,
    @JsonKey(name: 'company_id') int? companyId,
  }) = _POSMultiSession;
  factory POSMultiSession.fromJson(Map<String, dynamic> json) =>
      _$POSMultiSessionFromJson(json);
}

@freezed
class POSMultiSessionResults with _$POSMultiSessionResults {
  const factory POSMultiSessionResults({
    @JsonKey(name: 'results') required List<POSMultiSession> POSMultiSessions,
  }) = _POSMultiSessionResults;
  factory POSMultiSessionResults.fromJson(Map<String, dynamic> json) =>
      _$POSMultiSessionResultsFromJson(json);
}
