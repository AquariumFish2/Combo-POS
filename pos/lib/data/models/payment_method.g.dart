// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethod _$$_PaymentMethodFromJson(Map<String, dynamic> json) =>
    _$_PaymentMethod(
      id: json['id'] as int,
      name: json['name'] as String,
      journalId: json['journal_id'] as Map<String, dynamic>?,
      identifyCustomer: json['identify_customer'] as bool?,
    );

Map<String, dynamic> _$$_PaymentMethodToJson(_$_PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'journal_id': instance.journalId,
      'identify_customer': instance.identifyCustomer,
    };

_$_PaymentMethodResults _$$_PaymentMethodResultsFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentMethodResults(
      paymentMethods: (json['results'] as List<dynamic>?)
          ?.map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaymentMethodResultsToJson(
        _$_PaymentMethodResults instance) =>
    <String, dynamic>{
      'results': instance.paymentMethods,
    };
