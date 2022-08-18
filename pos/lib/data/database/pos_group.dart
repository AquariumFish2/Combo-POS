import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'pos_group.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class POSGroup {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'pos_role_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? posRoleIds;
  @JsonKey(name: 'pos_user_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? posUserIds;
  @JsonKey(name: 'company_id', fromJson: customFromJson)
  final int? companyId;
  POSGroup({
    required this.odooId,
    this.id = 0,
    this.name,
    this.companyId,
    this.posRoleIds,
    this.posUserIds,
  });

  factory POSGroup.fromJson(Map<String, dynamic> json) =>
      _$POSGroupFromJson(json);

  Map<String, dynamic> toJson() => _$POSGroupToJson(this);
}

@JsonSerializable()
class POSGroupMapper {
  final List<POSGroup> result;

  POSGroupMapper({required this.result});

  factory POSGroupMapper.fromJson(Map<String, dynamic> json) =>
      _$POSGroupMapperFromJson(json);

  Map<String, dynamic> toJson() => _$POSGroupMapperToJson(this);
}
