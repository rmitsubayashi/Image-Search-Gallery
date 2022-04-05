import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/entity/saved_image.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final sqliteDataSourceProvider = Provider((ref) => SqliteDataSource());

class SqliteDataSource {

  Future<Database> _getDB() async {
    final directory = await getDatabasesPath();
    final dbPath = join(directory, 'imagesearchgallery.db');
    return await openDatabase(dbPath, version: 1, onCreate: (Database db, int version) async {
      _createTable(db, version);
    });
  }

  Future<void> _createTable(Database db, int version) async {
    return await db.execute(
      "CREATE TABLE saved_image ("
      "id integer primary key autoincrement, "
      "created_at TEXT, "
      "url TEXT, "
      "label TEXT, "
      "local_path TEXT"
      ")"
    );
  }

  Future<int> insertSavedImage(SavedImage image) async {
    final db = await _getDB();
    return db.insert('saved_image', image.toJson());
  }

  Future<bool> delete(SavedImage image) async {
    final db = await _getDB();
    final rows = await db.delete('saved_image', where: 'id = ?', whereArgs: [image.id]);
    return rows > 0;
  }

  Future<bool> updateLabel(SavedImage image, String updatedLabel) async {
    final db = await _getDB();
    final row = {'label': updatedLabel};
    final rows = await db.update('saved_image', row, where: 'id = ?', whereArgs: [image.id]);
    return rows > 0;
  }

  Future<List<SavedImage>> getSavedImages() async {
    final db = await _getDB();
    final maps = await db.query('saved_image');
    if (maps.isEmpty) return [];

    return maps.map((m) => SavedImage.fromJson(m)).toList();
  }
}