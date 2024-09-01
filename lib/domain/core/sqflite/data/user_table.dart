import 'package:flutter_tech_interview/domain/core/sqflite/sqflite_service.dart';
import 'package:logger/web.dart';
import 'package:sqflite/sqflite.dart';

import 'base_table.dart';

class UserTable extends BaseTable {
  UserTable() {
    tableName = 'user_info';
  }

  @override
  Future<void> createTable(Database db) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $tableName (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        FOREIGN KEY (user_id) REFERENCES users(id)
      )
    ''');
  }

  @override
  Future<int> create({
    required Map<String, dynamic> data,
  }) async {
    final database = await SqfliteService().database;

    return await database.insert(
      tableName,
      data,
    );
  }

  @override
  Future<Map<String, dynamic>?> getAll({
    required Map<String, dynamic> params,
  }) async {
    return null;
  }

  @override
  Future getSingle({required Map<String, dynamic> params}) async {
    final db = await SqfliteService().database;

    try {
      List<Map<String, dynamic>> result = await db.query(
        tableName,
        where: 'user_id = ?',
        whereArgs: [
          params['user_id'],
        ],
      );

      if (result.isNotEmpty) {
        Logger().d('User exist: ${params['user_id']}');
        return result.first;
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
