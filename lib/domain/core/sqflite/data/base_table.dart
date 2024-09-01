import 'package:sqflite/sqflite.dart';

abstract class BaseTable {
  String tableName = '';

  Future<void> createTable(
    Database db,
  );

  Future<int> create({
    required Map<String, dynamic> data,
  });

  Future getSingle({
    required Map<String, dynamic> params,
  });

  Future getAll({
    required Map<String, dynamic> params,
  });
}
