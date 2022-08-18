// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_POSCategory _$$_POSCategoryFromJson(Map<String, dynamic> json) =>
    _$_POSCategory(
      id: json['id'] as int,
      name: json['name'] as String,
      parentId: json['parent_id'] as bool?,
      sequence: json['sequence'] as int?,
      excludePosIds: (json['exclude_pos_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      restaurantPrinterIds: (json['restaurant_printer_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      invisibleInUi: json['invisible_in_ui'] as bool?,
      websiteImage1920: json['website_image_1920'] as bool?,
      isPublished: json['is_published'] as bool?,
    );

Map<String, dynamic> _$$_POSCategoryToJson(_$_POSCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parent_id': instance.parentId,
      'sequence': instance.sequence,
      'exclude_pos_ids': instance.excludePosIds,
      'restaurant_printer_ids': instance.restaurantPrinterIds,
      'invisible_in_ui': instance.invisibleInUi,
      'website_image_1920': instance.websiteImage1920,
      'is_published': instance.isPublished,
    };

_$_POSCategoryResults _$$_POSCategoryResultsFromJson(
        Map<String, dynamic> json) =>
    _$_POSCategoryResults(
      POSCategories: (json['results'] as List<dynamic>)
          .map((e) => POSCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_POSCategoryResultsToJson(
        _$_POSCategoryResults instance) =>
    <String, dynamic>{
      'results': instance.POSCategories,
    };
