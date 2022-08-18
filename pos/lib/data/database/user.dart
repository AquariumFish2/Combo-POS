import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/pos.dart';

part 'user.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class User {
  @JsonKey(name: '_')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(fromJson: customFromJson)
  final String? login;
  @JsonKey(fromJson: customFromJson, name: 'security_pin')
  final String? securityPin;
  @JsonKey(fromJson: customFromJson, name: 'pos_user_type')
  final String? posUserType;
  @JsonKey(fromJson: customFromJson)
  final String? image;
  @JsonKey(fromJson: customFromJson, name: 'pos_security_group_ids')
  @Property(type: PropertyType.byteVector)
  final List<int>? posSecurityGroupIds;
  @JsonKey(fromJson: customFromJson, name: 'company_ids')
  @Property(type: PropertyType.byteVector)
  final List<int>? companyIds;
  final ToOne<POS> pos = ToOne<POS>();
  User({
    required this.odooId,
    this.id = 0,
    this.name,
    this.companyIds,
    this.image,
    this.login,
    this.posSecurityGroupIds,
    this.posUserType,
    this.securityPin,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class UserMapper {
  final List<User> result;

  UserMapper({required this.result});

  factory UserMapper.fromJson(Map<String, dynamic> json) =>
      _$UserMapperFromJson(json);

  Map<String, dynamic> toJson() => _$UserMapperToJson(this);
}
