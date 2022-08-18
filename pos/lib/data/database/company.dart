import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/branch.dart';

part 'company.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Company {
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(name: '__')
  int id;
  @JsonKey(fromJson: customFromJson)
  final String? name;
  @JsonKey(fromJson: customFromJson)
  final String? image;
  @JsonKey(fromJson: customFromJson)
  final String? phone;
  @JsonKey(fromJson: customFromJson)
  final String? mobile;
  @JsonKey(fromJson: customFromJson)
  final String? email;
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
  @JsonKey(name: 'company_registry', fromJson: customFromJson)
  final String? companyRegistry;
  @JsonKey(fromJson: customFromJson)
  final String? vat;
  @JsonKey(name: 'currency_id', fromJson: customFromJson)
  final int? currencyId;
  bool gotBranches = false;

  Company({
    required this.odooId,
    this.id = 0,
    this.name,
    this.image,
    this.phone,
    this.mobile,
    this.email,
    this.street,
    this.street2,
    this.city,
    this.stateId,
    this.zip,
    this.companyRegistry,
    this.vat,
    this.currencyId,
    this.gotBranches=false,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

@JsonSerializable()
class CompanyMapper {
  final List<Company> result;

  CompanyMapper({required this.result});

  factory CompanyMapper.fromJson(Map<String, dynamic> json) =>
      _$CompanyMapperFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyMapperToJson(this);
}
