import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_printer.freezed.dart';
part 'restaurant_printer.g.dart';
@freezed
class RestaurantPrinter with _$RestaurantPrinter {
  const factory RestaurantPrinter({
    required String id,
    required String name,
    @JsonKey(name:'printer_type') String? printerType,
    @JsonKey(name:'proxy_ip') String? proxyIp,
    @JsonKey(name:'epson_printer_ip') bool? epsonPrinterIp,
    @JsonKey(name:'pos_order_type_ids') List<int>? posOrderTypeIds,
    @JsonKey(name:'pos_config_ids') List<int>? posConfigIds,
    @JsonKey(name:'product_categories_ids') List<int>? productCategoriesIds,
  }) = _RestaurantPrinter;
  factory RestaurantPrinter.fromJson(Map<String, dynamic> json) => _$RestaurantPrinterFromJson(json);
}

@freezed
class RestaurantPrinterResults with _$RestaurantPrinterResults {
  const factory RestaurantPrinterResults({
    @JsonKey(name: 'results') required List<RestaurantPrinter> restaurantPrinters,
  }) = _RestaurantPrinterResults;
  factory RestaurantPrinterResults.fromJson(Map<String, dynamic> json) =>
      _$RestaurantPrinterResultsFromJson(json);
}
