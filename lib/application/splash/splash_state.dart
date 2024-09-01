part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = Initial;
  const factory SplashState.authSuccess() = AuthSuccess;
  const factory SplashState.authFailed() = AuthFailed;
}
