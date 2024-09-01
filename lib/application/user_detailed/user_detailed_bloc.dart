import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_interview/domain/core/sqflite/sqflite_service.dart';
import 'package:flutter_tech_interview/domain/user/user.dart';
import 'package:flutter_tech_interview/infrastructure/users/users_facade.dart';
import 'package:flutter_tech_interview/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';

part 'user_detailed_event.dart';
part 'user_detailed_state.dart';
part 'user_detailed_bloc.freezed.dart';

class UserDetailedBloc extends Bloc<UserDetailedEvent, UserDetailedState> {
  UserDetailedBloc() : super(const UserDetailedState.loading()) {
    on<Get>((event, emit) async {
      late User? user;

      try {
        var cachedUser = await getIt<SqfliteService>().usersTable.getSingle(
          params: {'user_id': event.id},
        );

        if (cachedUser != null) {
          Logger().d('getting from cache');
          user = cachedUser;
        } else {
          user = await getIt<IUsersFacade>().getUser(event.id);

          if (user == null) {
            Logger().e("Get Users failed :(");
            return;
          }

          await getIt<SqfliteService>().usersTable.create(data: {
            'id': user.id,
            'name': user.name,
            'email': user.email,
            'address': user.address.city,
            'phone': user.phone,
          });
        }
      } catch (e) {
        emit(UserDetailedState.loadedFailed(e.toString()));
      }

      if (user != null) {
        emit(UserDetailedState.loadedSuccess(user));
      } else {
        emit(const UserDetailedState.loadedFailed(
            'Something went wrong with fetching user...'));
      }
    });
  }
}
