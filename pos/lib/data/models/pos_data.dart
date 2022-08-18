import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_data.freezed.dart';
part 'pos_data.g.dart';

@freezed
class POSData with _$POSData {
  const factory POSData({
    required int id,
    required String name,
    @JsonKey(name: 'pos_type')  String? posType,
    @JsonKey(name: 'is_product_calories_active') bool? isProductCaloriesActive,
    @JsonKey(name: 'allowed_user_ids')  List<int>? allowedUserIds,
    @JsonKey(name: 'floor_ids')  List<int>? floorIds,
    @JsonKey(name: 'exclude_pos_categ_ids') List<int>? excludePosCategIds,
    @JsonKey(name: 'exclude_product_ids')  List<int>? excludeProductIds,
    @JsonKey(name: 'product_price')  String? productPrice,
    @JsonKey(name: 'payment_method_ids')  List<int>? paymentMethodIds,
    bool? header,
    bool? footer,
    @JsonKey(name: 'discount_program_active') bool? discountProgramActive,
    @JsonKey(name: 'aval_discount_program') List<String>? avalDiscountProgram,
    @JsonKey(name: 'discount_program_product_id') bool? discountProgramProductId,
    @JsonKey(name: 'allow_pin_code')  bool? allowPinCode,
    @JsonKey(name: 'pin_code')  bool? pinCode,
    @JsonKey(name: 'order_type_active')  bool? orderTypeActive,
    @JsonKey(name: 'order_type_ids')  List<int>? orderTypeIds,
    @JsonKey(name: 'order_type_journal_ids')  List<int>? orderTypeJournalIds,
    @JsonKey(name: 'default_type_order_type')  bool? defaultTypeOrderType,
  }) = _POSData;
  factory POSData.fromJson(Map<String, dynamic> json) =>
      _$POSDataFromJson(json);
}

@freezed
class POSDataResults with _$POSDataResults {
  const factory POSDataResults({
    @JsonKey(name: 'results') required List<POSData> POSDatas,
  }) = _POSDataResults;
  factory POSDataResults.fromJson(Map<String, dynamic> json) =>
      _$POSDataResultsFromJson(json);
}
