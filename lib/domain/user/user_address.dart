import 'package:json_annotation/json_annotation.dart';

part 'user_address.g.dart';

@JsonSerializable()
class UserAddress {
  final String city;

  UserAddress(this.city);

  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);

  Map<String, dynamic> toJson() => _$UserAddressToJson(this);
}
