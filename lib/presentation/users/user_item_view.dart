import 'package:flutter/material.dart';
import 'package:flutter_tech_interview/domain/user/user.dart';
import 'package:flutter_tech_interview/presentation/users/user_detailed_screen.dart';

class UserItemView extends StatelessWidget {
  const UserItemView({super.key, required this.user});

  final User user;

  void onUserTapped(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return UserDetailedScreen(
            user: user,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onUserTapped(context),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(user.name),
              Text(user.email),
              Text(user.phone),
              Text(user.address.city),
            ],
          ),
        ),
      ),
    );
  }
}
