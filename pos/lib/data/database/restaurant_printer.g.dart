// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_printer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantPrinter _$RestaurantPrinterFromJson(Map<String, dynamic> json) =>
    RestaurantPrinter(
      odooId: json['id'] as int,
      id: json['__'] as int? ?? 0,
      name: customFromJson(json['name']),
      epsonPrinterIp: customFromJson(json['epson_printer_ip']),
      posConfigIds: customFromJson(json['pos_config_ids']),
      posOrderTypeIds: customFromJson(json['pos_order_type_ids']),
      printerType: customFromJson(json['printer_type']),
      productCategoriesIds: customFromJson(json['product_categories_ids']),
      proxyIp: customFromJson(json['proxy_ip']),
    );

Map<String, dynamic> _$RestaurantPrinterToJson(RestaurantPrinter instance) =>
    <String, dynamic>{
      '__': instance.id,
      'id': instance.odooId,
      'name': instance.name,
      'printer_type': instance.printerType,
      'proxy_ip': instance.proxyIp,
      'epson_printer_ip': instance.epsonPrinterIp,
      'pos_order_type_ids': instance.posOrderTypeIds,
      'pos_config_ids': instance.posConfigIds,
      'product_categories_ids': instance.productCategoriesIds,
    };

RestaurantPrinterMapper _$RestaurantPrinterMapperFromJson(
        Map<String, dynamic> json) =>
    RestaurantPrinterMapper(
      result: (json['result'] as List<dynamic>)
          .map((e) => RestaurantPrinter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestaurantPrinterMapperToJson(
        RestaurantPrinterMapper instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
