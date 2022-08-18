import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';
part 'payment_method.g.dart';

@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    required int id,
    required String name,
    @JsonKey(name: 'journal_id')  Map<String, dynamic>? journalId,
    @JsonKey(name: 'identify_customer')  bool? identifyCustomer,
  }) = _PaymentMethod;
  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}

@freezed
class PaymentMethodResults with _$PaymentMethodResults {
  const factory PaymentMethodResults({
    @JsonKey(name: 'results') List<PaymentMethod>? paymentMethods,
  }) = _PaymentMethodResults;
  factory PaymentMethodResults.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodResultsFromJson(json);
}
