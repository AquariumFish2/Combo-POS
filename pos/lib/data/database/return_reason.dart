import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'return_reason.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class ReturnReason {
  @JsonKey(name: '_')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'company_name', fromJson: customFromJson)
  final String? companyName;

  ReturnReason({
    required this.odooId,
    this.id = 0,
    this.name,
    this.companyName,
  });

  factory ReturnReason.fromJson(Map<String, dynamic> json) =>
      _$ReturnReasonFromJson(json);

  Map<String, dynamic> toJson() => _$ReturnReasonToJson(this);
}

@JsonSerializable()
class ReturnReasonMapper {
  final List<ReturnReason> result;

  ReturnReasonMapper({required this.result});

  factory ReturnReasonMapper.fromJson(Map<String, dynamic> json) =>
      _$ReturnReasonMapperFromJson(json);

  Map<String, dynamic> toJson() => _$ReturnReasonMapperToJson(this);
}
