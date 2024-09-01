import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_interview/domain/core/consts.dart';
import 'package:flutter_tech_interview/domain/core/sqflite/sqflite_service.dart';
import 'package:flutter_tech_interview/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<LoginFieldChanged>((event, emit) {
      emit(state.copyWith(
        login: event.login,
        errorMessage: '',
      ));
    });

    on<PasswordFieldChanged>((event, emit) {
      emit(state.copyWith(
        password: event.password,
        errorMessage: '',
      ));
    });

    on<OnLoginPressed>((event, emit) async {
      if (state.login.isEmpty && state.login.isEmpty) {
        emit(state.copyWith(errorMessage: 'Login or password empty'));
        return;
      }

      if (state.login.isNotEmpty &&
          state.login == 'test' &&
          state.password.isNotEmpty &&
          state.password == '1234') {
        getIt<SqfliteService>().userTable.create(
          data: {'user_id': DEMO_USER_ID},
        );
        Logger().d("Successfuly login!");

        emit(state.copyWith(isSuccess: true));
      } else {
        emit(state.copyWith(errorMessage: 'Invalid login or password'));
      }
    });
  }
}
