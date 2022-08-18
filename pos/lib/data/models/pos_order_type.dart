import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_order_type.freezed.dart';
part 'pos_order_type.g.dart';



@freezed
class POSOrderType with _$POSOrderType {
  const factory POSOrderType({
    required int id,
    required String name,
    @JsonKey(name: 'is_show_customer_info')  bool? isShowCustomerInfo,
    @JsonKey(name: 'is_require_information')  bool? isRequireInformation,
    @JsonKey(name: 'is_require_driver')  bool? isRequireDriver,
    @JsonKey(name: 'is_auto_open_table_screen') bool? isAutoOpenTableScreen,
    @JsonKey(name: 'pricelist_id')  int? pricelistId,
     String? type,
    @JsonKey(name: 'delivary_product_id')  bool? delivaryProductId,
    @JsonKey(name: 'extra_product_id')  bool? extraProductId,
    @JsonKey(name: 'extra_percentage')  int? extraPercentage,
    @JsonKey(name: 'company_id')  int? companyId,
    @JsonKey(name: 'account_journal_ids')  List<int>? accountJournalIds,
  }) = _POSOrderType;
  factory POSOrderType.fromJson(Map<String, dynamic> json) =>
      _$POSOrderTypeFromJson(json);
}

@freezed
class POSOrderTypeResults with _$POSOrderTypeResults {
  const factory POSOrderTypeResults({
    @JsonKey(name: 'results') required List<POSOrderType> POSOrderTypes,
  }) = _POSOrderTypeResults;
  factory POSOrderTypeResults.fromJson(Map<String, dynamic> json) =>
      _$POSOrderTypeResultsFromJson(json);
}
