import 'package:flutter_tech_interview/domain/core/sqflite/sqflite_service.dart';
import 'package:flutter_tech_interview/domain/user/user.dart';
import 'package:logger/web.dart';
import 'package:sqflite/sqflite.dart';

import 'base_table.dart';

class UsersTable extends BaseTable {
  UsersTable() {
    tableName = 'users';
  }

  @override
  Future<void> createTable(Database db) async {
    //! create Address and Company table better
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $tableName (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INT NOT NULL,
        name TEXT NOT NULL,
        email TEXT NOT NULL,
        address TEXT,
        phone TEXT
      )
    ''');
  }

  @override
  Future<int> create({
    required Map<String, dynamic> data,
  }) async {
    final database = await SqfliteService().database;

    return await database.rawInsert(
      '''INSERT INTO $tableName (user_id, name, email, address, phone) VALUES (?,?,?,?,?)''',
      [
        data['id'],
        data['name'],
        data['email'],
        data['address'],
        data['phone'],
      ],
    );
  }

  @override
  Future<List<User>> getAll({
    required Map<String, dynamic> params,
  }) async {
    final db = await SqfliteService().database;

    try {
      List<Map<String, dynamic>> usersRaw = await db.rawQuery(
        ''' SELECT * FROM $tableName''',
      );

      Logger().d('Getting users from Sqflite');

      if (usersRaw.isNotEmpty) {
        Logger().d('Cached users exists!');
        return usersRaw.map((user) => User.fromSqflite(user)).toList();
      } else {
        Logger().d('Cached users empty');
        return [];
      }
    } catch (e) {
      Logger().d('Error fetching user info: $e');
      return [];
    }
  }

  @override
  Future<User?> getSingle({
    required Map<String, dynamic> params,
  }) async {
    final db = await SqfliteService().database;

    try {
      List<Map<String, dynamic>> result = await db.query(
        tableName,
        where: 'user_id = ?',
        whereArgs: [
          params['user_id'],
        ],
        limit: 1,
      );

      if (result.isNotEmpty) {
        Logger().d('User exist: ${params['user_id']}');
        var userRaw = result.first;
        return User.fromSqflite(userRaw);
      } else {
        Logger().d('User not found by id: ${params['user_id']}');
        return null;
      }
    } catch (e) {
      Logger().d('Error fetching user: $e');
      return null;
    }
  }
}
