// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      identifyCustomer: customFromJson(json['identify_customer']),
      methodType: customFromJson(json['method_type']),
      odooJournalID: customFromJson(json['journal_id']),
    )
      ..odooJournalIDFromdb = json['odooJournalIDFromdb'] as String?
      ..jornalName = json['jornalName'] as String?;

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'method_type': instance.methodType,
      'journal_id': instance.odooJournalID,
      'odooJournalIDFromdb': instance.odooJournalIDFromdb,
      'identify_customer': instance.identifyCustomer,
      'jornalName': instance.jornalName,
    };

PaymentMethodMapper _$PaymentMethodMapperFromJson(Map<String, dynamic> json) =>
    PaymentMethodMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentMethodMapperToJson(
        PaymentMethodMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
