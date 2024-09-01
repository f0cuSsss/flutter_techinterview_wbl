import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_interview/application/splash/splash_bloc.dart';
import 'package:flutter_tech_interview/injection.dart';
import 'package:flutter_tech_interview/presentation/auth/auth_screen.dart';
import 'package:flutter_tech_interview/presentation/users/users_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => getIt<SplashBloc>()..add(const CheckAuth()),
      child: const SplashScreenContent(),
    );
  }
}

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            authSuccess: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const UsersScreen();
                  },
                ),
              );
            },
            authFailed: () async {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const AuthScreen();
                  },
                ),
              );
            },
          );
        },
        child: const Center(
          child: Icon(
            Icons.ac_unit,
            size: 80,
          ),
        ),
      ),
    );
  }
}
