import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/datasource/sqlite_data_source.dart';
import 'package:imagesearchgallery/entity/saved_image.dart';

final savedImagesRepositoryProvider = Provider.autoDispose<SavedImageRepository>((ref) => SqliteSavedImageRepository(ref.read));

abstract class SavedImageRepository {
  Future<SavedImage> save(String searchTerm, String url);

  Future<List<SavedImage>> getAll();

  Future<bool> delete(SavedImage image);
}

class SqliteSavedImageRepository implements SavedImageRepository {
  final Reader read;
  SqliteSavedImageRepository(this.read);

  @override
  Future<SavedImage> save(String searchTerm, String url) async {
    final sqliteDataSource = read(sqliteDataSourceProvider);
    final createdAt = DateTime.now().toString();
    final toSave = SavedImage(null, url, searchTerm, createdAt);
    final newId = await sqliteDataSource.insertSavedImage(toSave);
    return SavedImage(newId, url, searchTerm, createdAt);
  }

  @override
  Future<List<SavedImage>> getAll() async {
    final sqliteDataSource = read(sqliteDataSourceProvider);
    return await sqliteDataSource.getSavedImages();
  }

  @override
  Future<bool> delete(SavedImage image) async {
    final sqliteDataSource = read(sqliteDataSourceProvider);
    return await sqliteDataSource.delete(image);
  }
}

