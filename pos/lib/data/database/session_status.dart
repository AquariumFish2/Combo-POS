import 'package:json_annotation/json_annotation.dart';
part 'session_status.g.dart';

customFromJson(val) {
  if (val.runtimeType == bool) {
    return null;
  } else {
    return val;
  }
}

@JsonSerializable()
class SessionStatus {
  @JsonKey(name: 'pos_session_id')
  final int posSessionId;
  bool? success;
  final String? message;
  SessionStatus({
    required this.posSessionId,
    this.message,
    this.success,
  });

  factory SessionStatus.fromJson(Map<String, dynamic> json) =>
      _$SessionStatusFromJson(json);

  Map<String, dynamic> toJson() => _$SessionStatusToJson(this);
}

@JsonSerializable()
class SessionStatusMapper {
  final List<SessionStatus> result;

  SessionStatusMapper({required this.result});

  factory SessionStatusMapper.fromJson(Map<String, dynamic> json) =>
      _$SessionStatusMapperFromJson(json);

  Map<String, dynamic> toJson() => _$SessionStatusMapperToJson(this);
}
