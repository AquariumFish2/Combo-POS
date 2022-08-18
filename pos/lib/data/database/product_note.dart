import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'product_note.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  }else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class ProductNote {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'pos_category_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? posCategoryIds;
  ProductNote({
    required this.odooId,
    this.id = 0,
    this.name,
    this.posCategoryIds,
  });

  factory ProductNote.fromJson(Map<String, dynamic> json) =>
      _$ProductNoteFromJson(json);

  Map<String, dynamic> toJson() => _$ProductNoteToJson(this);
}

@JsonSerializable()
class ProductNoteMapper {
  final List<ProductNote> result;

  ProductNoteMapper({required this.result});

  factory ProductNoteMapper.fromJson(Map<String, dynamic> json) =>
      _$ProductNoteMapperFromJson(json);

  Map<String, dynamic> toJson() => _$ProductNoteMapperToJson(this);
}
