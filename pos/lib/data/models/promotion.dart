import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'promotion.freezed.dart';
part 'promotion.g.dart';

@freezed
class Promotion with _$Promotion {
  factory Promotion(
      {required int id,
      required String name,
      bool? active,
      @JsonKey(name: 'start_date')
          DateTime? startDate,
      @JsonKey(name: 'end_date')
          DateTime? endDate,
      @JsonKey(name: 'amount_total')
          int? amountTotal,
      String? type,
      String? method,
      @JsonKey(name: 'discount_first_order')
          String? discountFirstOrder,
      @JsonKey(name: 'product_id')
          String? productId,
      @JsonKey(name: 'discount_order_ids')
          List? discountOrderIds,
      @JsonKey(name: 'discount_category_ids')
          List? discountCategoryIds,
      @JsonKey(name: 'discount_ecommerce_category_ids')
          List? discountEcommerceCategoryIds,
      @JsonKey(name: 'discount_quantity_ids')
          List? discountQuantityIds,
      @JsonKey(name: 'gift_condition_ids')
          List? giftConditonIds,
      @JsonKey(name: 'gift_free_ids')
          List? giftFreeIds,
      @JsonKey(name: 'discount_condition_ids')
          List? discountConditionIds,
      @JsonKey(name: 'discount_apply_ids')
          List? discountApplyIds,
      @JsonKey(name: 'price_ids')
          List? priceIds,
      @JsonKey(name: 'special_category_ids')
          List? specialCategoryIds,
      @JsonKey(name: 'discount_lowest_price')
          int? discountLowestPrice,
      @JsonKey(name: 'multi_buy_ids')
          List? multiBuyIds,
      @JsonKey(name: 'product_ids')
          List? productIds,
      @JsonKey(name: 'minimum_items')
          List? minimumItems,
      @JsonKey(name: 'special_customer_ids')
          List<int>? specialCustomerIds,
      @JsonKey(name: 'promotion_birthday')
          bool? promotionBirthday,
      @JsonKey(name: 'promotion_birthday_type')
          String? promotionBirthdayType,
      @JsonKey(name: 'promotion_group')
          bool? promotionGroup,
      @JsonKey(name: 'promotion_group_ids')
          List? promotionGroupIds,
      String? state,
      @JsonKey(name: 'special_days')
          bool? specialDays,
      bool? monday,
      bool? tuesday,
      bool? wednesday,
      bool? thursday,
      bool? friday,
      bool? saturday,
      bool? sunday,
      @JsonKey(name: 'special_times')
          bool? specialTimes,
      @JsonKey(name: 'from_time')
          int? fromTime,
      @JsonKey(name: 'to_time')
          int? toTime,
      @JsonKey(name: 'branch_id')
          int? branchId}) = _Promotion;
  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);
}

@freezed
class PromotionResults with _$PromotionResults {
  factory PromotionResults({
    @JsonKey(name: "result") required List<Promotion> promotions,
  }) = _PromotionResults;
  factory PromotionResults.fromJson(Map<String, dynamic> json) =>
      _$PromotionResultsFromJson(json);
}
