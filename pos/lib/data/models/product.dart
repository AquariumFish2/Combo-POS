import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    @JsonKey(name: 'image_1920')  String?  image1920,
    required String name,
    @JsonKey(name: 'arabic_name')  bool?  arabicName,
    @JsonKey(name: 'sale_ok')  bool?  saleOk,
    @JsonKey(name: 'purchase_ok')  bool?  purchaseOk,
    @JsonKey(name: 'detailed_type')  String?  detailedType,
    @JsonKey(name: 'invoice_policy')  String?  invoicePolicy,
    @JsonKey(name: 'list_price')  int?  listPrice,
    @JsonKey(name:  'taxes_id')  List?  taxesId,
    @JsonKey(name: 'standard_price')  int?  standardPrice,
    @JsonKey(name:'default_code')  String?  defaultCode,
     bool?  barcode,
    @JsonKey(name: 'categ_id')  int?  categId,
    @JsonKey(name: 'company_id')  bool?  companyId,
    @JsonKey(name: 'branch_id')  bool? branchId,
    @JsonKey(name: 'accessory_product_ids')  List?  accessoryProductIds,
    @JsonKey(name: 'alternative_product_ids')  List?  alternativeProductIds,
    @JsonKey(name: 'available_in_pos')  bool?  availableInPOS,
    @JsonKey(name: 'invisible_in_ui')  bool?  invisibleInUi,
    @JsonKey(name: 'to_weight')  bool?  toWeight,
    @JsonKey(name: 'pos_categ_id')  bool?  posCategId,
    @JsonKey(name: 'website_id')  bool?  websiteId,
    @JsonKey(name: 'website_sequence')  int?  websiteSequence,
    @JsonKey(name: 'public_categ_ids')  List ? publicCategIds,
    @JsonKey(name: 'website_ribbon_id')  bool?  websiteRibbonId,
     int? weight,
     int? volume,
    @JsonKey(name: 'sale_delay')  int? saleDelay,
    @JsonKey(name: 'property_account_creditor_price_difference')  bool? propertyAccountCreditorPriceDifference,
    @JsonKey(name: 'property_account_expense_id')  bool? propertyAccountExpenseId,
    @JsonKey(name: 'property_account_income_id')  bool? propertyAccountIncomeId,
      }) = _Product;
  factory Product.fromJson(Map<String, dynamic> json) =>_$ProductFromJson(json);
}
@freezed
class ProductResults with _$ProductResults {
  factory ProductResults({
    @JsonKey(name: "result") required List<Product> products,
  }) = _ProductResults;
  factory ProductResults.fromJson(Map<String, dynamic> json) =>
      _$ProductResultsFromJson(json);
}