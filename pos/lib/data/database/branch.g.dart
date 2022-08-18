// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Branch1 _$Branch1FromJson(Map<String, dynamic> json) => Branch1(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      telephone: customFromJson(json['telephone']),
      address: customFromJson(json['address']),
      companyId: customFromJson(json['company_id']),
      odooJournalID: json['journal_id'] == null
          ? null
          : JournalID.fromJson(json['journal_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Branch1ToJson(Branch1 instance) => <String, dynamic>{
      'id': instance.odooId,
      '__': instance.id,
      'name': instance.name,
      'telephone': instance.telephone,
      'address': instance.address,
      'company_id': instance.companyId,
      'journal_id': instance.odooJournalID,
    };

JournalID _$JournalIDFromJson(Map<String, dynamic> json) => JournalID(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
    );

Map<String, dynamic> _$JournalIDToJson(JournalID instance) => <String, dynamic>{
      'id': instance.odooId,
      '__': instance.id,
      'name': instance.name,
    };

Branch1Mapper _$Branch1MapperFromJson(Map<String, dynamic> json) =>
    Branch1Mapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => Branch1.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Branch1MapperToJson(Branch1Mapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
