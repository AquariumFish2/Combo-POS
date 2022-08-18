// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_POSData _$$_POSDataFromJson(Map<String, dynamic> json) => _$_POSData(
      id: json['id'] as int,
      name: json['name'] as String,
      posType: json['pos_type'] as String?,
      isProductCaloriesActive: json['is_product_calories_active'] as bool?,
      allowedUserIds: (json['allowed_user_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      floorIds:
          (json['floor_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      excludePosCategIds: (json['exclude_pos_categ_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      excludeProductIds: (json['exclude_product_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      productPrice: json['product_price'] as String?,
      paymentMethodIds: (json['payment_method_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      header: json['header'] as bool?,
      footer: json['footer'] as bool?,
      discountProgramActive: json['discount_program_active'] as bool?,
      avalDiscountProgram: (json['aval_discount_program'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discountProgramProductId: json['discount_program_product_id'] as bool?,
      allowPinCode: json['allow_pin_code'] as bool?,
      pinCode: json['pin_code'] as bool?,
      orderTypeActive: json['order_type_active'] as bool?,
      orderTypeIds: (json['order_type_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      orderTypeJournalIds: (json['order_type_journal_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      defaultTypeOrderType: json['default_type_order_type'] as bool?,
    );

Map<String, dynamic> _$$_POSDataToJson(_$_POSData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pos_type': instance.posType,
      'is_product_calories_active': instance.isProductCaloriesActive,
      'allowed_user_ids': instance.allowedUserIds,
      'floor_ids': instance.floorIds,
      'exclude_pos_categ_ids': instance.excludePosCategIds,
      'exclude_product_ids': instance.excludeProductIds,
      'product_price': instance.productPrice,
      'payment_method_ids': instance.paymentMethodIds,
      'header': instance.header,
      'footer': instance.footer,
      'discount_program_active': instance.discountProgramActive,
      'aval_discount_program': instance.avalDiscountProgram,
      'discount_program_product_id': instance.discountProgramProductId,
      'allow_pin_code': instance.allowPinCode,
      'pin_code': instance.pinCode,
      'order_type_active': instance.orderTypeActive,
      'order_type_ids': instance.orderTypeIds,
      'order_type_journal_ids': instance.orderTypeJournalIds,
      'default_type_order_type': instance.defaultTypeOrderType,
    };

_$_POSDataResults _$$_POSDataResultsFromJson(Map<String, dynamic> json) =>
    _$_POSDataResults(
      POSDatas: (json['results'] as List<dynamic>)
          .map((e) => POSData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_POSDataResultsToJson(_$_POSDataResults instance) =>
    <String, dynamic>{
      'results': instance.POSDatas,
    };
