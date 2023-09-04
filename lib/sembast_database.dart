import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';


class SembastDatabase {

  String dbPath = 'tarefas.db';
  DatabaseFactory dbFactory = databaseFactoryIo;
  late Database db;

getInstance() async {
  if (db==null) {
    db = await dbFactory.openDatabase(dbPath);
  }
    return db;
}

}