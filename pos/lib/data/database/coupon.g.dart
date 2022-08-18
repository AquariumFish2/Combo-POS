// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coupon _$CouponFromJson(Map<String, dynamic> json) => Coupon(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      active: customFromJson(json['active']),
      amount: customFromJson(json['amount']),
      amountType: customFromJson(json['amount_type']),
      appliedApp: customFromJson(json['applied_app']),
      applyCouponOn: customFromJson(json['apply_coupon_on']),
      cBarcode: customFromJson(json['c_barcode']),
      categIds: customFromJson(json['categ_ids']),
      couponApplyTimes: customFromJson(json['coupon_apply_times']),
      couponDesc: customFromJson(json['coupon_desc']),
      description: customFromJson(json['description']),
      partnerTrue: customFromJson(json['partner_true']),
      expDatShow: customFromJson(json['exp_dat_show']),
      expiryDate: customFromJson(json['expiry_date']),
      isCateg: customFromJson(json['is_categ']),
      issueDate: customFromJson(json['issue_date']),
      maxAmount: customFromJson(json['max_amount']),
      partnerId: customFromJson(json['partner_id']),
      productId: customFromJson(json['product_id']),
    );

Map<String, dynamic> _$CouponToJson(Coupon instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'product_id': instance.productId,
      'active': instance.active,
      'coupon_apply_times': instance.couponApplyTimes,
      'applied_app': instance.appliedApp,
      'c_barcode': instance.cBarcode,
      'amount_type': instance.amountType,
      'apply_coupon_on': instance.applyCouponOn,
      'issue_date': instance.issueDate,
      'exp_dat_show': instance.expDatShow,
      'expiry_date': instance.expiryDate,
      'amount': instance.amount,
      'partner_true': instance.partnerTrue,
      'partner_id': instance.partnerId,
      'is_categ': instance.isCateg,
      'categ_ids': instance.categIds,
      'max_amount': instance.maxAmount,
      'coupon_desc': instance.couponDesc,
      'description': instance.description,
    };

CouponMapper _$CouponMapperFromJson(Map<String, dynamic> json) => CouponMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CouponMapperToJson(CouponMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
