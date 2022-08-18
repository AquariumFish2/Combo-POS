// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Auth _$$_AuthFromJson(Map<String, dynamic> json) => _$_Auth(
      uid: json['uid'] as int,
      accessToken: customFromJson(json['access_token']),
      companyName: json['company_name'] == null
          ? ''
          : customFromJson(json['company_name']),
      companyId: customFromJson(json['company_id']),
      companyIds: customFromJson(json['company_ids']),
      partnerId: customFromJson(json['partner_id']),
      country: json['country'] == null ? '' : customFromJson(json['country']),
      contactAddress: json['contact_address'] == null
          ? ''
          : customFromJson(json['contact_address']),
    );

Map<String, dynamic> _$$_AuthToJson(_$_Auth instance) => <String, dynamic>{
      'uid': instance.uid,
      'access_token': instance.accessToken,
      'company_name': instance.companyName,
      'company_id': instance.companyId,
      'company_ids': instance.companyIds,
      'partner_id': instance.partnerId,
      'country': instance.country,
      'contact_address': instance.contactAddress,
    };
