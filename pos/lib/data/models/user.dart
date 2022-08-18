import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

pinCodeFromJson(c) {
  if (c == false) {
    return '';
  } else {
    return c;
  }
}

pinCodeToJson(c) {
  return c;
}

@freezed
class User with _$User {
  factory User({
    required int id,
    required String name,
    required String login,
    @JsonKey(
      name: 'security_pin',
      fromJson: pinCodeFromJson,
      toJson: pinCodeToJson,
    )
        required String pinCode,
    @JsonKey(name: 'pos_user_type')
        required String posUserType,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserResults with _$UserResults {
  factory UserResults({
    @JsonKey(name: "result") required List<User> users,
  }) = _UserResults;
  factory UserResults.fromJson(Map<String, dynamic> json) =>
      _$UserResultsFromJson(json);
}
