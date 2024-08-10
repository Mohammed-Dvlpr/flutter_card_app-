import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'card_model.dart';
import 'package:path/path.dart';

//part 4
class DbHelper {
  static Database? _db;

  // checking if there is a db or not
  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDatabase();
  }

  //creating a path to create a local data base management in mobile
  initDatabase() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    //add the path/path import
    String path = join(documentsDirectory.path, 'card.db');
    // initial a data version and change
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  // CREATING SQLITE DB query
  //and conenting tham with out data variables in card model
  _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE cart (id INTEGER PRIMARY KEY , productId VARCHAR UNIQUE,productName TEXT,initialPrice INTEGER, productPrice INTEGER , quantity INTEGER, unitTag TEXT , image TEXT )');
  }

// this is the model that we enter the value and map to the ui connection the variable to db and maping into ui
  Future<Cart> insert(Cart cart) async {
    var dbClient = await db;
    await dbClient!.insert('cart', cart.toMap());
    return cart;
  }
}
