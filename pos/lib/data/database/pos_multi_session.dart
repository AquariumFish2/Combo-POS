import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'pos_multi_session.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class POSMultiSession {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'pos_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? posIds;
  @JsonKey(name: 'floor_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? floorIds;
  @JsonKey(name: 'table_blocking')
  final bool? tableBlocking;
  @JsonKey(name: 'multi_session_active')
  final bool? multiSessionActive;
  @JsonKey(name: 'sync_server')
  final bool? syncServer;
  @JsonKey(name: 'fiscal_position_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? fiscalPositionIds;
  @JsonKey(name: 'company_id', fromJson: customFromJson)
  final int? companyId;

  POSMultiSession({
    required this.odooId,
    this.id = 0,
    this.name,
    this.companyId,
    this.fiscalPositionIds,
    this.floorIds,
    this.multiSessionActive,
    this.posIds,
    this.syncServer,
    this.tableBlocking,
  });

  factory POSMultiSession.fromJson(Map<String, dynamic> json) =>
      _$POSMultiSessionFromJson(json);

  Map<String, dynamic> toJson() => _$POSMultiSessionToJson(this);
}

@JsonSerializable()
class POSMultiSessionMapper {
  final List<POSMultiSession> result;

  POSMultiSessionMapper({required this.result});

  factory POSMultiSessionMapper.fromJson(Map<String, dynamic> json) =>
      _$POSMultiSessionMapperFromJson(json);

  Map<String, dynamic> toJson() => _$POSMultiSessionMapperToJson(this);
}
