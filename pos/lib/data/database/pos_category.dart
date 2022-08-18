import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'pos_category.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class POSCategory {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'image_128', fromJson: customFromJson)
  final String? image128;
  @JsonKey(name: 'parent_id', fromJson: customFromJson)
  final int? parentId;
  @JsonKey(fromJson: customFromJson)
  final int? sequence;
  @JsonKey(name: 'exclude_pos_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? excludePosIds;
  @JsonKey(name: 'restaurant_printer_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? restaurantPrinterIds;
  @JsonKey(name: 'invisible_in_ui')
  final bool? invisibleInUi;
  @JsonKey(name: 'website_image_1920', fromJson: customFromJson)
  final String? websiteImage1920;
  @JsonKey(name: 'is_published')
  final bool? isPublished;
  POSCategory({
    required this.odooId,
    this.id = 0,
    this.name,
    this.excludePosIds,
    this.image128,
    this.invisibleInUi,
    this.isPublished,
    this.parentId,
    this.restaurantPrinterIds,
    this.sequence,
    this.websiteImage1920,
  });

  factory POSCategory.fromJson(Map<String, dynamic> json) =>
      _$POSCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$POSCategoryToJson(this);
}

@JsonSerializable()
class POSCategoryMapper {
  final List<POSCategory> result;

  POSCategoryMapper({required this.result});

  factory POSCategoryMapper.fromJson(Map<String, dynamic> json) =>
      _$POSCategoryMapperFromJson(json);

  Map<String, dynamic> toJson() => _$POSCategoryMapperToJson(this);
}
