import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'tax.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Tax {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'type_tax_use', fromJson: customFromJson)
  final String? typeTaxUse;
  @JsonKey(name: 'taxScope', fromJson: customFromJson)
  final String? taxScope;
  @JsonKey(name: 'company_id', fromJson: customFromJson)
  final int? companyId;
  @JsonKey(name: 'amountType', fromJson: customFromJson)
  final String? amountType;
  @JsonKey(fromJson: customFromJson)
  final double? amount;
  @JsonKey(fromJson: customFromJson)
  final String? description;
  @JsonKey( name: 'price_include')
  final bool? priceInclude;
  @JsonKey(fromJson: customFromJson, name: 'tax_group_id')
  final int? taxGroupId;
  final bool? analytic;
  @JsonKey(fromJson: customFromJson, name: 'country_id')
  final int? countryId;
  @JsonKey( name: 'include_base_amount')
  final bool? includeBaseAmount;
  @JsonKey(name: 'is_base_affected')
  final bool? isBaseAffected;
  @JsonKey(fromJson: customFromJson, name: 'children_tax_ids')
  @Property(type: PropertyType.byteVector)
  final List<int>? childrenTaxIds;
  @JsonKey(fromJson: customFromJson, name: 'invoice_repartition_line_ids')
  @Property(type: PropertyType.byteVector)
  final List<int>? invoiceRepartitionLineIds;
  @JsonKey(fromJson: customFromJson, name: 'refund_repartition_line_ids')
  @Property(type: PropertyType.byteVector)
  final List<int>? refundRepartitionLineIds;
  @JsonKey(fromJson: customFromJson)
  Tax({
    required this.odooId,
    this.id = 0,
    this.name,
    this.companyId,
    this.amount,
    this.amountType,
    this.analytic,
    this.childrenTaxIds,
    this.countryId,
    this.description,
    this.includeBaseAmount,
    this.invoiceRepartitionLineIds,
    this.isBaseAffected,
    this.priceInclude,
    this.refundRepartitionLineIds,
    this.taxGroupId,
    this.taxScope,
    this.typeTaxUse,
  });

  factory Tax.fromJson(Map<String, dynamic> json) => _$TaxFromJson(json);

  Map<String, dynamic> toJson() => _$TaxToJson(this);
}

@JsonSerializable()
class TaxMapper {
  final List<Tax> result;

  TaxMapper({required this.result});

  factory TaxMapper.fromJson(Map<String, dynamic> json) =>
      _$TaxMapperFromJson(json);

  Map<String, dynamic> toJson() => _$TaxMapperToJson(this);
}
