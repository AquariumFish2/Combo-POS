import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'pos_security_role.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class POSSecurityRole {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
   @JsonKey(fromJson: customFromJson)
  final String? desc;
  @JsonKey(name: 'key_id', fromJson: customFromJson)
  final int? keyId;
  @JsonKey( fromJson: customFromJson)
  final bool? isDefaultValue;
  @JsonKey(name: 'company_id', fromJson: customFromJson)
  final int? companyId;
  POSSecurityRole({
    required this.odooId,
    this.id = 0,
    this.name,
    this.companyId,
    this.desc,
    this.isDefaultValue,
    this.keyId,
  });

  factory POSSecurityRole.fromJson(Map<String, dynamic> json) => _$POSSecurityRoleFromJson(json);

  Map<String, dynamic> toJson() => _$POSSecurityRoleToJson(this);
}

@JsonSerializable()
class POSSecurityRoleMapper {
  final List<POSSecurityRole> result;

  POSSecurityRoleMapper({required this.result});

  factory POSSecurityRoleMapper.fromJson(Map<String, dynamic> json) =>
      _$POSSecurityRoleMapperFromJson(json);

  Map<String, dynamic> toJson() => _$POSSecurityRoleMapperToJson(this);
}
