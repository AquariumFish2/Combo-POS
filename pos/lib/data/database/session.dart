import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
part 'session.g.dart';

@JsonSerializable()
@Entity()
class Session1 {
  @JsonKey(name: '__')
  int id;
  @JsonKey(name: 'id')
  final int odooId;

  String? dbLink;

  String? posName;

  String? sessionOpenedBy;

  int? sessionNumber;

  String? sessionStatus;

  String? workingDate;

  String? sessionStartTime;

  String? sessionEndTime;

  int? startingCredit;

  int? endingCredit;

  String? version;

  String? userName;

  Session1({
    required this.odooId,
    this.id = 0,
    this.dbLink,
    this.endingCredit,
    this.posName,
    this.sessionEndTime,
    this.sessionNumber,
    this.sessionOpenedBy,
    this.sessionStartTime,
    this.sessionStatus,
    this.startingCredit,
    this.userName,
    this.version,
    this.workingDate,
  });

  factory Session1.fromJson(Map<String, dynamic> json) =>
      _$Session1FromJson(json);

  Map<String, dynamic> toJson() => _$Session1ToJson(this);
}
