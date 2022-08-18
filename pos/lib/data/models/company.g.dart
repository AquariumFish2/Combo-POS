// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Company _$$_CompanyFromJson(Map<String, dynamic> json) => _$_Company(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      street: json['street'] as String?,
      street2: json['street2'] as String?,
      city: json['city'] as String?,
      stateId: json['state_id'] as int?,
      zip: json['zip'] as String?,
      companyRegistry: json['company_registry'],
      vat: json['vat'],
      currencyId: json['currency_id'],
    );

Map<String, dynamic> _$$_CompanyToJson(_$_Company instance) =>
    <String, dynamic>{
      'id': instance.id,
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
    };
