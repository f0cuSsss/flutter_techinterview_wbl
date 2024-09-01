import 'package:flutter_tech_interview/domain/user/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users_response.g.dart';

@JsonSerializable()
class UsersResponse {
  final List<User> users;

  UsersResponse(this.users);

  factory UsersResponse.fromJson(List<dynamic> jsonList) {
    List<User> users = jsonList.map((e) => User.fromJson(e)).toList();
    return UsersResponse(users);
  }

  List<dynamic> toJson() => users.map((user) => user.toJson()).toList();
}
