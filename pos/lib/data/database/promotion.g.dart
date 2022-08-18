// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Promotion _$PromotionFromJson(Map<String, dynamic> json) => Promotion(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      active: customFromJson(json['active']),
      amountTotal: customFromJson(json['amount_total']),
      branchId: customFromJson(json['branch_id']),
      discountApplyIds: customFromJson(json['discount_apply_ids']),
      discountConditionIds: customFromJson(json['discount_condition_ids']),
      discountEcommerceCategoryIds:
          customFromJson(json['discount_ecommerce_category_ids']),
      discountFirstOrder: customFromJson(json['discount_first_order']),
      discountLowestPrice: customFromJson(json['discount_lowest_price']),
      discountOrderIds: customFromJson(json['discount_order_ids']),
      discountQuantityIds: customFromJson(json['discount_quantity_ids']),
      endDate: customFromJson(json['end_date']),
      friday: customFromJson(json['friday']),
      fromTime: customFromJson(json['from_time']),
      giftConditionIds: customFromJson(json['gift_condition_ids']),
      giftFreeIds: customFromJson(json['gift_free_ids']),
      method: customFromJson(json['method']),
      minimumItems: customFromJson(json['minimum_items']),
      monday: customFromJson(json['monday']),
      multiBuyIds: customFromJson(json['multi_buy_ids']),
      odooDiscountCategoryIds: (json['discount_category_ids'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>?)
          .toList(),
      priceIds: customFromJson(json['price_ids']),
      productId: customFromJson(json['product_id']),
      productIds: customFromJson(json['product_ids']),
      promotionBirthday: customFromJson(json['promotion_birthday']),
      promotionBirthdayType: customFromJson(json['promotion_birthday_type']),
      promotionGroup: customFromJson(json['promotion_group']),
      promotionGroupIds: customFromJson(json['promotion_group_ids']),
      saturday: customFromJson(json['saturday']),
      thursday: customFromJson(json['thursday']),
      toTime: customFromJson(json['to_time']),
      specialCategoryIds: customFromJson(json['special_category_ids']),
      specialCustomerIds: customFromJson(json['special_customer_ids']),
      specialDays: customFromJson(json['special_days']),
      specialTimes: customFromJson(json['special_times']),
      startDate: customFromJson(json['start_date']),
      state: customFromJson(json['state']),
      sunday: customFromJson(json['sunday']),
      tuesday: customFromJson(json['tuesday']),
      type: customFromJson(json['type']),
      wednesday: customFromJson(json['wednesday']),
    );

Map<String, dynamic> _$PromotionToJson(Promotion instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'active': instance.active,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'amount_total': instance.amountTotal,
      'type': instance.type,
      'method': instance.method,
      'discount_first_order': instance.discountFirstOrder,
      'product_id': instance.productId,
      'discount_order_ids': instance.discountOrderIds,
      'discount_category_ids': instance.odooDiscountCategoryIds,
      'discount_ecommerce_category_ids': instance.discountEcommerceCategoryIds,
      'discount_quantity_ids': instance.discountQuantityIds,
      'gift_condition_ids': instance.giftConditionIds,
      'gift_free_ids': instance.giftFreeIds,
      'discount_condition_ids': instance.discountConditionIds,
      'discount_apply_ids': instance.discountApplyIds,
      'price_ids': instance.priceIds,
      'special_category_ids': instance.specialCategoryIds,
      'discount_lowest_price': instance.discountLowestPrice,
      'multi_buy_ids': instance.multiBuyIds,
      'product_ids': instance.productIds,
      'minimum_items': instance.minimumItems,
      'special_customer_ids': instance.specialCustomerIds,
      'promotion_birthday': instance.promotionBirthday,
      'promotion_birthday_type': instance.promotionBirthdayType,
      'promotion_group': instance.promotionGroup,
      'promotion_group_ids': instance.promotionGroupIds,
      'state': instance.state,
      'special_days': instance.specialDays,
      'monday': instance.monday,
      'tuesday': instance.tuesday,
      'wednesday': instance.wednesday,
      'thursday': instance.thursday,
      'friday': instance.friday,
      'saturday': instance.saturday,
      'sunday': instance.sunday,
      'special_times': instance.specialTimes,
      'from_time': instance.fromTime,
      'to_time': instance.toTime,
      'branch_id': instance.branchId,
    };

DiscountCategoryIds _$DiscountCategoryIdsFromJson(Map<String, dynamic> json) =>
    DiscountCategoryIds(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      categoryId: customFromJson(json['category_id']),
      discount: customFromJson(json['discount']),
      promotionId: customFromJson(json['promotion_id']),
    );

Map<String, dynamic> _$DiscountCategoryIdsToJson(
        DiscountCategoryIds instance) =>
    <String, dynamic>{
      'id': instance.odooId,
      '__': instance.id,
      'category_id': instance.categoryId,
      'discount': instance.discount,
      'promotion_id': instance.promotionId,
    };

PromotionMapper _$PromotionMapperFromJson(Map<String, dynamic> json) =>
    PromotionMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Promotion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PromotionMapperToJson(PromotionMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
