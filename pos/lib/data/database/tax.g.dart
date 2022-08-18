// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tax _$TaxFromJson(Map<String, dynamic> json) => Tax(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      companyId: customFromJson(json['company_id']),
      amount: customFromJson(json['amount']),
      amountType: customFromJson(json['amountType']),
      analytic: customFromJson(json['analytic']),
      childrenTaxIds: customFromJson(json['children_tax_ids']),
      countryId: customFromJson(json['country_id']),
      description: customFromJson(json['description']),
      includeBaseAmount: customFromJson(json['include_base_amount']),
      invoiceRepartitionLineIds:
          customFromJson(json['invoice_repartition_line_ids']),
      isBaseAffected: customFromJson(json['is_base_affected']),
      priceInclude: customFromJson(json['price_include']),
      refundRepartitionLineIds:
          customFromJson(json['refund_repartition_line_ids']),
      taxGroupId: customFromJson(json['tax_group_id']),
      taxScope: customFromJson(json['taxScope']),
      typeTaxUse: customFromJson(json['type_tax_use']),
    );

Map<String, dynamic> _$TaxToJson(Tax instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'type_tax_use': instance.typeTaxUse,
      'taxScope': instance.taxScope,
      'company_id': instance.companyId,
      'amountType': instance.amountType,
      'amount': instance.amount,
      'description': instance.description,
      'price_include': instance.priceInclude,
      'tax_group_id': instance.taxGroupId,
      'analytic': instance.analytic,
      'country_id': instance.countryId,
      'include_base_amount': instance.includeBaseAmount,
      'is_base_affected': instance.isBaseAffected,
      'children_tax_ids': instance.childrenTaxIds,
      'invoice_repartition_line_ids': instance.invoiceRepartitionLineIds,
      'refund_repartition_line_ids': instance.refundRepartitionLineIds,
    };

TaxMapper _$TaxMapperFromJson(Map<String, dynamic> json) => TaxMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Tax.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TaxMapperToJson(TaxMapper instance) => <String, dynamic>{
      'result': instance.result,
    };
