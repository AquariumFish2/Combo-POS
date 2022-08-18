import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@freezed
class Auth with _$Auth {
  const factory Auth({
    required int uid,
    @JsonKey(name: "access_token",fromJson: customFromJson) required String accessToken,
    @JsonKey(name: "company_name",fromJson: customFromJson) @Default('') String? companyName,
    @JsonKey(name: "company_id",fromJson: customFromJson) required int? companyId,
    @JsonKey(name: "company_ids",fromJson: customFromJson) required List<int>? companyIds,
    @JsonKey(name: "partner_id",fromJson: customFromJson) required int? partnerId,
    @JsonKey(name: "country",fromJson: customFromJson) @Default('') String? country,
    @JsonKey(name: "contact_address",fromJson: customFromJson) @Default('') String? contactAddress,
  }) = _Auth;
  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
