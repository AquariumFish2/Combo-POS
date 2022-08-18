// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      companyId: customFromJson(json['company_id']),
      branchId: customFromJson(json['branch_id']),
      categoryId: customFromJson(json['category_id']),
      city: customFromJson(json['city']),
      countryId: customFromJson(json['country_id']),
      email: customFromJson(json['email']),
      image1920: customFromJson(json['image_1920']),
      mobile: customFromJson(json['mobile']),
      phone: customFromJson(json['phone']),
      posTotalAmount: customFromJson(json['pos_total_amount']),
      stateId: customFromJson(json['state_id']),
      street: customFromJson(json['street']),
      street2: customFromJson(json['street2']),
      vat: customFromJson(json['vat']),
      website: customFromJson(json['website']),
      zip: customFromJson(json['zip']),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
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
      'pos_total_amount': instance.posTotalAmount,
    };

CustomerMapper _$CustomerMapperFromJson(Map<String, dynamic> json) =>
    CustomerMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerMapperToJson(CustomerMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
