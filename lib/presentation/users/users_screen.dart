import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_interview/application/users/users_bloc.dart';
import 'package:flutter_tech_interview/injection.dart';
import 'package:flutter_tech_interview/presentation/users/user_item_view.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (context) => getIt<UsersBloc>()..add(const GetUsers()),
      child: const UsersScreenContent(),
    );
  }
}

class UsersScreenContent extends StatelessWidget {
  const UsersScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<UsersBloc, UsersState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(strokeWidth: 0.7),
              );
            }

            if (state.response == null) {
              return const Center(child: Text('smth went wrong'));
            }

            return ListView.builder(
              itemCount: state.response!.users.length,
              itemBuilder: (context, index) {
                return UserItemView(user: state.response!.users[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
