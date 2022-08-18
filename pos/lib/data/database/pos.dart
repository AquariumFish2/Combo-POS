import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/branch.dart';
import 'package:pos/data/database/user.dart';

part 'pos.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class POS {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'branch_id', fromJson: customFromJson)
  final int? branchId;
  @JsonKey(name: 'user_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? userIds;
  @JsonKey(name: 'pos_type_id', fromJson: customFromJson)
  final int? posTypeId;
  @JsonKey(name: 'iface_tax_included', fromJson: customFromJson)
  final String? ifaceTaxIncluded;
  POS({
    required this.odooId,
    this.id = 0,
    this.name,
    this.branchId,
    this.ifaceTaxIncluded,
    this.posTypeId,
    this.userIds,
  });

  factory POS.fromJson(Map<String, dynamic> json) => _$POSFromJson(json);

  Map<String, dynamic> toJson() => _$POSToJson(this);
}

@JsonSerializable()
class POSMapper {
  final List<POS> result;

  POSMapper({required this.result});

  factory POSMapper.fromJson(Map<String, dynamic> json) =>
      _$POSMapperFromJson(json);

  Map<String, dynamic> toJson() => _$POSMapperToJson(this);
}
