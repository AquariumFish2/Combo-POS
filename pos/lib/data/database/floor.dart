import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'floor.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Floor {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'pos_config_id', fromJson: customFromJson)
  final int? posConfigId;
  @JsonKey(name: 'pricelist_id', fromJson: customFromJson)
  final int? pricelistId;
  @JsonKey(name: 'background_color', fromJson: customFromJson)
  final String? backgroundColor;
  @JsonKey(fromJson: customFromJson, name: 'width')
  double? width;
  @JsonKey(fromJson: customFromJson, name: 'height')
  double? height;
  bool gotRatio;
  //TODO: add custom object logic
  @JsonKey(name: 'table_ids', fromJson: customFromJson)
  final List? tableIdsFromJson;
  @Backlink()
  final tableIds = ToMany<TableId>();
  Floor({
    required this.odooId,
    this.id = 0,
    this.name,
    this.backgroundColor,
    this.posConfigId,
    this.pricelistId,
    this.tableIdsFromJson,
    this.width,
    this.height,
    this.gotRatio = false,
  });

  factory Floor.fromJson(Map<String, dynamic> json) => _$FloorFromJson(json);

  Map<String, dynamic> toJson() => _$FloorToJson(this);
}

@JsonSerializable()
@Entity()
class TableId {
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(name: '__')
  int id;
  @JsonKey(fromJson: customFromJson)
  String? name;
  @JsonKey(fromJson: customFromJson)
  int? seats;
  @JsonKey(fromJson: customFromJson, name: 'barcode_url')
  String? barcodeUrl;
  @JsonKey(fromJson: customFromJson, name: 'qr_image')
  String? qrImage;
  @JsonKey(fromJson: customFromJson, name: 'pricelist_id')
  int? pricelistId;
  @JsonKey(name: 'locked')
  bool? locked;
  @JsonKey(fromJson: customFromJson, name: 'user_ids')
  @Property(type: PropertyType.byteVector)
  List<int>? userIds;
  @JsonKey(fromJson: customFromJson)
  String? shape;
  @JsonKey(fromJson: customFromJson)
  String? color;
  @JsonKey(fromJson: customFromJson, name: 'position_h')
  double? positionH;
  @JsonKey(fromJson: customFromJson, name: 'position_v')
  double? positionV;
  @JsonKey(fromJson: customFromJson, name: 'width')
  double? width;
  @JsonKey(fromJson: customFromJson, name: 'height')
  double? height;
  final floor = ToOne<Floor>();
  bool chosen;
  TableId({
    required this.odooId,
    this.id = 0,
    this.name,
    this.barcodeUrl,
    this.color,
    this.height,
    this.locked,
    this.positionH,
    this.positionV,
    this.pricelistId,
    this.qrImage,
    this.seats,
    this.shape,
    this.userIds,
    this.width,
    this.chosen = false,
  });
  factory TableId.fromJson(Map<String, dynamic> json) =>
      _$TableIdFromJson(json);

  Map<String, dynamic> toJson() => _$TableIdToJson(this);
}

@JsonSerializable()
class FloorMapper {
  final List<Floor> result;

  FloorMapper({required this.result});

  factory FloorMapper.fromJson(Map<String, dynamic> json) =>
      _$FloorMapperFromJson(json);

  Map<String, dynamic> toJson() => _$FloorMapperToJson(this);
}
