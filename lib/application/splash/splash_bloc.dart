import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_interview/domain/core/consts.dart';
import 'package:flutter_tech_interview/domain/core/sqflite/sqflite_service.dart';
import 'package:flutter_tech_interview/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<CheckAuth>((event, emit) async {
      try {
        var userInfoOrNull = await getIt<SqfliteService>().userTable.getSingle(
          params: {'user_id': DEMO_USER_ID},
        );

        if (userInfoOrNull == null) {
          Logger().d('authFailed');
          emit(const SplashState.authFailed());
        } else {
          Logger().d('authSuccess');
          emit(const SplashState.authSuccess());
        }
      } catch (e) {
        emit(const SplashState.authFailed());
      }
    });
  }
}
