import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'price_list.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class PriceList {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  //TODO: add custom type logic
  @JsonKey(name: 'item_ids', fromJson: customFromJson)
  final List? itemIds;
  @JsonKey(name: 'country_group_ids', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? countryGroupIds;
  @JsonKey(name: 'website_id', fromJson: customFromJson)
  final int? websiteId;
  final bool? selectable;
  @JsonKey(fromJson: customFromJson)
  final String? code;
  PriceList({
    required this.odooId,
    this.id = 0,
    this.name,
    this.code,
    this.countryGroupIds,
    this.selectable,
    this.itemIds,
    this.websiteId,
  });

  factory PriceList.fromJson(Map<String, dynamic> json) =>
      _$PriceListFromJson(json);

  Map<String, dynamic> toJson() => _$PriceListToJson(this);
}

@JsonSerializable()
@Entity()
class ItemId {
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(name: '__')
  int id;
  @JsonKey(fromJson: customFromJson, name: 'product_tmpl_id')
  int? productTmplId;
  @JsonKey(fromJson: customFromJson, name: 'product_id')
  int? productId;
  @JsonKey(fromJson: customFromJson, name: 'min_quantity')
  double? minQuantity;
  @JsonKey(fromJson: customFromJson, name: 'fixed_price')
  double? fixedPrice;
  @JsonKey(fromJson: customFromJson, name: 'date_start')
  String? dateStart;
  @JsonKey(fromJson: customFromJson, name: 'date_end')
  String? dateEnd;
  ItemId(
      {required this.odooId,
      this.id = 0,
      this.dateEnd,
      this.dateStart,
      this.fixedPrice,
      this.minQuantity,
      this.productId,
      this.productTmplId});
  factory ItemId.fromJson(Map<String, dynamic> json) => _$ItemIdFromJson(json);

  Map<String, dynamic> toJson() => _$ItemIdToJson(this);
}

@JsonSerializable()
class PriceListMapper {
  final List<PriceList> result;

  PriceListMapper({required this.result});

  factory PriceListMapper.fromJson(Map<String, dynamic> json) =>
      _$PriceListMapperFromJson(json);

  Map<String, dynamic> toJson() => _$PriceListMapperToJson(this);
}
