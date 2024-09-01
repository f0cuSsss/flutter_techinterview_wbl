part of 'auth_bloc.dart';

@freezed
class AuthEvent {
  const factory AuthEvent.onLoginPressed() = OnLoginPressed;
  const factory AuthEvent.loginFieldChanged(String login) = LoginFieldChanged;
  const factory AuthEvent.passwordFieldChanged(String password) =
      PasswordFieldChanged;
}
