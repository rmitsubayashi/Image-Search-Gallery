import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/datasource/google_custom_search_response.dart';
import 'package:imagesearchgallery/entity/errors.dart';
import 'package:imagesearchgallery/entity/image_search_result.dart';
import 'package:imagesearchgallery/entity/result.dart';

final googleCustomSearchDataSource = Provider((ref) => GoogleCustomSearchDataSource());

class GoogleCustomSearchDataSource {
  Future<Result<ImageSearchResult>> getSearchResult(String query, int startingIndex) async {
    final apiKey = await getAPIKey();
    try {
      final dio = Dio();
      final cacheOptions = CacheOptions(
        store: MemCacheStore(),
        policy: CachePolicy.request,
        maxStale: const Duration(days: 2),
        priority: CachePriority.normal
      );
      dio.interceptors.add(DioCacheInterceptor(options: (cacheOptions)));
      final response = await dio.get(
          'https://customsearch.googleapis.com/customsearch/v1'
              '?key=$apiKey'
              '&q=$query'
              '&cx=020a05c3619ccc101'
              '&start=$startingIndex'
              '&searchType=image');
      final responseClass = googleCustomSearchResponseFromJson(
          response.toString());
      final urls = responseClass.items?.map((e) => e.link).toList() ?? List.empty();
      final next = responseClass.queries.nextPage?[0].startIndex ?? -1;
      final suggestedWord = responseClass.spelling?.correctedQuery;
      final spellingError = suggestedWord == null ? null : ErrorObject(SpellingError(query), suggestedWord);
      return Result(ImageSearchResult(urls, next), spellingError);
    } catch(error) {
      return Result(const ImageSearchResult([], -1), ErrorObject(GeneralError(error.toString()), null));
    }
  }

  Future<String> getAPIKey() async {
    return await rootBundle.loadString('assets/secret.txt');
  }
}