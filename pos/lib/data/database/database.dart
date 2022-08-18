import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'database.g.dart';

@JsonSerializable()
@Entity()
class Database {
  int id;
  String name;
  Database({
    this.id = 0,
    required this.name,
  });
  factory Database.fromJson(json) => _$DatabaseFromJson(json);
  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}
