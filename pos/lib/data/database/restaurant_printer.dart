import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'restaurant_printer.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class RestaurantPrinter {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'printer_type', fromJson: customFromJson)
  final String? printerType;
  @JsonKey(name: 'proxy_ip', fromJson: customFromJson)
  final String? proxyIp;
  @JsonKey(name: 'epson_printer_ip', fromJson: customFromJson)
  final String? epsonPrinterIp;
  @JsonKey(name: 'pos_order_type_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? posOrderTypeIds;
  @JsonKey(name: 'pos_config_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? posConfigIds;
  @JsonKey(name: 'product_categories_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? productCategoriesIds;
  RestaurantPrinter({
    required this.odooId,
    this.id = 0,
    this.name,
    this.epsonPrinterIp,
    this.posConfigIds,
    this.posOrderTypeIds,
    this.printerType,
    this.productCategoriesIds,
    this.proxyIp,
  });

  factory RestaurantPrinter.fromJson(Map<String, dynamic> json) =>
      _$RestaurantPrinterFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantPrinterToJson(this);
}

@JsonSerializable()
class RestaurantPrinterMapper {
  final List<RestaurantPrinter> result;

  RestaurantPrinterMapper({required this.result});

  factory RestaurantPrinterMapper.fromJson(Map<String, dynamic> json) =>
      _$RestaurantPrinterMapperFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantPrinterMapperToJson(this);
}
