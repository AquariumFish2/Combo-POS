// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_printer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantPrinter _$$_RestaurantPrinterFromJson(Map<String, dynamic> json) =>
    _$_RestaurantPrinter(
      id: json['id'] as String,
      name: json['name'] as String,
      printerType: json['printer_type'] as String?,
      proxyIp: json['proxy_ip'] as String?,
      epsonPrinterIp: json['epson_printer_ip'] as bool?,
      posOrderTypeIds: (json['pos_order_type_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      posConfigIds: (json['pos_config_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      productCategoriesIds: (json['product_categories_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_RestaurantPrinterToJson(
        _$_RestaurantPrinter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'printer_type': instance.printerType,
      'proxy_ip': instance.proxyIp,
      'epson_printer_ip': instance.epsonPrinterIp,
      'pos_order_type_ids': instance.posOrderTypeIds,
      'pos_config_ids': instance.posConfigIds,
      'product_categories_ids': instance.productCategoriesIds,
    };

_$_RestaurantPrinterResults _$$_RestaurantPrinterResultsFromJson(
        Map<String, dynamic> json) =>
    _$_RestaurantPrinterResults(
      restaurantPrinters: (json['results'] as List<dynamic>)
          .map((e) => RestaurantPrinter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RestaurantPrinterResultsToJson(
        _$_RestaurantPrinterResults instance) =>
    <String, dynamic>{
      'results': instance.restaurantPrinters,
    };
