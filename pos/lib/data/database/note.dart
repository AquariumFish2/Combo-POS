import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:pos/data/database/line.dart';
part 'note.g.dart';

@Entity()
@JsonSerializable()
class Note {
  String name;
  bool isSelected;
  int id;
  List? categoryIds;
  final line = ToOne<Line>();
  Note({
    this.id = 0,
    this.isSelected = false,
    this.categoryIds,
    required this.name,
  });
  toggleSelectionNote() {
    isSelected = !isSelected;
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'isSelected': isSelected});
    result.addAll({'id': id});
    if (categoryIds != null) {
      result.addAll({'categoryIds': categoryIds});
    }

    return result;
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      name: map['name'] ?? '',
      isSelected: map['isSelected'] ?? false,
      id: map['id'] ?? '',
      categoryIds: List<int>.from(map['categoryIds']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Note.fromJson(String source) => Note.fromMap(json.decode(source));
}
