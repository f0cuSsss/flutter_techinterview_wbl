import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_interview/application/auth/auth_bloc.dart';
import 'package:flutter_tech_interview/injection.dart';
import 'package:flutter_tech_interview/presentation/users/users_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>(),
      child: const AuthScreenContent(),
    );
  }
}

class AuthScreenContent extends StatelessWidget {
  const AuthScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.isSuccess) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const UsersScreen();
                    },
                  ),
                );
              }
            },
            builder: (context, state) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Need authorize',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  buildTextField((s) => {
                        context.read<AuthBloc>().add(LoginFieldChanged(s)),
                      }),
                  const SizedBox(height: 15),
                  buildTextField((s) => {
                        context.read<AuthBloc>().add(PasswordFieldChanged(s)),
                      }),
                  const SizedBox(height: 15),
                  OutlinedButton(
                    onPressed: () => context.read<AuthBloc>().add(
                          const OnLoginPressed(),
                        ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 15),
                  if (state.errorMessage.isNotEmpty)
                    Text(
                      state.errorMessage,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextField buildTextField(
    Function(String) onChanged,
  ) {
    return TextField(
      onChanged: onChanged,
    );
  }
}
