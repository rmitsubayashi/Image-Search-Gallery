// To parse this JSON data, do
//
//     final googleCustomSearchResponse = googleCustomSearchResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'google_custom_search_response.freezed.dart';
part 'google_custom_search_response.g.dart';

GoogleCustomSearchResponse googleCustomSearchResponseFromJson(String str) => GoogleCustomSearchResponse.fromJson(json.decode(str));

String googleCustomSearchResponseToJson(GoogleCustomSearchResponse data) => json.encode(data.toJson());

@freezed
abstract class GoogleCustomSearchResponse with _$GoogleCustomSearchResponse {
  const factory GoogleCustomSearchResponse({
    required String kind,
    required Url url,
    required Queries queries,
    required Context context,
    required SearchInformation searchInformation,
    required List<Item> items,
  }) = _GoogleCustomSearchResponse;

  factory GoogleCustomSearchResponse.fromJson(Map<String, dynamic> json) => _$GoogleCustomSearchResponseFromJson(json);
}

@freezed
abstract class Context with _$Context {
  const factory Context({
    required String title,
  }) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) => _$ContextFromJson(json);
}

@freezed
abstract class Item with _$Item {
  const factory Item({
    required String kind,
    required String title,
    required String htmlTitle,
    required String link,
    required String displayLink,
    required String snippet,
    required String htmlSnippet,
    required String mime,
    required String fileFormat,
    required Image image,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
abstract class Image with _$Image {
  const factory Image({
    required String contextLink,
    required int height,
    required int width,
    required int byteSize,
    required String thumbnailLink,
    required int thumbnailHeight,
    required int thumbnailWidth,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
abstract class Queries with _$Queries {
  const factory Queries({
    required List<NextPage> request,
    required List<NextPage> nextPage,
  }) = _Queries;

  factory Queries.fromJson(Map<String, dynamic> json) => _$QueriesFromJson(json);
}

@freezed
abstract class NextPage with _$NextPage {
  const factory NextPage({
    required String title,
    required String totalResults,
    required String searchTerms,
    required int count,
    required int startIndex,
    required String inputEncoding,
    required String outputEncoding,
    required String safe,
    required String cx,
    required String searchType,
  }) = _NextPage;

  factory NextPage.fromJson(Map<String, dynamic> json) => _$NextPageFromJson(json);
}

@freezed
abstract class SearchInformation with _$SearchInformation {
  const factory SearchInformation({
    required double searchTime,
    required String formattedSearchTime,
    required String totalResults,
    required String formattedTotalResults,
  }) = _SearchInformation;

  factory SearchInformation.fromJson(Map<String, dynamic> json) => _$SearchInformationFromJson(json);
}

@freezed
abstract class Url with _$Url {
  const factory Url({
    required String type,
    required String template,
  }) = _Url;

  factory Url.fromJson(Map<String, dynamic> json) => _$UrlFromJson(json);
}
