// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

POSData _$POSDataFromJson(Map<String, dynamic> json) => POSData(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      allowPinCode: customFromJson(json['allow_pin_code']),
      allowSplitTable: customFromJson(json['allow_split_table']),
      allowTransferTable: customFromJson(json['allow_transfer_table']),
      allowedUserIds: customFromJson(json['allowed_user_ids']),
      availablePricelistIds: customFromJson(json['available_pricelist_ids']),
      avalDiscountProgram: customFromJson(json['avalDiscountProgram']),
      branchId: customFromJson(json['branch_id']),
      companyId: customFromJson(json['company_id']),
      defaultTypeOrderType: customFromJson(json['default_type_order_type']),
      discountPc: customFromJson(json['discount_pc']),
      discountProductId: customFromJson(json['discount_product_id']),
      discountProgramActive: customFromJson(json['discount_program_active']),
      discountProgramProductId:
          customFromJson(json['discount_program_product_id']),
      excludePosCategIds: customFromJson(json['exclude_pos_categ_ids']),
      excludeProductIds: customFromJson(json['exclude_product_ids']),
      floorIds: customFromJson(json['floor_ids']),
      footer: customFromJson(json['footer']),
      header: customFromJson(json['header']),
      ifaceTaxIncluded: customFromJson(json['iface_tax_included']),
      isOrderPrinter: customFromJson(json['is_order_printer']),
      isProductCaloriesActive:
          customFromJson(json['is_product_calories_active']),
      manualDiscount: customFromJson(json['manual_discount']),
      modulePosDiscount: customFromJson(json['module_pos_discount']),
      modulePosRestaurant: customFromJson(json['module_pos_restaurant']),
      orderTypeActive: customFromJson(json['order_type_active']),
      orderTypeIds: customFromJson(json['order_type_ids']),
      orderTypePaymentMethodIds:
          customFromJson(json['order_type_payment_method_ids']),
      paymentMethodIds: customFromJson(json['payment_method_ids']),
      pinCode: customFromJson(json['pin_code']),
      posTypeId: customFromJson(json['pos_type_id']),
      pricelistId: customFromJson(json['pricelist_id']),
      promotionIds: customFromJson(json['promotion_ids']),
      restrictPriceControl: customFromJson(json['restrict_price_control']),
      usePricelist: customFromJson(json['use_pricelist']),
    );

Map<String, dynamic> _$POSDataToJson(POSData instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'pos_type_id': instance.posTypeId,
      'is_product_calories_active': instance.isProductCaloriesActive,
      'allowed_user_ids': instance.allowedUserIds,
      'floor_ids': instance.floorIds,
      'exclude_pos_categ_ids': instance.excludePosCategIds,
      'exclude_product_ids': instance.excludeProductIds,
      'payment_method_ids': instance.paymentMethodIds,
      'order_type_payment_method_ids': instance.orderTypePaymentMethodIds,
      'header': instance.header,
      'footer': instance.footer,
      'discount_program_active': instance.discountProgramActive,
      'avalDiscountProgram': instance.avalDiscountProgram,
      'discount_program_product_id': instance.discountProgramProductId,
      'allow_pin_code': instance.allowPinCode,
      'pin_code': instance.pinCode,
      'order_type_active': instance.orderTypeActive,
      'order_type_ids': instance.orderTypeIds,
      'default_type_order_type': instance.defaultTypeOrderType,
      'pricelist_id': instance.pricelistId,
      'iface_tax_included': instance.ifaceTaxIncluded,
      'manual_discount': instance.manualDiscount,
      'restrict_price_control': instance.restrictPriceControl,
      'use_pricelist': instance.usePricelist,
      'available_pricelist_ids': instance.availablePricelistIds,
      'module_pos_discount': instance.modulePosDiscount,
      'discount_product_id': instance.discountProductId,
      'discount_pc': instance.discountPc,
      'allow_split_table': instance.allowSplitTable,
      'allow_transfer_table': instance.allowTransferTable,
      'promotion_ids': instance.promotionIds,
      'branch_id': instance.branchId,
      'module_pos_restaurant': instance.modulePosRestaurant,
      'is_order_printer': instance.isOrderPrinter,
      'company_id': instance.companyId,
    };

POSDataMapper _$POSDataMapperFromJson(Map<String, dynamic> json) =>
    POSDataMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => POSData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$POSDataMapperToJson(POSDataMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
