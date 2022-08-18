// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      name: json['name'] as String,
      login: json['login'] as String,
      pinCode: pinCodeFromJson(json['security_pin']),
      posUserType: json['pos_user_type'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'login': instance.login,
      'security_pin': pinCodeToJson(instance.pinCode),
      'pos_user_type': instance.posUserType,
    };

_$_UserResults _$$_UserResultsFromJson(Map<String, dynamic> json) =>
    _$_UserResults(
      users: (json['result'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserResultsToJson(_$_UserResults instance) =>
    <String, dynamic>{
      'result': instance.users,
    };
