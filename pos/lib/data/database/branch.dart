import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/company.dart';
import 'package:pos/data/database/pos.dart';

part 'branch.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
@Entity()
class Branch1 {
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(name: '__')
  int id;
  @JsonKey(fromJson: customFromJson)
  String? name;
  @JsonKey(fromJson: customFromJson)
  String? telephone;
  @JsonKey(fromJson: customFromJson)
  String? address;
  @JsonKey(name: 'company_id', fromJson: customFromJson)
  int? companyId;
  @JsonKey(name: 'journal_id')
  JournalID? odooJournalID;
  final ToOne<JournalID> journalID = ToOne<JournalID>();
  // @JsonKey(fromJson: _$JournalIDFromJson)
  // final journalID = ToOne<JournalID>();
  Branch1({
    required this.odooId,
    this.id = 0,
    this.name,
    this.telephone,
    this.address,
    this.companyId,
    this.odooJournalID,
  });

  factory Branch1.fromJson(Map<String, dynamic> json) => _$Branch1FromJson(json);

  Map<String, dynamic> toJson() => _$Branch1ToJson(this);
}

@JsonSerializable()
@Entity()
class JournalID {
  @JsonKey(name: 'id')
  final int odooId;
  @JsonKey(name: '__')
  int id;
  @JsonKey(fromJson: customFromJson)
  String? name;

  JournalID({
    required this.odooId,
    this.id = 0,
    this.name,
  });
  factory JournalID.fromJson(Map<String, dynamic> json) =>
      _$JournalIDFromJson(json);

  Map<String, dynamic> toJson() => _$JournalIDToJson(this);
}

@JsonSerializable()
class Branch1Mapper {
  final List<Branch1> result;

  Branch1Mapper({required this.result});

  factory Branch1Mapper.fromJson(Map<String, dynamic> json) =>
      _$Branch1MapperFromJson(json);

  Map<String, dynamic> toJson() => _$Branch1MapperToJson(this);
}
