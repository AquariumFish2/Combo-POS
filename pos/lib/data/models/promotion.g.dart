// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Promotion _$$_PromotionFromJson(Map<String, dynamic> json) => _$_Promotion(
      id: json['id'] as int,
      name: json['name'] as String,
      active: json['active'] as bool?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      amountTotal: json['amount_total'] as int?,
      type: json['type'] as String?,
      method: json['method'] as String?,
      discountFirstOrder: json['discount_first_order'] as String?,
      productId: json['product_id'] as String?,
      discountOrderIds: json['discount_order_ids'] as List<dynamic>?,
      discountCategoryIds: json['discount_category_ids'] as List<dynamic>?,
      discountEcommerceCategoryIds:
          json['discount_ecommerce_category_ids'] as List<dynamic>?,
      discountQuantityIds: json['discount_quantity_ids'] as List<dynamic>?,
      giftConditonIds: json['gift_condition_ids'] as List<dynamic>?,
      giftFreeIds: json['gift_free_ids'] as List<dynamic>?,
      discountConditionIds: json['discount_condition_ids'] as List<dynamic>?,
      discountApplyIds: json['discount_apply_ids'] as List<dynamic>?,
      priceIds: json['price_ids'] as List<dynamic>?,
      specialCategoryIds: json['special_category_ids'] as List<dynamic>?,
      discountLowestPrice: json['discount_lowest_price'] as int?,
      multiBuyIds: json['multi_buy_ids'] as List<dynamic>?,
      productIds: json['product_ids'] as List<dynamic>?,
      minimumItems: json['minimum_items'] as List<dynamic>?,
      specialCustomerIds: (json['special_customer_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      promotionBirthday: json['promotion_birthday'] as bool?,
      promotionBirthdayType: json['promotion_birthday_type'] as String?,
      promotionGroup: json['promotion_group'] as bool?,
      promotionGroupIds: json['promotion_group_ids'] as List<dynamic>?,
      state: json['state'] as String?,
      specialDays: json['special_days'] as bool?,
      monday: json['monday'] as bool?,
      tuesday: json['tuesday'] as bool?,
      wednesday: json['wednesday'] as bool?,
      thursday: json['thursday'] as bool?,
      friday: json['friday'] as bool?,
      saturday: json['saturday'] as bool?,
      sunday: json['sunday'] as bool?,
      specialTimes: json['special_times'] as bool?,
      fromTime: json['from_time'] as int?,
      toTime: json['to_time'] as int?,
      branchId: json['branch_id'] as int?,
    );

Map<String, dynamic> _$$_PromotionToJson(_$_Promotion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'amount_total': instance.amountTotal,
      'type': instance.type,
      'method': instance.method,
      'discount_first_order': instance.discountFirstOrder,
      'product_id': instance.productId,
      'discount_order_ids': instance.discountOrderIds,
      'discount_category_ids': instance.discountCategoryIds,
      'discount_ecommerce_category_ids': instance.discountEcommerceCategoryIds,
      'discount_quantity_ids': instance.discountQuantityIds,
      'gift_condition_ids': instance.giftConditonIds,
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

_$_PromotionResults _$$_PromotionResultsFromJson(Map<String, dynamic> json) =>
    _$_PromotionResults(
      promotions: (json['result'] as List<dynamic>)
          .map((e) => Promotion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PromotionResultsToJson(_$_PromotionResults instance) =>
    <String, dynamic>{
      'result': instance.promotions,
    };
