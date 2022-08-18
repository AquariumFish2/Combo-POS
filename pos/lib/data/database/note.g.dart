// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
      id: json['id'] as int? ?? 0,
      isSelected: json['isSelected'] as bool? ?? false,
      categoryIds: json['categoryIds'] as List<dynamic>?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'name': instance.name,
      'isSelected': instance.isSelected,
      'id': instance.id,
      'categoryIds': instance.categoryIds,
    };
