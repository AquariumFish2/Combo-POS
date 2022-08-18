// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order1 _$Order1FromJson(Map<String, dynamic> json) => Order1(
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      amountPaid: customFromJson(json['amount_paid']),
      amountReturn: customFromJson(json['amount_return']),
      amountTax: customFromJson(json['amount_tax']),
      amountTotal: customFromJson(json['amount_total']),
      branchId: customFromJson(json['branch_id']),
      couponId: customFromJson(json['coupon_id']),
      orderTypeId: customFromJson(json['order_type_id']),
      mobileRef: json['mobile_ref'] as String?,
      note: customFromJson(json['note']),
      posReference: customFromJson(json['pos_reference']),
      pricelistId: customFromJson(json['pricelist_id']),
      returnReasonId: customFromJson(json['returnReasonId']),
      sessionId: customFromJson(json['session_id']),
      userId: customFromJson(json['user_id']),
      orderType: json['order_type'] == null
          ? 'Dine-in'
          : customFromJson(json['order_type']),
      posId: customFromJson(json['pos_id']),
      time: customFromJson(json['time']),
      date: customFromJson(json['date']),
      orderNum: json['orderNum'] as int?,
    )
      ..customerId = customFromJson(json['customer_id'])
      ..tableId = customFromJson(json['table_id'])
      ..floorId = customFromJson(json['floor_id']);

Map<String, dynamic> _$Order1ToJson(Order1 instance) => <String, dynamic>{
      '__': instance.id,
      'mobile_ref': instance.mobileRef,
      'name': instance.name,
      'session_id': instance.sessionId,
      'user_id': instance.userId,
      'amount_tax': instance.amountTax,
      'amount_total': instance.amountTotal,
      'amount_paid': instance.amountPaid,
      'amount_return': instance.amountReturn,
      'order_type_id': instance.orderTypeId,
      'note': instance.note,
      'coupon_id': instance.couponId,
      'returnReasonId': instance.returnReasonId,
      'branch_id': instance.branchId,
      'pos_reference': instance.posReference,
      'pricelist_id': instance.pricelistId,
      'orderNum': instance.orderNum,
      'time': instance.time,
      'order_type': instance.orderType,
      'date': instance.date?.toIso8601String(),
      'customer_id': instance.customerId,
      'table_id': instance.tableId,
      'floor_id': instance.floorId,
      'pos_id': instance.posId,
    };

Order1Mapper _$Order1MapperFromJson(Map<String, dynamic> json) => Order1Mapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Order1.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Order1MapperToJson(Order1Mapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
