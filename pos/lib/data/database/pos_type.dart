import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'pos_type.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class POSType {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  POSType({
    required this.odooId,
    this.id = 0,
    this.name,
  });

  factory POSType.fromJson(Map<String, dynamic> json) => _$POSTypeFromJson(json);

  Map<String, dynamic> toJson() => _$POSTypeToJson(this);
}

@JsonSerializable()
class POSTypeMapper {
  final List<POSType> result;

  POSTypeMapper({required this.result});

  factory POSTypeMapper.fromJson(Map<String, dynamic> json) =>
      _$POSTypeMapperFromJson(json);

  Map<String, dynamic> toJson() => _$POSTypeMapperToJson(this);
}
