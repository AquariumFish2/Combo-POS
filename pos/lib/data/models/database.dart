import 'package:json_annotation/json_annotation.dart';

part 'database.g.dart';

@JsonSerializable()
class Database {
  final int? id;
  final String name;
  Database({
    required this.id,
    required this.name,
  });
}
