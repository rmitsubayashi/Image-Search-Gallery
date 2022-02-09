import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/datasource/google_custom_search_data_source.dart';
import 'package:imagesearchgallery/entity/image_search_result.dart';
import 'package:imagesearchgallery/entity/result.dart';

final searchRepository = Provider.autoDispose<SearchRepository>((ref) => GoogleCustomSearchRepository(ref.read));

abstract class SearchRepository {
  Future<Result<ImageSearchResult>> search(String searchTerm, int startingIndex);
}

class GoogleCustomSearchRepository implements SearchRepository {
  final Reader read;
  GoogleCustomSearchRepository(this.read);

  @override
  Future<Result<ImageSearchResult>> search(String searchTerm, int startingIndex) async {
    final dataSource = read(googleCustomSearchDataSource);
    return dataSource.getSearchResult(searchTerm, startingIndex);
  }
}