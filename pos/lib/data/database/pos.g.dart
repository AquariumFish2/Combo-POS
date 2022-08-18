// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

POS _$POSFromJson(Map<String, dynamic> json) => POS(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      branchId: customFromJson(json['branch_id']),
      ifaceTaxIncluded: customFromJson(json['iface_tax_included']),
      posTypeId: customFromJson(json['pos_type_id']),
      userIds: customFromJson(json['user_ids']),
    );

Map<String, dynamic> _$POSToJson(POS instance) => <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'branch_id': instance.branchId,
      'user_ids': instance.userIds,
      'pos_type_id': instance.posTypeId,
      'iface_tax_included': instance.ifaceTaxIncluded,
    };

POSMapper _$POSMapperFromJson(Map<String, dynamic> json) => POSMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => POS.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$POSMapperToJson(POSMapper instance) => <String, dynamic>{
      'result': instance.result,
    };
