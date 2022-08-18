// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

POSCategory _$POSCategoryFromJson(Map<String, dynamic> json) => POSCategory(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      excludePosIds: customFromJson(json['exclude_pos_ids']),
      image128: customFromJson(json['image_128']),
      invisibleInUi: customFromJson(json['invisible_in_ui']),
      isPublished: customFromJson(json['is_published']),
      parentId: customFromJson(json['parent_id']),
      restaurantPrinterIds: customFromJson(json['restaurant_printer_ids']),
      sequence: customFromJson(json['sequence']),
      websiteImage1920: customFromJson(json['website_image_1920']),
    );

Map<String, dynamic> _$POSCategoryToJson(POSCategory instance) =>
    <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'image_128': instance.image128,
      'parent_id': instance.parentId,
      'sequence': instance.sequence,
      'exclude_pos_ids': instance.excludePosIds,
      'restaurant_printer_ids': instance.restaurantPrinterIds,
      'invisible_in_ui': instance.invisibleInUi,
      'website_image_1920': instance.websiteImage1920,
      'is_published': instance.isPublished,
    };

POSCategoryMapper _$POSCategoryMapperFromJson(Map<String, dynamic> json) =>
    POSCategoryMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => POSCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$POSCategoryMapperToJson(POSCategoryMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
