import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'pos_data.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class POSData {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(fromJson: customFromJson, name: 'pos_type_id')
  final int? posTypeId;
  @JsonKey( name: 'is_product_calories_active')
  final bool? isProductCaloriesActive;
  @JsonKey(fromJson: customFromJson, name: 'allowed_user_ids')
  final List<int>? allowedUserIds;
  @JsonKey(fromJson: customFromJson, name: 'floor_ids')
  final List<int>? floorIds;
  @JsonKey(fromJson: customFromJson, name: 'exclude_pos_categ_ids')
  final List<int>? excludePosCategIds;
  @JsonKey(fromJson: customFromJson, name: 'exclude_product_ids')
  final List<int>? excludeProductIds;
  @JsonKey(fromJson: customFromJson, name: 'payment_method_ids')
  final List<int>? paymentMethodIds;
  @JsonKey(fromJson: customFromJson, name: 'order_type_payment_method_ids')
  final List<int>? orderTypePaymentMethodIds;
  @JsonKey(fromJson: customFromJson)
  //TODO: know what is the type
  final String? header;
  @JsonKey(fromJson: customFromJson)
  final String? footer;
  @JsonKey( name: 'discount_program_active')
  final bool? discountProgramActive;
  @JsonKey(fromJson: customFromJson, name: 'avalDiscountProgram')
  final List<int>? avalDiscountProgram;
  @JsonKey(fromJson: customFromJson, name: 'discount_program_product_id')
  final int? discountProgramProductId;
  @JsonKey( name: 'allow_pin_code')
  final bool? allowPinCode;
  @JsonKey(fromJson: customFromJson, name: 'pin_code')
  final String? pinCode;
  @JsonKey( name: 'order_type_active')
  final bool? orderTypeActive;
  @JsonKey(fromJson: customFromJson, name: 'order_type_ids')
  final List<int>? orderTypeIds;
  @JsonKey(fromJson: customFromJson, name: 'default_type_order_type')
  final String? defaultTypeOrderType;
  @JsonKey(fromJson: customFromJson, name: 'pricelist_id')
  final int? pricelistId;
  @JsonKey(fromJson: customFromJson, name: 'iface_tax_included')
  final String? ifaceTaxIncluded;
  @JsonKey( name: 'manual_discount')
  final bool? manualDiscount;
  @JsonKey( name: 'restrict_price_control')
  final bool? restrictPriceControl;
  @JsonKey( name: 'use_pricelist')
  final bool? usePricelist;
  @JsonKey(fromJson: customFromJson, name: 'available_pricelist_ids')
  final List<int>? availablePricelistIds;
  @JsonKey( name: 'module_pos_discount')
  final bool? modulePosDiscount;
  @JsonKey(fromJson: customFromJson, name: 'discount_product_id')
  final int? discountProductId;
  @JsonKey(fromJson: customFromJson, name: 'discount_pc')
  final double? discountPc;
  @JsonKey(name: 'allow_split_table')
  final bool? allowSplitTable;
  @JsonKey(name: 'allow_transfer_table')
  final bool? allowTransferTable;
  @JsonKey(fromJson: customFromJson, name: 'promotion_ids')
  final List<int>? promotionIds;
  @JsonKey(fromJson: customFromJson, name: 'branch_id')
  final int? branchId;
  @JsonKey(name: 'module_pos_restaurant')
  final bool? modulePosRestaurant;
  @JsonKey( name: 'is_order_printer')
  final bool? isOrderPrinter;
  @JsonKey(fromJson: customFromJson, name: 'company_id')
  final int? companyId;

  POSData({
    required this.odooId,
    this.id = 0,
    this.name,
    this.allowPinCode,
    this.allowSplitTable,
    this.allowTransferTable,
    this.allowedUserIds,
    this.availablePricelistIds,
    this.avalDiscountProgram,
    this.branchId,
    this.companyId,
    this.defaultTypeOrderType,
    this.discountPc,
    this.discountProductId,
    this.discountProgramActive,
    this.discountProgramProductId,
    this.excludePosCategIds,
    this.excludeProductIds,
    this.floorIds,
    this.footer,
    this.header,
    this.ifaceTaxIncluded,
    this.isOrderPrinter,
    this.isProductCaloriesActive,
    this.manualDiscount,
    this.modulePosDiscount,
    this.modulePosRestaurant,
    this.orderTypeActive,
    this.orderTypeIds,
    this.orderTypePaymentMethodIds,
    this.paymentMethodIds,
    this.pinCode,
    this.posTypeId,
    this.pricelistId,
    this.promotionIds,
    this.restrictPriceControl,
    this.usePricelist,
  });

  factory POSData.fromJson(Map<String, dynamic> json) =>
      _$POSDataFromJson(json);

  Map<String, dynamic> toJson() => _$POSDataToJson(this);
}

@JsonSerializable()
class POSDataMapper {
  final List<POSData> result;

  POSDataMapper({required this.result});

  factory POSDataMapper.fromJson(Map<String, dynamic> json) =>
      _$POSDataMapperFromJson(json);

  Map<String, dynamic> toJson() => _$POSDataMapperToJson(this);
}
