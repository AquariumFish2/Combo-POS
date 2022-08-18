// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      odooId: json['id'] as int,
      id: json['_'] as int? ?? 0,
      name: customFromJson(json['name']),
      companyIds: customFromJson(json['company_ids']),
      image: customFromJson(json['image']),
      login: customFromJson(json['login']),
      posSecurityGroupIds: customFromJson(json['pos_security_group_ids']),
      posUserType: customFromJson(json['pos_user_type']),
      securityPin: customFromJson(json['security_pin']),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'login': instance.login,
      'security_pin': instance.securityPin,
      'pos_user_type': instance.posUserType,
      'image': instance.image,
      'pos_security_group_ids': instance.posSecurityGroupIds,
      'company_ids': instance.companyIds,
    };

UserMapper _$UserMapperFromJson(Map<String, dynamic> json) => UserMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserMapperToJson(UserMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
