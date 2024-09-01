part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required String login,
    required String password,
    required String errorMessage,
    required bool isSuccess,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        login: "",
        password: "",
        errorMessage: "",
        isSuccess: false,
      );
}
