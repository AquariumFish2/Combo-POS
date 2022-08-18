import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required String id,
    required String name,
    @JsonKey(name: 'image_1920') String? image1920,
    String? street,
    bool? street2,
    String? city,
    @JsonKey(name: 'state_id') String? stateId,
    String? zip,
    @JsonKey(name: 'country_id') int? countryId,
    bool? vat,
    @JsonKey(name: 'branch_id') bool? branchId,
    String? phone,
    bool? mobile,
    String? email,
    String? website,
    @JsonKey(name: 'category_id') List<int>? categoryId,
    @JsonKey(name: 'company_id') bool? companyId,
  }) = _Customer;
  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

@freezed
class CustomerResults with _$CustomerResults {
  const factory CustomerResults({
    @JsonKey(name: 'results') required List<Customer> Customers,
  }) = _CustomerResults;
  factory CustomerResults.fromJson(Map<String, dynamic> json) =>
      _$CustomerResultsFromJson(json);
}
