import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/datasource/sqlite_data_source.dart';
import 'package:imagesearchgallery/entity/saved_image.dart';

final savedImagesRepositoryProvider = Provider.autoDispose<SavedImageRepository>((ref) => SqliteSavedImageRepository(ref.read));

abstract class SavedImageRepository {
  Future<SavedImage> save(String searchTerm, String url);

  Future<List<SavedImage>> getAll();

  Future<bool> delete(SavedImage image);

  Future<bool> updateLabel(SavedImage image, String updatedLabel);

  Future<bool> updateUrl(SavedImage image, String updatedUrl);
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

  @override
  Future<bool> updateLabel(SavedImage image, String newLabel) async {
    final sqliteDataSource = read(sqliteDataSourceProvider);
    final newImage = image.copyWith(label: newLabel);
    return await sqliteDataSource.update(newImage);
  }

  @override
  Future<bool> updateUrl(SavedImage image, String newUrl) async {
    final sqliteDataSource = read(sqliteDataSourceProvider);
    final newImage = image.copyWith(url: newUrl);
    return await sqliteDataSource.update(newImage);
  }
}

