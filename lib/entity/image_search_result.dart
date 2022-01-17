import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_search_result.freezed.dart';

@freezed
class ImageSearchResult with _$ImageSearchResult {
  const factory ImageSearchResult(List<String> links, int nextStartingIndex) = _ImageSearchResult;
}