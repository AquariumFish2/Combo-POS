import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'driver.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Driver {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey( fromJson: customFromJson)
  final String? code;
  final bool? active;
  @JsonKey(name: 'company_id', fromJson: customFromJson)
  final int? companyId;
  Driver({
    required this.odooId,
    this.id = 0,
    this.name,
    this.code,
    this.active,
    this.companyId,
  });

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  Map<String, dynamic> toJson() => _$DriverToJson(this);
}

@JsonSerializable()
class DriverMapper {
  final List<Driver> result;

  DriverMapper({required this.result});

  factory DriverMapper.fromJson(Map<String, dynamic> json) =>
      _$DriverMapperFromJson(json);

  Map<String, dynamic> toJson() => _$DriverMapperToJson(this);
}
