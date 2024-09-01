import 'package:flutter_tech_interview/domain/user/user.dart';
import 'package:flutter_tech_interview/infrastructure/core/api_config.dart';
import 'package:flutter_tech_interview/infrastructure/core/dio_config.dart';
import 'package:flutter_tech_interview/infrastructure/users/dto/users_response.dart';
import 'package:flutter_tech_interview/injection.dart';
import 'package:logger/web.dart';

abstract class IUsersFacade {
  Future<User?> getUser(int id);
  Future<UsersResponse?> getUsers();
}

class UsersFacade implements IUsersFacade {
  @override
  Future<UsersResponse?> getUsers() async {
    try {
      var response = await getIt<DioConfig>()
          .dio
          .get(ApiConfig.baseUrl + ApiConfig.getUsers);

      var data = UsersResponse.fromJson(response.data);

      return data;
    } catch (e) {
      Logger().e(e);
    }

    return null;
  }

  @override
  Future<User?> getUser(int id) async {
    try {
      var response = await getIt<DioConfig>()
          .dio
          .get(ApiConfig.baseUrl + ApiConfig.getUsers);

      var data = UsersResponse.fromJson(response.data);

      // ---------
      // Incorrect! It is necessary to call another endpoint to get detailed user information.
      // ---------

      // for demonstrate
      await Future.delayed(const Duration(milliseconds: 600));

      return data.users.firstWhere((u) => u.id == id);
    } catch (e) {
      Logger().e(e);
    }

    return null;
  }
}
