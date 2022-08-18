import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'product.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Product {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'image_1920', fromJson: customFromJson)
  final String? image1920;
  @JsonKey(name: 'sale_ok')
  final bool? saleOk;
  @JsonKey(name: 'purchase_ok')
  final bool? purchaseOk;
  @JsonKey(name: 'detailed_type', fromJson: customFromJson)
  final String? detailedType;
  @JsonKey(name: 'invoice_policy', fromJson: customFromJson)
  final String? invoicePolicy;
  @JsonKey(name: 'list_price', fromJson: customFromJson)
  final double? listPrice;
  @JsonKey(name: 'taxes_id', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? taxesId;
  @JsonKey(name: 'standard_price', fromJson: customFromJson)
  final double? standardPrice;
  @JsonKey(name: 'default_code', fromJson: customFromJson)
  final String? defaultCode;
  @JsonKey(fromJson: customFromJson)
  final String? barcode;
  @JsonKey(name: 'categ_id', fromJson: customFromJson)
  final int? categId;
  @JsonKey(name: 'company_id', fromJson: customFromJson)
  final int? companyId;
  @JsonKey(name: 'branch_id', fromJson: customFromJson)
  final int? branchId;
  @JsonKey(name: 'accessory_product_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? accessoryProductIds;
  @JsonKey(name: 'alternative_product_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? alternativeProductIds;
  @JsonKey(name: 'available_in_pos')
  final bool? availableInPos;
  @JsonKey(name: 'invisible_in_ui')
  final bool? invisibleInUi;
  @JsonKey(name: 'to_weight')
  final bool? toWeight;
  @JsonKey(name: 'pos_categ_id', fromJson: customFromJson)
  final int? posCategId;
  @JsonKey(name: 'website_id', fromJson: customFromJson)
  final int? websiteId;
  @JsonKey(name: 'website_sequence', fromJson: customFromJson)
  final int? websiteSequence;
  @JsonKey(name: 'public_categ_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? publicCategIds;
  @JsonKey(name: 'website_ribbon_id', fromJson: customFromJson)
  final int? websiteRibbonId;
  @JsonKey(fromJson: customFromJson)
  final double? weight;
  @JsonKey(fromJson: customFromJson)
  final double? volume;
  @JsonKey(name: 'sale_delay', fromJson: customFromJson)
  final double? saleDelay;
  @JsonKey(
      name: 'property_account_creditor_price_difference',
      fromJson: customFromJson)
  final double? propertyAccountCreditorPriceDifference;
  @JsonKey(name: 'property_account_expense_id', fromJson: customFromJson)
  final int? propertyAccountExpenseId;
  @JsonKey(name: 'property_account_income_id', fromJson: customFromJson)
  final int? propertyAccountIncomeId;
  @JsonKey(name: 'is_discount')
  final bool? isDiscount;
  @JsonKey(name: 'is_extra')
  final bool? isExtra;
  @JsonKey(name: 'extra_products', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? extraProducts;
  Product({
    required this.odooId,
    this.id = 0,
    this.name,
    this.companyId,
    this.accessoryProductIds,
    this.alternativeProductIds,
    this.availableInPos,
    this.barcode,
    this.branchId,
    this.categId,
    this.defaultCode,
    this.detailedType,
    this.taxesId,
    this.extraProducts,
    this.image1920,
    this.invisibleInUi,
    this.invoicePolicy,
    this.isDiscount,
    this.isExtra,
    this.listPrice,
    this.posCategId,
    this.propertyAccountCreditorPriceDifference,
    this.propertyAccountExpenseId,
    this.propertyAccountIncomeId,
    this.publicCategIds,
    this.purchaseOk,
    this.saleDelay,
    this.saleOk,
    this.standardPrice,
    this.toWeight,
    this.volume,
    this.websiteId,
    this.websiteRibbonId,
    this.websiteSequence,
    this.weight,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class ProductMapper {
  final List<Product> result;

  ProductMapper({required this.result});

  factory ProductMapper.fromJson(Map<String, dynamic> json) =>
      _$ProductMapperFromJson(json);

  Map<String, dynamic> toJson() => _$ProductMapperToJson(this);
}
