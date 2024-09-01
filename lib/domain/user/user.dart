import 'package:json_annotation/json_annotation.dart';

import 'user_address.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final UserAddress address;

  User(this.id, this.name, this.email, this.phone, this.address);

  factory User.fromSqflite(Map<String, dynamic> data) {
    return User(
      data['id'],
      data['name'],
      data['email'],
      data['phone'],
      UserAddress(data['address']),
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
