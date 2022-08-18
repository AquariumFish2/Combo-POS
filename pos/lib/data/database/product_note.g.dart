// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductNote _$ProductNoteFromJson(Map<String, dynamic> json) => ProductNote(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      posCategoryIds: customFromJson(json['pos_category_ids']),
    );

Map<String, dynamic> _$ProductNoteToJson(ProductNote instance) =>
    <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'pos_category_ids': instance.posCategoryIds,
    };

ProductNoteMapper _$ProductNoteMapperFromJson(Map<String, dynamic> json) =>
    ProductNoteMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => ProductNote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductNoteMapperToJson(ProductNoteMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
