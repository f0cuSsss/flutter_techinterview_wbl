import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tech_interview/domain/core/sqflite/sqflite_service.dart';
import 'package:flutter_tech_interview/infrastructure/users/dto/users_response.dart';
import 'package:flutter_tech_interview/infrastructure/users/users_facade.dart';
import 'package:flutter_tech_interview/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';

part 'users_event.dart';
part 'users_state.dart';

part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(UsersState.initial()) {
    on<GetUsers>((event, emit) async {
      var cachedUsers =
          await getIt<SqfliteService>().usersTable.getAll(params: {});

      late UsersResponse? response;

      if (cachedUsers.isNotEmpty) {
        Logger().d('getting from cache');
        response = UsersResponse(cachedUsers);
      } else {
        response = await getIt<IUsersFacade>().getUsers();

        if (response == null) {
          Logger().e("Get Users failed :(");
          return;
        }

        for (var i = 0; i < response.users.length; i++) {
          var el = response.users[i];

          await getIt<SqfliteService>().usersTable.create(data: {
            'id': el.id,
            'name': el.name,
            'email': el.email,
            'address': el.address.city,
            'phone': el.phone,
          });
        }
      }

      emit(state.copyWith(
        response: response,
        isLoading: false,
      ));
    });
  }
}
