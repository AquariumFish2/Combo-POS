import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'key_type.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class KeyType {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  KeyType({
    required this.odooId,
    this.id = 0,
    this.name,
  });

  factory KeyType.fromJson(Map<String, dynamic> json) => _$KeyTypeFromJson(json);

  Map<String, dynamic> toJson() => _$KeyTypeToJson(this);
}

@JsonSerializable()
class KeyTypeMapper {
  final List<KeyType> result;

  KeyTypeMapper({required this.result});

  factory KeyTypeMapper.fromJson(Map<String, dynamic> json) =>
      _$KeyTypeMapperFromJson(json);

  Map<String, dynamic> toJson() => _$KeyTypeMapperToJson(this);
}
