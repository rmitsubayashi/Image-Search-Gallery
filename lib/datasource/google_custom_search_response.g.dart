// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_custom_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GoogleCustomSearchResponse _$$_GoogleCustomSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GoogleCustomSearchResponse(
      kind: json['kind'] as String,
      url: Url.fromJson(json['url'] as Map<String, dynamic>),
      queries: Queries.fromJson(json['queries'] as Map<String, dynamic>),
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      searchInformation: SearchInformation.fromJson(
          json['searchInformation'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GoogleCustomSearchResponseToJson(
        _$_GoogleCustomSearchResponse instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'url': instance.url,
      'queries': instance.queries,
      'context': instance.context,
      'searchInformation': instance.searchInformation,
      'items': instance.items,
    };

_$_Context _$$_ContextFromJson(Map<String, dynamic> json) => _$_Context(
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_ContextToJson(_$_Context instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      kind: json['kind'] as String,
      title: json['title'] as String,
      htmlTitle: json['htmlTitle'] as String,
      link: json['link'] as String,
      displayLink: json['displayLink'] as String,
      snippet: json['snippet'] as String,
      htmlSnippet: json['htmlSnippet'] as String,
      mime: json['mime'] as String,
      fileFormat: json['fileFormat'] as String,
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'kind': instance.kind,
      'title': instance.title,
      'htmlTitle': instance.htmlTitle,
      'link': instance.link,
      'displayLink': instance.displayLink,
      'snippet': instance.snippet,
      'htmlSnippet': instance.htmlSnippet,
      'mime': instance.mime,
      'fileFormat': instance.fileFormat,
      'image': instance.image,
    };

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      contextLink: json['contextLink'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
      byteSize: json['byteSize'] as int,
      thumbnailLink: json['thumbnailLink'] as String,
      thumbnailHeight: json['thumbnailHeight'] as int,
      thumbnailWidth: json['thumbnailWidth'] as int,
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'contextLink': instance.contextLink,
      'height': instance.height,
      'width': instance.width,
      'byteSize': instance.byteSize,
      'thumbnailLink': instance.thumbnailLink,
      'thumbnailHeight': instance.thumbnailHeight,
      'thumbnailWidth': instance.thumbnailWidth,
    };

_$_Queries _$$_QueriesFromJson(Map<String, dynamic> json) => _$_Queries(
      request: (json['request'] as List<dynamic>)
          .map((e) => NextPage.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPage: (json['nextPage'] as List<dynamic>)
          .map((e) => NextPage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QueriesToJson(_$_Queries instance) =>
    <String, dynamic>{
      'request': instance.request,
      'nextPage': instance.nextPage,
    };

_$_NextPage _$$_NextPageFromJson(Map<String, dynamic> json) => _$_NextPage(
      title: json['title'] as String,
      totalResults: json['totalResults'] as String,
      searchTerms: json['searchTerms'] as String,
      count: json['count'] as int,
      startIndex: json['startIndex'] as int,
      inputEncoding: json['inputEncoding'] as String,
      outputEncoding: json['outputEncoding'] as String,
      safe: json['safe'] as String,
      cx: json['cx'] as String,
      searchType: json['searchType'] as String,
    );

Map<String, dynamic> _$$_NextPageToJson(_$_NextPage instance) =>
    <String, dynamic>{
      'title': instance.title,
      'totalResults': instance.totalResults,
      'searchTerms': instance.searchTerms,
      'count': instance.count,
      'startIndex': instance.startIndex,
      'inputEncoding': instance.inputEncoding,
      'outputEncoding': instance.outputEncoding,
      'safe': instance.safe,
      'cx': instance.cx,
      'searchType': instance.searchType,
    };

_$_SearchInformation _$$_SearchInformationFromJson(Map<String, dynamic> json) =>
    _$_SearchInformation(
      searchTime: (json['searchTime'] as num).toDouble(),
      formattedSearchTime: json['formattedSearchTime'] as String,
      totalResults: json['totalResults'] as String,
      formattedTotalResults: json['formattedTotalResults'] as String,
    );

Map<String, dynamic> _$$_SearchInformationToJson(
        _$_SearchInformation instance) =>
    <String, dynamic>{
      'searchTime': instance.searchTime,
      'formattedSearchTime': instance.formattedSearchTime,
      'totalResults': instance.totalResults,
      'formattedTotalResults': instance.formattedTotalResults,
    };

_$_Url _$$_UrlFromJson(Map<String, dynamic> json) => _$_Url(
      type: json['type'] as String,
      template: json['template'] as String,
    );

Map<String, dynamic> _$$_UrlToJson(_$_Url instance) => <String, dynamic>{
      'type': instance.type,
      'template': instance.template,
    };
