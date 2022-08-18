import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required int id,
    required String name,
    String? image,
    String? phone,
    String? mobile,
    String? email,
    String? street,
    String? street2,
    String? city,
    @JsonKey(name: 'state_id') int? stateId,
    String? zip,
    @JsonKey(name: 'company_registry') dynamic companyRegistry,
    dynamic vat,
    @JsonKey(name: 'currency_id') dynamic currencyId,
  }) = _Company;
  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
