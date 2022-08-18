import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'promotion.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Promotion {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;

  final bool? active;
  @JsonKey(name: 'start_date', fromJson: customFromJson)
  final String? startDate;
  @JsonKey(name: 'end_date', fromJson: customFromJson)
  final String? endDate;
  @JsonKey(name: 'amount_total', fromJson: customFromJson)
  final int? amountTotal;
  @JsonKey(fromJson: customFromJson)
  final String? type;
  @JsonKey(fromJson: customFromJson)
  final String? method;
  @JsonKey(name: 'discount_first_order', fromJson: customFromJson)
  final int? discountFirstOrder;
  @JsonKey(name: 'product_id', fromJson: customFromJson)
  final int? productId;
  @JsonKey(name: 'discount_order_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? discountOrderIds;
  //TODO: add custom object logic
  @JsonKey(name: 'discount_category_ids')
  final List<Map<String, dynamic>?>? odooDiscountCategoryIds;
  @JsonKey(name: 'discount_ecommerce_category_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? discountEcommerceCategoryIds;
  @JsonKey(name: 'discount_quantity_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? discountQuantityIds;
  @JsonKey(name: 'gift_condition_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? giftConditionIds;
  @JsonKey(name: 'gift_free_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? giftFreeIds;
  @JsonKey(name: 'discount_condition_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? discountConditionIds;
  @JsonKey(name: 'discount_apply_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? discountApplyIds;
  @JsonKey(name: 'price_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? priceIds;
  @JsonKey(name: 'special_category_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? specialCategoryIds;
  @JsonKey(name: 'discount_lowest_price', fromJson: customFromJson)
  final int? discountLowestPrice;
  @JsonKey(name: 'multi_buy_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? multiBuyIds;
  @JsonKey(name: 'product_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? productIds;
  @JsonKey(name: 'minimum_items', fromJson: customFromJson)
  final int? minimumItems;
  @JsonKey(name: 'special_customer_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? specialCustomerIds;
  @JsonKey(name: 'promotion_birthday')
  final bool? promotionBirthday;
  @JsonKey(name: 'promotion_birthday_type', fromJson: customFromJson)
  final String? promotionBirthdayType;
  @JsonKey(name: 'promotion_group')
  final bool? promotionGroup;
  @JsonKey(name: 'promotion_group_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? promotionGroupIds;
  @JsonKey(fromJson: customFromJson)
  final String? state;
  @JsonKey(name: 'special_days')
  final bool? specialDays;
  final bool? monday;
  final bool? tuesday;
  final bool? wednesday;
  final bool? thursday;
  final bool? friday;
  final bool? saturday;
  final bool? sunday;
  @JsonKey(name: 'special_times')
  final bool? specialTimes;
  @JsonKey(name: 'from_time', fromJson: customFromJson)
  final int? fromTime;
  @JsonKey(name: 'to_time', fromJson: customFromJson)
  final int? toTime;
  @JsonKey(name: 'branch_id', fromJson: customFromJson)
  final int? branchId;
  Promotion({
    required this.odooId,
    this.id = 0,
    this.name,
    this.active,
    this.amountTotal,
    this.branchId,
    this.discountApplyIds,
    this.discountConditionIds,
    this.discountEcommerceCategoryIds,
    this.discountFirstOrder,
    this.discountLowestPrice,
    this.discountOrderIds,
    this.discountQuantityIds,
    this.endDate,
    this.friday,
    this.fromTime,
    this.giftConditionIds,
    this.giftFreeIds,
    this.method,
    this.minimumItems,
    this.monday,
    this.multiBuyIds,
    this.odooDiscountCategoryIds,
    this.priceIds,
    this.productId,
    this.productIds,
    this.promotionBirthday,
    this.promotionBirthdayType,
    this.promotionGroup,
    this.promotionGroupIds,
    this.saturday,
    this.thursday,
    this.toTime,
    this.specialCategoryIds,
    this.specialCustomerIds,
    this.specialDays,
    this.specialTimes,
    this.startDate,
    this.state,
    this.sunday,
    this.tuesday,
    this.type,
    this.wednesday,
  });

  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionToJson(this);
}

@JsonSerializable()
@Entity()
class DiscountCategoryIds {
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(name: '__')
  int id;
  @JsonKey(fromJson: customFromJson, name: 'category_id')
  int? categoryId;
  @JsonKey(fromJson: customFromJson)
  final int? discount;
  @JsonKey(fromJson: customFromJson, name: 'promotion_id')
  final int? promotionId;
  DiscountCategoryIds({
    required this.odooId,
    this.id = 0,
    this.categoryId,
    this.discount,
    this.promotionId,
  });
  factory DiscountCategoryIds.fromJson(Map<String, dynamic> json) =>
      _$DiscountCategoryIdsFromJson(json);

  Map<String, dynamic> toJson() => _$DiscountCategoryIdsToJson(this);
}

@JsonSerializable()
class PromotionMapper {
  final List<Promotion> result;

  PromotionMapper({required this.result});

  factory PromotionMapper.fromJson(Map<String, dynamic> json) =>
      _$PromotionMapperFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionMapperToJson(this);
}
