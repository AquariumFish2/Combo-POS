// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      id: json['id'] as String,
      name: json['name'] as String,
      image1920: json['image_1920'] as String?,
      street: json['street'] as String?,
      street2: json['street2'] as bool?,
      city: json['city'] as String?,
      stateId: json['state_id'] as String?,
      zip: json['zip'] as String?,
      countryId: json['country_id'] as int?,
      vat: json['vat'] as bool?,
      branchId: json['branch_id'] as bool?,
      phone: json['phone'] as String?,
      mobile: json['mobile'] as bool?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      categoryId: (json['category_id'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      companyId: json['company_id'] as bool?,
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_1920': instance.image1920,
      'street': instance.street,
      'street2': instance.street2,
      'city': instance.city,
      'state_id': instance.stateId,
      'zip': instance.zip,
      'country_id': instance.countryId,
      'vat': instance.vat,
      'branch_id': instance.branchId,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'email': instance.email,
      'website': instance.website,
      'category_id': instance.categoryId,
      'company_id': instance.companyId,
    };

_$_CustomerResults _$$_CustomerResultsFromJson(Map<String, dynamic> json) =>
    _$_CustomerResults(
      Customers: (json['results'] as List<dynamic>)
          .map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CustomerResultsToJson(_$_CustomerResults instance) =>
    <String, dynamic>{
      'results': instance.Customers,
    };
