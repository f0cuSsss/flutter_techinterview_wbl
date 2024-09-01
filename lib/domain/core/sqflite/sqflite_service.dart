import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'data/user_table.dart';
import 'data/users_table.dart';

class SqfliteService {
  static final SqfliteService _instance = SqfliteService._internal();
  factory SqfliteService() => _instance;

  static Database? _database;

  SqfliteService._internal();

  UserTable get userTable => UserTable();
  UsersTable get usersTable => UsersTable();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initialize();
    return _database!;
  }

  Future<String> get fullPath async {
    const name = 'my_database';
    final path = await getDatabasesPath();
    return join(path, name);
  }

  Future<Database> _initialize() async {
    final path = await fullPath;
    var database = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      singleInstance: true,
    );
    return database;
  }

  Future<void> _onCreate(Database db, int version) async {
    await userTable.createTable(db);
    await usersTable.createTable(db);
  }
}
