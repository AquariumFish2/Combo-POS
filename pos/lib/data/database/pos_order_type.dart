import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/order.dart';

part 'pos_order_type.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class POSOrderType {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'is_show_customer_info')
  final bool? isShowCustomerInfo;
  @JsonKey(name: 'is_require_information')
  final bool? isRequireInformation;
  @JsonKey(name: 'is_require_driver')
  final bool? isRequireDriver;
  @JsonKey(name: 'is_auto_open_table_screen')
  final bool? isAutoOpenTableScreen;
  @JsonKey(fromJson: customFromJson, name: 'pricelist_id')
  final int? pricelistId;
  @JsonKey(fromJson: customFromJson)
  final String? type;
  @JsonKey(fromJson: customFromJson, name: 'delivary_product_id')
  final int? delivaryProductId;
  @JsonKey(fromJson: customFromJson, name: 'extra_product_id')
  final int? extraProductId;
  @JsonKey(fromJson: customFromJson, name: 'extra_percentage')
  final double? extraPercentage;
  @JsonKey(fromJson: customFromJson, name: 'company_id')
  final int? companyId;
  @JsonKey(fromJson: customFromJson, name: 'payment_method_ids')
  @Property(type: PropertyType.byteVector)
  final List<int>? paymentMethodIds;

  POSOrderType({
    required this.odooId,
    this.id = 0,
    this.name,
    this.companyId,
    this.delivaryProductId,
    this.extraPercentage,
    this.extraProductId,
    this.isAutoOpenTableScreen,
    this.isRequireDriver,
    this.isRequireInformation,
    this.isShowCustomerInfo,
    this.paymentMethodIds,
    this.pricelistId,
    this.type,
  });

  factory POSOrderType.fromJson(Map<String, dynamic> json) =>
      _$POSOrderTypeFromJson(json);

  Map<String, dynamic> toJson() => _$POSOrderTypeToJson(this);
}

@JsonSerializable()
class POSOrderTypeMapper {
  final List<POSOrderType> result;

  POSOrderTypeMapper({required this.result});

  factory POSOrderTypeMapper.fromJson(Map<String, dynamic> json) =>
      _$POSOrderTypeMapperFromJson(json);

  Map<String, dynamic> toJson() => _$POSOrderTypeMapperToJson(this);
}
