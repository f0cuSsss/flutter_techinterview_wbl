part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    required UsersResponse? response,
    required bool isLoading,
  }) = _UsersState;

  factory UsersState.initial() => const UsersState(
        response: null,
        isLoading: true,
      );
}
