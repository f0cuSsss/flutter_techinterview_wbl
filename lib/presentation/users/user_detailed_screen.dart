import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_interview/application/user_detailed/user_detailed_bloc.dart';
import 'package:flutter_tech_interview/domain/user/user.dart';
import 'package:flutter_tech_interview/injection.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserDetailedScreen extends StatelessWidget {
  const UserDetailedScreen({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserDetailedBloc>(
      create: (context) => getIt<UserDetailedBloc>()..add(Get(user.id)),
      child: UserDetailedScreenContent(user: user),
    );
  }
}

class UserDetailedScreenContent extends StatelessWidget {
  const UserDetailedScreenContent({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: SafeArea(
        child: BlocConsumer<UserDetailedBloc, UserDetailedState>(
          listener: (context, state) {},
          builder: (context, state) => state.map(
            loading: (s) => buildLoading(context),
            loadedSuccess: (s) => buildLoadedSuccess(context, s),
            loadedFailed: (s) => buildLoadedFailed(context, s),
          ),
        ),
      ),
    );
  }

  buildLoading(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: buildLoadedSuccess(context, LoadedSuccess(user)),
    );
  }

  buildLoadedSuccess(BuildContext context, LoadedSuccess state) {
    return Center(
      child: Column(
        children: [
          const Text(
            'Detailed user info:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          buildNamedText(title: 'Email: ', data: state.user.email),
          buildNamedText(title: 'City: ', data: state.user.address.city),
          buildNamedText(title: 'Phone: ', data: state.user.phone),
        ],
      ),
    );
  }

  RichText buildNamedText({required String title, required String data}) {
    return RichText(
      text: TextSpan(
        text: title,
        style: const TextStyle(
          color: Colors.black54,
          fontStyle: FontStyle.italic,
          fontSize: 14,
        ),
        children: [
          TextSpan(
            text: data,
            style: const TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontSize: 13,
            ),
          )
        ],
      ),
    );
  }

  buildLoadedFailed(BuildContext context, LoadedFailed state) {
    return Center(
      child: Text(state.error),
    );
  }
}
