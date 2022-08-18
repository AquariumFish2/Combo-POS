import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'customer.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Customer {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(name: 'image_1920', fromJson: customFromJson)
  final String? image1920;
  @JsonKey(fromJson: customFromJson)
  final String? street;
  @JsonKey(fromJson: customFromJson)
  final String? street2;
  @JsonKey(fromJson: customFromJson)
  final String? city;
  @JsonKey(name: 'state_id', fromJson: customFromJson)
  final int? stateId;
  @JsonKey(fromJson: customFromJson)
  final String? zip;
  @JsonKey(name: 'country_id', fromJson: customFromJson)
  final int? countryId;
  @JsonKey(fromJson: customFromJson)
  final String? vat;
  @JsonKey(name: 'branch_id', fromJson: customFromJson)
  final int? branchId;
  @JsonKey(fromJson: customFromJson)
  final String? phone;
  @JsonKey(fromJson: customFromJson)
  final String? mobile;
  @JsonKey(fromJson: customFromJson)
  final String? email;
  @JsonKey(fromJson: customFromJson)
  final String? website;
  @JsonKey(name: 'category_id', fromJson: customFromJson)
  @Property(type: PropertyType.byteVector)
  final List<int>? categoryId;
  @JsonKey(name: 'company_id', fromJson: customFromJson)
  final int? companyId;
  @JsonKey(name: 'pos_total_amount', fromJson: customFromJson)
  final double? posTotalAmount;
  Customer({
    required this.odooId,
    this.id = 0,
    this.name,
    this.companyId,
    this.branchId,
    this.categoryId,
    this.city,
    this.countryId,
    this.email,
    this.image1920,
    this.mobile,
    this.phone,
    this.posTotalAmount,
    this.stateId,
    this.street,
    this.street2,
    this.vat,
    this.website,
    this.zip,
  });

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}

@JsonSerializable()
class CustomerMapper {
  final List<Customer> result;

  CustomerMapper({required this.result});

  factory CustomerMapper.fromJson(Map<String, dynamic> json) =>
      _$CustomerMapperFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerMapperToJson(this);
}
