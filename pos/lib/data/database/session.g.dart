// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Session1 _$Session1FromJson(Map<String, dynamic> json) => Session1(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      dbLink: json['dbLink'] as String?,
      endingCredit: json['endingCredit'] as int?,
      posName: json['posName'] as String?,
      sessionEndTime: json['sessionEndTime'] as String?,
      sessionNumber: json['sessionNumber'] as int?,
      sessionOpenedBy: json['sessionOpenedBy'] as String?,
      sessionStartTime: json['sessionStartTime'] as String?,
      sessionStatus: json['sessionStatus'] as String?,
      startingCredit: json['startingCredit'] as int?,
      userName: json['userName'] as String?,
      version: json['version'] as String?,
      workingDate: json['workingDate'] as String?,
    );

Map<String, dynamic> _$Session1ToJson(Session1 instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'dbLink': instance.dbLink,
      'posName': instance.posName,
      'sessionOpenedBy': instance.sessionOpenedBy,
      'sessionNumber': instance.sessionNumber,
      'sessionStatus': instance.sessionStatus,
      'workingDate': instance.workingDate,
      'sessionStartTime': instance.sessionStartTime,
      'sessionEndTime': instance.sessionEndTime,
      'startingCredit': instance.startingCredit,
      'endingCredit': instance.endingCredit,
      'version': instance.version,
      'userName': instance.userName,
    };
