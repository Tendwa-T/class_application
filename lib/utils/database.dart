import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseSQFLITe {
  DatabaseSQFLITe() {
    openDB();
  }
  late Database database;
  late String path;
  openDB() async {
    var databasePath = await getDatabasesPath();
    path = join(databasePath, "demo.db");

    database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE Test (id INTEGER PRIMARY KEY autoIncrement, name TEXT) VALUES(1,"tEXT")');
      },
    );
  }

  writeRecord(tableName, name) async {
    await database.transaction((txn) async {
      int id1 =
          await txn.rawInsert('INSERT INTO $tableName (name) VALUES( "$name")');
      print('inserted1: $id1');
    });
  }

  readRec() async {
    List<Map> list = await database.rawQuery('SELECT * FROM Test');
    print(list);
  }
}
