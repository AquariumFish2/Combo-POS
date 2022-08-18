// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscountProgram _$DiscountProgramFromJson(Map<String, dynamic> json) =>
    DiscountProgram(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      amount: customFromJson(json['amount']),
      customerRestricted: customFromJson(json['customer_restricted']),
      discountType: customFromJson(json['discount_type']),
      name: customFromJson(json['name']),
      posApplied: customFromJson(json['pos_applied']),
      posCategoryIds: customFromJson(json['pos_category_ids']),
      requireCustomer: customFromJson(json['require_customer']),
    );

Map<String, dynamic> _$DiscountProgramToJson(DiscountProgram instance) =>
    <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'discount_type': instance.discountType,
      'require_customer': instance.requireCustomer,
      'customer_restricted': instance.customerRestricted,
      'amount': instance.amount,
      'pos_category_ids': instance.posCategoryIds,
      'pos_applied': instance.posApplied,
    };

DiscountProgramMapper _$DiscountProgramMapperFromJson(
        Map<String, dynamic> json) =>
    DiscountProgramMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => DiscountProgram.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiscountProgramMapperToJson(
        DiscountProgramMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
