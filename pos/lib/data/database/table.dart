import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'table.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Table {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(fromJson: customFromJson)
  final int? seats;
  @JsonKey(name: 'floor_id', fromJson: customFromJson)
  final int? floorId;
  final bool? locked;
  @JsonKey(fromJson: customFromJson)
  final String? shape;
  Table({
    required this.odooId,
    this.id = 0,
    this.name,
    this.floorId,
    this.locked,
    this.seats,
    this.shape,
  });

  factory Table.fromJson(Map<String, dynamic> json) => _$TableFromJson(json);

  Map<String, dynamic> toJson() => _$TableToJson(this);
}

@JsonSerializable()
class TableMapper {
  final List<Table> result;

  TableMapper({required this.result});

  factory TableMapper.fromJson(Map<String, dynamic> json) =>
      _$TableMapperFromJson(json);

  Map<String, dynamic> toJson() => _$TableMapperToJson(this);
}
