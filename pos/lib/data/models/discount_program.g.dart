// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountProgram _$$_DiscountProgramFromJson(Map<String, dynamic> json) =>
    _$_DiscountProgram(
      id: json['id'] as int,
      name: json['name'] as String,
      discountType: json['discount_type'] as String?,
      requireCustomer: json['require_customer'] as bool?,
      customerRestricted: json['customer_restricted'] as bool?,
      amount: json['amount'] as int?,
      posCategoryIds: (json['pos_category_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      posApplied: (json['pos_applied'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_DiscountProgramToJson(_$_DiscountProgram instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'discount_type': instance.discountType,
      'require_customer': instance.requireCustomer,
      'customer_restricted': instance.customerRestricted,
      'amount': instance.amount,
      'pos_category_ids': instance.posCategoryIds,
      'pos_applied': instance.posApplied,
    };

_$_DiscountProgramResults _$$_DiscountProgramResultsFromJson(
        Map<String, dynamic> json) =>
    _$_DiscountProgramResults(
      discountPrograms: (json['results'] as List<dynamic>)
          .map((e) => DiscountProgram.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DiscountProgramResultsToJson(
        _$_DiscountProgramResults instance) =>
    <String, dynamic>{
      'results': instance.discountPrograms,
    };
