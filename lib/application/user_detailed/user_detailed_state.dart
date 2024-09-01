part of 'user_detailed_bloc.dart';

@freezed
class UserDetailedState with _$UserDetailedState {
  const factory UserDetailedState.loading() = Loading;
  const factory UserDetailedState.loadedSuccess(User user) = LoadedSuccess;
  const factory UserDetailedState.loadedFailed(String error) = LoadedFailed;
}
