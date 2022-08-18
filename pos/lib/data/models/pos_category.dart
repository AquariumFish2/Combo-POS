import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_category.freezed.dart';
part 'pos_category.g.dart';

@freezed
class POSCategory with _$POSCategory {
  const factory POSCategory({
    required int id,
    required String name,
    @JsonKey(name: 'parent_id') bool? parentId,
    int? sequence,
    @JsonKey(name: 'exclude_pos_ids') List<int>? excludePosIds,
    @JsonKey(name: 'restaurant_printer_ids') List<int>? restaurantPrinterIds,
    @JsonKey(name: 'invisible_in_ui') bool? invisibleInUi,
    @JsonKey(name: 'website_image_1920') bool? websiteImage1920,
    @JsonKey(name: 'is_published') bool? isPublished,
  }) = _POSCategory;
  factory POSCategory.fromJson(Map<String, dynamic> json) =>
      _$POSCategoryFromJson(json);
}

@freezed
class POSCategoryResults with _$POSCategoryResults {
  const factory POSCategoryResults({
    @JsonKey(name: 'results') required List<POSCategory> POSCategories,
  }) = _POSCategoryResults;
  factory POSCategoryResults.fromJson(Map<String, dynamic> json) =>
      _$POSCategoryResultsFromJson(json);
}
