// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      image: customFromJson(json['image']),
      phone: customFromJson(json['phone']),
      mobile: customFromJson(json['mobile']),
      email: customFromJson(json['email']),
      street: customFromJson(json['street']),
      street2: customFromJson(json['street2']),
      city: customFromJson(json['city']),
      stateId: customFromJson(json['state_id']),
      zip: customFromJson(json['zip']),
      companyRegistry: customFromJson(json['company_registry']),
      vat: customFromJson(json['vat']),
      currencyId: customFromJson(json['currency_id']),
      gotBranches: json['gotBranches'] as bool? ?? false,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.odooId,
      '__': instance.id,
      'name': instance.name,
      'image': instance.image,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'email': instance.email,
      'street': instance.street,
      'street2': instance.street2,
      'city': instance.city,
      'state_id': instance.stateId,
      'zip': instance.zip,
      'company_registry': instance.companyRegistry,
      'vat': instance.vat,
      'currency_id': instance.currencyId,
      'gotBranches': instance.gotBranches,
    };

CompanyMapper _$CompanyMapperFromJson(Map<String, dynamic> json) =>
    CompanyMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompanyMapperToJson(CompanyMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
