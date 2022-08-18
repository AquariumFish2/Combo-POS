import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'scrap_reason.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class ScrapReasons {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson, name: 'short_name')
  final String? shortName;
  @JsonKey(fromJson: customFromJson)
  final String? desc;
  ScrapReasons({
    required this.odooId,
    this.id = 0,
    this.shortName,
    this.desc,
  });

  factory ScrapReasons.fromJson(Map<String, dynamic> json) =>
      _$ScrapReasonsFromJson(json);

  Map<String, dynamic> toJson() => _$ScrapReasonsToJson(this);
}

@JsonSerializable()
class ScrapReasonsMapper {
  final List<ScrapReasons> result;

  ScrapReasonsMapper({required this.result});

  factory ScrapReasonsMapper.fromJson(Map<String, dynamic> json) =>
      _$ScrapReasonsMapperFromJson(json);

  Map<String, dynamic> toJson() => _$ScrapReasonsMapperToJson(this);
}
