import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'return_reason.freezed.dart';
part 'return_reason.g.dart';

@freezed
class ReturnReason with _$ReturnReason {
  const factory ReturnReason({
    int? id,
    required String name,
    @JsonKey(name: 'company_name') String? companyName,
  }) = _ReturnReason;
  factory ReturnReason.fromJson(Map<String, dynamic> json) =>
      _$ReturnReasonFromJson(json);
}

@freezed
class ReturnReasonResults with _$ReturnReasonResults {
  const factory ReturnReasonResults({
    @JsonKey(name: 'results') required List<ReturnReason> returnReasons,
  }) = _ReturnReasonResults;
  factory ReturnReasonResults.fromJson(Map<String, dynamic> json) =>
      _$ReturnReasonResultsFromJson(json);
}
