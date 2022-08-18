import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_program.freezed.dart';
part 'discount_program.g.dart';

@freezed
class DiscountProgram with _$DiscountProgram {
  const factory DiscountProgram({
    required int id,
    required String name,
    @JsonKey(name: 'discount_type') String? discountType,
    @JsonKey(name: 'require_customer')  bool? requireCustomer,
    @JsonKey(name: 'customer_restricted')  bool? customerRestricted,
     int? amount,
    @JsonKey(name: 'pos_category_ids')  List<int>? posCategoryIds,
    @JsonKey(name: 'pos_applied')  List<int>? posApplied,
  }) = _DiscountProgram;
  factory DiscountProgram.fromJson(Map<String, dynamic> json) =>
      _$DiscountProgramFromJson(json);
}

@freezed
class DiscountProgramResults with _$DiscountProgramResults {
  const factory DiscountProgramResults({
    @JsonKey(name: 'results') required List<DiscountProgram> discountPrograms,
  }) = _DiscountProgramResults;
  factory DiscountProgramResults.fromJson(Map<String, dynamic> json) =>
      _$DiscountProgramResultsFromJson(json);
}
