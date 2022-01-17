// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'google_custom_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GoogleCustomSearchResponse _$GoogleCustomSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _GoogleCustomSearchResponse.fromJson(json);
}

/// @nodoc
class _$GoogleCustomSearchResponseTearOff {
  const _$GoogleCustomSearchResponseTearOff();

  _GoogleCustomSearchResponse call(
      {required String kind,
      required Url url,
      required Queries queries,
      required Context context,
      required SearchInformation searchInformation,
      required List<Item> items}) {
    return _GoogleCustomSearchResponse(
      kind: kind,
      url: url,
      queries: queries,
      context: context,
      searchInformation: searchInformation,
      items: items,
    );
  }

  GoogleCustomSearchResponse fromJson(Map<String, Object?> json) {
    return GoogleCustomSearchResponse.fromJson(json);
  }
}

/// @nodoc
const $GoogleCustomSearchResponse = _$GoogleCustomSearchResponseTearOff();

/// @nodoc
mixin _$GoogleCustomSearchResponse {
  String get kind => throw _privateConstructorUsedError;
  Url get url => throw _privateConstructorUsedError;
  Queries get queries => throw _privateConstructorUsedError;
  Context get context => throw _privateConstructorUsedError;
  SearchInformation get searchInformation => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleCustomSearchResponseCopyWith<GoogleCustomSearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleCustomSearchResponseCopyWith<$Res> {
  factory $GoogleCustomSearchResponseCopyWith(GoogleCustomSearchResponse value,
          $Res Function(GoogleCustomSearchResponse) then) =
      _$GoogleCustomSearchResponseCopyWithImpl<$Res>;
  $Res call(
      {String kind,
      Url url,
      Queries queries,
      Context context,
      SearchInformation searchInformation,
      List<Item> items});

  $UrlCopyWith<$Res> get url;
  $QueriesCopyWith<$Res> get queries;
  $ContextCopyWith<$Res> get context;
  $SearchInformationCopyWith<$Res> get searchInformation;
}

/// @nodoc
class _$GoogleCustomSearchResponseCopyWithImpl<$Res>
    implements $GoogleCustomSearchResponseCopyWith<$Res> {
  _$GoogleCustomSearchResponseCopyWithImpl(this._value, this._then);

  final GoogleCustomSearchResponse _value;
  // ignore: unused_field
  final $Res Function(GoogleCustomSearchResponse) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? url = freezed,
    Object? queries = freezed,
    Object? context = freezed,
    Object? searchInformation = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Url,
      queries: queries == freezed
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as Queries,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
      searchInformation: searchInformation == freezed
          ? _value.searchInformation
          : searchInformation // ignore: cast_nullable_to_non_nullable
              as SearchInformation,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }

  @override
  $UrlCopyWith<$Res> get url {
    return $UrlCopyWith<$Res>(_value.url, (value) {
      return _then(_value.copyWith(url: value));
    });
  }

  @override
  $QueriesCopyWith<$Res> get queries {
    return $QueriesCopyWith<$Res>(_value.queries, (value) {
      return _then(_value.copyWith(queries: value));
    });
  }

  @override
  $ContextCopyWith<$Res> get context {
    return $ContextCopyWith<$Res>(_value.context, (value) {
      return _then(_value.copyWith(context: value));
    });
  }

  @override
  $SearchInformationCopyWith<$Res> get searchInformation {
    return $SearchInformationCopyWith<$Res>(_value.searchInformation, (value) {
      return _then(_value.copyWith(searchInformation: value));
    });
  }
}

/// @nodoc
abstract class _$GoogleCustomSearchResponseCopyWith<$Res>
    implements $GoogleCustomSearchResponseCopyWith<$Res> {
  factory _$GoogleCustomSearchResponseCopyWith(
          _GoogleCustomSearchResponse value,
          $Res Function(_GoogleCustomSearchResponse) then) =
      __$GoogleCustomSearchResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String kind,
      Url url,
      Queries queries,
      Context context,
      SearchInformation searchInformation,
      List<Item> items});

  @override
  $UrlCopyWith<$Res> get url;
  @override
  $QueriesCopyWith<$Res> get queries;
  @override
  $ContextCopyWith<$Res> get context;
  @override
  $SearchInformationCopyWith<$Res> get searchInformation;
}

/// @nodoc
class __$GoogleCustomSearchResponseCopyWithImpl<$Res>
    extends _$GoogleCustomSearchResponseCopyWithImpl<$Res>
    implements _$GoogleCustomSearchResponseCopyWith<$Res> {
  __$GoogleCustomSearchResponseCopyWithImpl(_GoogleCustomSearchResponse _value,
      $Res Function(_GoogleCustomSearchResponse) _then)
      : super(_value, (v) => _then(v as _GoogleCustomSearchResponse));

  @override
  _GoogleCustomSearchResponse get _value =>
      super._value as _GoogleCustomSearchResponse;

  @override
  $Res call({
    Object? kind = freezed,
    Object? url = freezed,
    Object? queries = freezed,
    Object? context = freezed,
    Object? searchInformation = freezed,
    Object? items = freezed,
  }) {
    return _then(_GoogleCustomSearchResponse(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Url,
      queries: queries == freezed
          ? _value.queries
          : queries // ignore: cast_nullable_to_non_nullable
              as Queries,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
      searchInformation: searchInformation == freezed
          ? _value.searchInformation
          : searchInformation // ignore: cast_nullable_to_non_nullable
              as SearchInformation,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoogleCustomSearchResponse implements _GoogleCustomSearchResponse {
  const _$_GoogleCustomSearchResponse(
      {required this.kind,
      required this.url,
      required this.queries,
      required this.context,
      required this.searchInformation,
      required this.items});

  factory _$_GoogleCustomSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GoogleCustomSearchResponseFromJson(json);

  @override
  final String kind;
  @override
  final Url url;
  @override
  final Queries queries;
  @override
  final Context context;
  @override
  final SearchInformation searchInformation;
  @override
  final List<Item> items;

  @override
  String toString() {
    return 'GoogleCustomSearchResponse(kind: $kind, url: $url, queries: $queries, context: $context, searchInformation: $searchInformation, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoogleCustomSearchResponse &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.queries, queries) || other.queries == queries) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.searchInformation, searchInformation) ||
                other.searchInformation == searchInformation) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kind, url, queries, context,
      searchInformation, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$GoogleCustomSearchResponseCopyWith<_GoogleCustomSearchResponse>
      get copyWith => __$GoogleCustomSearchResponseCopyWithImpl<
          _GoogleCustomSearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoogleCustomSearchResponseToJson(this);
  }
}

abstract class _GoogleCustomSearchResponse
    implements GoogleCustomSearchResponse {
  const factory _GoogleCustomSearchResponse(
      {required String kind,
      required Url url,
      required Queries queries,
      required Context context,
      required SearchInformation searchInformation,
      required List<Item> items}) = _$_GoogleCustomSearchResponse;

  factory _GoogleCustomSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_GoogleCustomSearchResponse.fromJson;

  @override
  String get kind;
  @override
  Url get url;
  @override
  Queries get queries;
  @override
  Context get context;
  @override
  SearchInformation get searchInformation;
  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$GoogleCustomSearchResponseCopyWith<_GoogleCustomSearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Context _$ContextFromJson(Map<String, dynamic> json) {
  return _Context.fromJson(json);
}

/// @nodoc
class _$ContextTearOff {
  const _$ContextTearOff();

  _Context call({required String title}) {
    return _Context(
      title: title,
    );
  }

  Context fromJson(Map<String, Object?> json) {
    return Context.fromJson(json);
  }
}

/// @nodoc
const $Context = _$ContextTearOff();

/// @nodoc
mixin _$Context {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$ContextCopyWithImpl<$Res> implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  final Context _value;
  // ignore: unused_field
  final $Res Function(Context) _then;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ContextCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$ContextCopyWith(_Context value, $Res Function(_Context) then) =
      __$ContextCopyWithImpl<$Res>;
  @override
  $Res call({String title});
}

/// @nodoc
class __$ContextCopyWithImpl<$Res> extends _$ContextCopyWithImpl<$Res>
    implements _$ContextCopyWith<$Res> {
  __$ContextCopyWithImpl(_Context _value, $Res Function(_Context) _then)
      : super(_value, (v) => _then(v as _Context));

  @override
  _Context get _value => super._value as _Context;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_Context(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Context implements _Context {
  const _$_Context({required this.title});

  factory _$_Context.fromJson(Map<String, dynamic> json) =>
      _$$_ContextFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'Context(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Context &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  _$ContextCopyWith<_Context> get copyWith =>
      __$ContextCopyWithImpl<_Context>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContextToJson(this);
  }
}

abstract class _Context implements Context {
  const factory _Context({required String title}) = _$_Context;

  factory _Context.fromJson(Map<String, dynamic> json) = _$_Context.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$ContextCopyWith<_Context> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {required String kind,
      required String title,
      required String htmlTitle,
      required String link,
      required String displayLink,
      required String snippet,
      required String htmlSnippet,
      required String mime,
      required String fileFormat,
      required Image image}) {
    return _Item(
      kind: kind,
      title: title,
      htmlTitle: htmlTitle,
      link: link,
      displayLink: displayLink,
      snippet: snippet,
      htmlSnippet: htmlSnippet,
      mime: mime,
      fileFormat: fileFormat,
      image: image,
    );
  }

  Item fromJson(Map<String, Object?> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  String get kind => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get htmlTitle => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get displayLink => throw _privateConstructorUsedError;
  String get snippet => throw _privateConstructorUsedError;
  String get htmlSnippet => throw _privateConstructorUsedError;
  String get mime => throw _privateConstructorUsedError;
  String get fileFormat => throw _privateConstructorUsedError;
  Image get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {String kind,
      String title,
      String htmlTitle,
      String link,
      String displayLink,
      String snippet,
      String htmlSnippet,
      String mime,
      String fileFormat,
      Image image});

  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? title = freezed,
    Object? htmlTitle = freezed,
    Object? link = freezed,
    Object? displayLink = freezed,
    Object? snippet = freezed,
    Object? htmlSnippet = freezed,
    Object? mime = freezed,
    Object? fileFormat = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      htmlTitle: htmlTitle == freezed
          ? _value.htmlTitle
          : htmlTitle // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      displayLink: displayLink == freezed
          ? _value.displayLink
          : displayLink // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as String,
      htmlSnippet: htmlSnippet == freezed
          ? _value.htmlSnippet
          : htmlSnippet // ignore: cast_nullable_to_non_nullable
              as String,
      mime: mime == freezed
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String,
      fileFormat: fileFormat == freezed
          ? _value.fileFormat
          : fileFormat // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }

  @override
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String kind,
      String title,
      String htmlTitle,
      String link,
      String displayLink,
      String snippet,
      String htmlSnippet,
      String mime,
      String fileFormat,
      Image image});

  @override
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? kind = freezed,
    Object? title = freezed,
    Object? htmlTitle = freezed,
    Object? link = freezed,
    Object? displayLink = freezed,
    Object? snippet = freezed,
    Object? htmlSnippet = freezed,
    Object? mime = freezed,
    Object? fileFormat = freezed,
    Object? image = freezed,
  }) {
    return _then(_Item(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      htmlTitle: htmlTitle == freezed
          ? _value.htmlTitle
          : htmlTitle // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      displayLink: displayLink == freezed
          ? _value.displayLink
          : displayLink // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as String,
      htmlSnippet: htmlSnippet == freezed
          ? _value.htmlSnippet
          : htmlSnippet // ignore: cast_nullable_to_non_nullable
              as String,
      mime: mime == freezed
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String,
      fileFormat: fileFormat == freezed
          ? _value.fileFormat
          : fileFormat // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item(
      {required this.kind,
      required this.title,
      required this.htmlTitle,
      required this.link,
      required this.displayLink,
      required this.snippet,
      required this.htmlSnippet,
      required this.mime,
      required this.fileFormat,
      required this.image});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String kind;
  @override
  final String title;
  @override
  final String htmlTitle;
  @override
  final String link;
  @override
  final String displayLink;
  @override
  final String snippet;
  @override
  final String htmlSnippet;
  @override
  final String mime;
  @override
  final String fileFormat;
  @override
  final Image image;

  @override
  String toString() {
    return 'Item(kind: $kind, title: $title, htmlTitle: $htmlTitle, link: $link, displayLink: $displayLink, snippet: $snippet, htmlSnippet: $htmlSnippet, mime: $mime, fileFormat: $fileFormat, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Item &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.htmlTitle, htmlTitle) ||
                other.htmlTitle == htmlTitle) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.displayLink, displayLink) ||
                other.displayLink == displayLink) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.htmlSnippet, htmlSnippet) ||
                other.htmlSnippet == htmlSnippet) &&
            (identical(other.mime, mime) || other.mime == mime) &&
            (identical(other.fileFormat, fileFormat) ||
                other.fileFormat == fileFormat) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kind, title, htmlTitle, link,
      displayLink, snippet, htmlSnippet, mime, fileFormat, image);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required String kind,
      required String title,
      required String htmlTitle,
      required String link,
      required String displayLink,
      required String snippet,
      required String htmlSnippet,
      required String mime,
      required String fileFormat,
      required Image image}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get kind;
  @override
  String get title;
  @override
  String get htmlTitle;
  @override
  String get link;
  @override
  String get displayLink;
  @override
  String get snippet;
  @override
  String get htmlSnippet;
  @override
  String get mime;
  @override
  String get fileFormat;
  @override
  Image get image;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
class _$ImageTearOff {
  const _$ImageTearOff();

  _Image call(
      {required String contextLink,
      required int height,
      required int width,
      required int byteSize,
      required String thumbnailLink,
      required int thumbnailHeight,
      required int thumbnailWidth}) {
    return _Image(
      contextLink: contextLink,
      height: height,
      width: width,
      byteSize: byteSize,
      thumbnailLink: thumbnailLink,
      thumbnailHeight: thumbnailHeight,
      thumbnailWidth: thumbnailWidth,
    );
  }

  Image fromJson(Map<String, Object?> json) {
    return Image.fromJson(json);
  }
}

/// @nodoc
const $Image = _$ImageTearOff();

/// @nodoc
mixin _$Image {
  String get contextLink => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get byteSize => throw _privateConstructorUsedError;
  String get thumbnailLink => throw _privateConstructorUsedError;
  int get thumbnailHeight => throw _privateConstructorUsedError;
  int get thumbnailWidth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res>;
  $Res call(
      {String contextLink,
      int height,
      int width,
      int byteSize,
      String thumbnailLink,
      int thumbnailHeight,
      int thumbnailWidth});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res> implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  final Image _value;
  // ignore: unused_field
  final $Res Function(Image) _then;

  @override
  $Res call({
    Object? contextLink = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? byteSize = freezed,
    Object? thumbnailLink = freezed,
    Object? thumbnailHeight = freezed,
    Object? thumbnailWidth = freezed,
  }) {
    return _then(_value.copyWith(
      contextLink: contextLink == freezed
          ? _value.contextLink
          : contextLink // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      byteSize: byteSize == freezed
          ? _value.byteSize
          : byteSize // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailLink: thumbnailLink == freezed
          ? _value.thumbnailLink
          : thumbnailLink // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailHeight: thumbnailHeight == freezed
          ? _value.thumbnailHeight
          : thumbnailHeight // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailWidth: thumbnailWidth == freezed
          ? _value.thumbnailWidth
          : thumbnailWidth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$ImageCopyWith(_Image value, $Res Function(_Image) then) =
      __$ImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String contextLink,
      int height,
      int width,
      int byteSize,
      String thumbnailLink,
      int thumbnailHeight,
      int thumbnailWidth});
}

/// @nodoc
class __$ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res>
    implements _$ImageCopyWith<$Res> {
  __$ImageCopyWithImpl(_Image _value, $Res Function(_Image) _then)
      : super(_value, (v) => _then(v as _Image));

  @override
  _Image get _value => super._value as _Image;

  @override
  $Res call({
    Object? contextLink = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? byteSize = freezed,
    Object? thumbnailLink = freezed,
    Object? thumbnailHeight = freezed,
    Object? thumbnailWidth = freezed,
  }) {
    return _then(_Image(
      contextLink: contextLink == freezed
          ? _value.contextLink
          : contextLink // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      byteSize: byteSize == freezed
          ? _value.byteSize
          : byteSize // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailLink: thumbnailLink == freezed
          ? _value.thumbnailLink
          : thumbnailLink // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailHeight: thumbnailHeight == freezed
          ? _value.thumbnailHeight
          : thumbnailHeight // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailWidth: thumbnailWidth == freezed
          ? _value.thumbnailWidth
          : thumbnailWidth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Image implements _Image {
  const _$_Image(
      {required this.contextLink,
      required this.height,
      required this.width,
      required this.byteSize,
      required this.thumbnailLink,
      required this.thumbnailHeight,
      required this.thumbnailWidth});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  final String contextLink;
  @override
  final int height;
  @override
  final int width;
  @override
  final int byteSize;
  @override
  final String thumbnailLink;
  @override
  final int thumbnailHeight;
  @override
  final int thumbnailWidth;

  @override
  String toString() {
    return 'Image(contextLink: $contextLink, height: $height, width: $width, byteSize: $byteSize, thumbnailLink: $thumbnailLink, thumbnailHeight: $thumbnailHeight, thumbnailWidth: $thumbnailWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Image &&
            (identical(other.contextLink, contextLink) ||
                other.contextLink == contextLink) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.byteSize, byteSize) ||
                other.byteSize == byteSize) &&
            (identical(other.thumbnailLink, thumbnailLink) ||
                other.thumbnailLink == thumbnailLink) &&
            (identical(other.thumbnailHeight, thumbnailHeight) ||
                other.thumbnailHeight == thumbnailHeight) &&
            (identical(other.thumbnailWidth, thumbnailWidth) ||
                other.thumbnailWidth == thumbnailWidth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contextLink, height, width,
      byteSize, thumbnailLink, thumbnailHeight, thumbnailWidth);

  @JsonKey(ignore: true)
  @override
  _$ImageCopyWith<_Image> get copyWith =>
      __$ImageCopyWithImpl<_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(this);
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {required String contextLink,
      required int height,
      required int width,
      required int byteSize,
      required String thumbnailLink,
      required int thumbnailHeight,
      required int thumbnailWidth}) = _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  String get contextLink;
  @override
  int get height;
  @override
  int get width;
  @override
  int get byteSize;
  @override
  String get thumbnailLink;
  @override
  int get thumbnailHeight;
  @override
  int get thumbnailWidth;
  @override
  @JsonKey(ignore: true)
  _$ImageCopyWith<_Image> get copyWith => throw _privateConstructorUsedError;
}

Queries _$QueriesFromJson(Map<String, dynamic> json) {
  return _Queries.fromJson(json);
}

/// @nodoc
class _$QueriesTearOff {
  const _$QueriesTearOff();

  _Queries call(
      {required List<NextPage> request, required List<NextPage> nextPage}) {
    return _Queries(
      request: request,
      nextPage: nextPage,
    );
  }

  Queries fromJson(Map<String, Object?> json) {
    return Queries.fromJson(json);
  }
}

/// @nodoc
const $Queries = _$QueriesTearOff();

/// @nodoc
mixin _$Queries {
  List<NextPage> get request => throw _privateConstructorUsedError;
  List<NextPage> get nextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueriesCopyWith<Queries> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueriesCopyWith<$Res> {
  factory $QueriesCopyWith(Queries value, $Res Function(Queries) then) =
      _$QueriesCopyWithImpl<$Res>;
  $Res call({List<NextPage> request, List<NextPage> nextPage});
}

/// @nodoc
class _$QueriesCopyWithImpl<$Res> implements $QueriesCopyWith<$Res> {
  _$QueriesCopyWithImpl(this._value, this._then);

  final Queries _value;
  // ignore: unused_field
  final $Res Function(Queries) _then;

  @override
  $Res call({
    Object? request = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as List<NextPage>,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as List<NextPage>,
    ));
  }
}

/// @nodoc
abstract class _$QueriesCopyWith<$Res> implements $QueriesCopyWith<$Res> {
  factory _$QueriesCopyWith(_Queries value, $Res Function(_Queries) then) =
      __$QueriesCopyWithImpl<$Res>;
  @override
  $Res call({List<NextPage> request, List<NextPage> nextPage});
}

/// @nodoc
class __$QueriesCopyWithImpl<$Res> extends _$QueriesCopyWithImpl<$Res>
    implements _$QueriesCopyWith<$Res> {
  __$QueriesCopyWithImpl(_Queries _value, $Res Function(_Queries) _then)
      : super(_value, (v) => _then(v as _Queries));

  @override
  _Queries get _value => super._value as _Queries;

  @override
  $Res call({
    Object? request = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_Queries(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as List<NextPage>,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as List<NextPage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Queries implements _Queries {
  const _$_Queries({required this.request, required this.nextPage});

  factory _$_Queries.fromJson(Map<String, dynamic> json) =>
      _$$_QueriesFromJson(json);

  @override
  final List<NextPage> request;
  @override
  final List<NextPage> nextPage;

  @override
  String toString() {
    return 'Queries(request: $request, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Queries &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(request),
      const DeepCollectionEquality().hash(nextPage));

  @JsonKey(ignore: true)
  @override
  _$QueriesCopyWith<_Queries> get copyWith =>
      __$QueriesCopyWithImpl<_Queries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueriesToJson(this);
  }
}

abstract class _Queries implements Queries {
  const factory _Queries(
      {required List<NextPage> request,
      required List<NextPage> nextPage}) = _$_Queries;

  factory _Queries.fromJson(Map<String, dynamic> json) = _$_Queries.fromJson;

  @override
  List<NextPage> get request;
  @override
  List<NextPage> get nextPage;
  @override
  @JsonKey(ignore: true)
  _$QueriesCopyWith<_Queries> get copyWith =>
      throw _privateConstructorUsedError;
}

NextPage _$NextPageFromJson(Map<String, dynamic> json) {
  return _NextPage.fromJson(json);
}

/// @nodoc
class _$NextPageTearOff {
  const _$NextPageTearOff();

  _NextPage call(
      {required String title,
      required String totalResults,
      required String searchTerms,
      required int count,
      required int startIndex,
      required String inputEncoding,
      required String outputEncoding,
      required String safe,
      required String cx,
      required String searchType}) {
    return _NextPage(
      title: title,
      totalResults: totalResults,
      searchTerms: searchTerms,
      count: count,
      startIndex: startIndex,
      inputEncoding: inputEncoding,
      outputEncoding: outputEncoding,
      safe: safe,
      cx: cx,
      searchType: searchType,
    );
  }

  NextPage fromJson(Map<String, Object?> json) {
    return NextPage.fromJson(json);
  }
}

/// @nodoc
const $NextPage = _$NextPageTearOff();

/// @nodoc
mixin _$NextPage {
  String get title => throw _privateConstructorUsedError;
  String get totalResults => throw _privateConstructorUsedError;
  String get searchTerms => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;
  String get inputEncoding => throw _privateConstructorUsedError;
  String get outputEncoding => throw _privateConstructorUsedError;
  String get safe => throw _privateConstructorUsedError;
  String get cx => throw _privateConstructorUsedError;
  String get searchType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextPageCopyWith<NextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextPageCopyWith<$Res> {
  factory $NextPageCopyWith(NextPage value, $Res Function(NextPage) then) =
      _$NextPageCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String totalResults,
      String searchTerms,
      int count,
      int startIndex,
      String inputEncoding,
      String outputEncoding,
      String safe,
      String cx,
      String searchType});
}

/// @nodoc
class _$NextPageCopyWithImpl<$Res> implements $NextPageCopyWith<$Res> {
  _$NextPageCopyWithImpl(this._value, this._then);

  final NextPage _value;
  // ignore: unused_field
  final $Res Function(NextPage) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? totalResults = freezed,
    Object? searchTerms = freezed,
    Object? count = freezed,
    Object? startIndex = freezed,
    Object? inputEncoding = freezed,
    Object? outputEncoding = freezed,
    Object? safe = freezed,
    Object? cx = freezed,
    Object? searchType = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String,
      searchTerms: searchTerms == freezed
          ? _value.searchTerms
          : searchTerms // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      startIndex: startIndex == freezed
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      inputEncoding: inputEncoding == freezed
          ? _value.inputEncoding
          : inputEncoding // ignore: cast_nullable_to_non_nullable
              as String,
      outputEncoding: outputEncoding == freezed
          ? _value.outputEncoding
          : outputEncoding // ignore: cast_nullable_to_non_nullable
              as String,
      safe: safe == freezed
          ? _value.safe
          : safe // ignore: cast_nullable_to_non_nullable
              as String,
      cx: cx == freezed
          ? _value.cx
          : cx // ignore: cast_nullable_to_non_nullable
              as String,
      searchType: searchType == freezed
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NextPageCopyWith<$Res> implements $NextPageCopyWith<$Res> {
  factory _$NextPageCopyWith(_NextPage value, $Res Function(_NextPage) then) =
      __$NextPageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String totalResults,
      String searchTerms,
      int count,
      int startIndex,
      String inputEncoding,
      String outputEncoding,
      String safe,
      String cx,
      String searchType});
}

/// @nodoc
class __$NextPageCopyWithImpl<$Res> extends _$NextPageCopyWithImpl<$Res>
    implements _$NextPageCopyWith<$Res> {
  __$NextPageCopyWithImpl(_NextPage _value, $Res Function(_NextPage) _then)
      : super(_value, (v) => _then(v as _NextPage));

  @override
  _NextPage get _value => super._value as _NextPage;

  @override
  $Res call({
    Object? title = freezed,
    Object? totalResults = freezed,
    Object? searchTerms = freezed,
    Object? count = freezed,
    Object? startIndex = freezed,
    Object? inputEncoding = freezed,
    Object? outputEncoding = freezed,
    Object? safe = freezed,
    Object? cx = freezed,
    Object? searchType = freezed,
  }) {
    return _then(_NextPage(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String,
      searchTerms: searchTerms == freezed
          ? _value.searchTerms
          : searchTerms // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      startIndex: startIndex == freezed
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      inputEncoding: inputEncoding == freezed
          ? _value.inputEncoding
          : inputEncoding // ignore: cast_nullable_to_non_nullable
              as String,
      outputEncoding: outputEncoding == freezed
          ? _value.outputEncoding
          : outputEncoding // ignore: cast_nullable_to_non_nullable
              as String,
      safe: safe == freezed
          ? _value.safe
          : safe // ignore: cast_nullable_to_non_nullable
              as String,
      cx: cx == freezed
          ? _value.cx
          : cx // ignore: cast_nullable_to_non_nullable
              as String,
      searchType: searchType == freezed
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NextPage implements _NextPage {
  const _$_NextPage(
      {required this.title,
      required this.totalResults,
      required this.searchTerms,
      required this.count,
      required this.startIndex,
      required this.inputEncoding,
      required this.outputEncoding,
      required this.safe,
      required this.cx,
      required this.searchType});

  factory _$_NextPage.fromJson(Map<String, dynamic> json) =>
      _$$_NextPageFromJson(json);

  @override
  final String title;
  @override
  final String totalResults;
  @override
  final String searchTerms;
  @override
  final int count;
  @override
  final int startIndex;
  @override
  final String inputEncoding;
  @override
  final String outputEncoding;
  @override
  final String safe;
  @override
  final String cx;
  @override
  final String searchType;

  @override
  String toString() {
    return 'NextPage(title: $title, totalResults: $totalResults, searchTerms: $searchTerms, count: $count, startIndex: $startIndex, inputEncoding: $inputEncoding, outputEncoding: $outputEncoding, safe: $safe, cx: $cx, searchType: $searchType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NextPage &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.searchTerms, searchTerms) ||
                other.searchTerms == searchTerms) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            (identical(other.inputEncoding, inputEncoding) ||
                other.inputEncoding == inputEncoding) &&
            (identical(other.outputEncoding, outputEncoding) ||
                other.outputEncoding == outputEncoding) &&
            (identical(other.safe, safe) || other.safe == safe) &&
            (identical(other.cx, cx) || other.cx == cx) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, totalResults, searchTerms,
      count, startIndex, inputEncoding, outputEncoding, safe, cx, searchType);

  @JsonKey(ignore: true)
  @override
  _$NextPageCopyWith<_NextPage> get copyWith =>
      __$NextPageCopyWithImpl<_NextPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NextPageToJson(this);
  }
}

abstract class _NextPage implements NextPage {
  const factory _NextPage(
      {required String title,
      required String totalResults,
      required String searchTerms,
      required int count,
      required int startIndex,
      required String inputEncoding,
      required String outputEncoding,
      required String safe,
      required String cx,
      required String searchType}) = _$_NextPage;

  factory _NextPage.fromJson(Map<String, dynamic> json) = _$_NextPage.fromJson;

  @override
  String get title;
  @override
  String get totalResults;
  @override
  String get searchTerms;
  @override
  int get count;
  @override
  int get startIndex;
  @override
  String get inputEncoding;
  @override
  String get outputEncoding;
  @override
  String get safe;
  @override
  String get cx;
  @override
  String get searchType;
  @override
  @JsonKey(ignore: true)
  _$NextPageCopyWith<_NextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchInformation _$SearchInformationFromJson(Map<String, dynamic> json) {
  return _SearchInformation.fromJson(json);
}

/// @nodoc
class _$SearchInformationTearOff {
  const _$SearchInformationTearOff();

  _SearchInformation call(
      {required double searchTime,
      required String formattedSearchTime,
      required String totalResults,
      required String formattedTotalResults}) {
    return _SearchInformation(
      searchTime: searchTime,
      formattedSearchTime: formattedSearchTime,
      totalResults: totalResults,
      formattedTotalResults: formattedTotalResults,
    );
  }

  SearchInformation fromJson(Map<String, Object?> json) {
    return SearchInformation.fromJson(json);
  }
}

/// @nodoc
const $SearchInformation = _$SearchInformationTearOff();

/// @nodoc
mixin _$SearchInformation {
  double get searchTime => throw _privateConstructorUsedError;
  String get formattedSearchTime => throw _privateConstructorUsedError;
  String get totalResults => throw _privateConstructorUsedError;
  String get formattedTotalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchInformationCopyWith<SearchInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchInformationCopyWith<$Res> {
  factory $SearchInformationCopyWith(
          SearchInformation value, $Res Function(SearchInformation) then) =
      _$SearchInformationCopyWithImpl<$Res>;
  $Res call(
      {double searchTime,
      String formattedSearchTime,
      String totalResults,
      String formattedTotalResults});
}

/// @nodoc
class _$SearchInformationCopyWithImpl<$Res>
    implements $SearchInformationCopyWith<$Res> {
  _$SearchInformationCopyWithImpl(this._value, this._then);

  final SearchInformation _value;
  // ignore: unused_field
  final $Res Function(SearchInformation) _then;

  @override
  $Res call({
    Object? searchTime = freezed,
    Object? formattedSearchTime = freezed,
    Object? totalResults = freezed,
    Object? formattedTotalResults = freezed,
  }) {
    return _then(_value.copyWith(
      searchTime: searchTime == freezed
          ? _value.searchTime
          : searchTime // ignore: cast_nullable_to_non_nullable
              as double,
      formattedSearchTime: formattedSearchTime == freezed
          ? _value.formattedSearchTime
          : formattedSearchTime // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String,
      formattedTotalResults: formattedTotalResults == freezed
          ? _value.formattedTotalResults
          : formattedTotalResults // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchInformationCopyWith<$Res>
    implements $SearchInformationCopyWith<$Res> {
  factory _$SearchInformationCopyWith(
          _SearchInformation value, $Res Function(_SearchInformation) then) =
      __$SearchInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {double searchTime,
      String formattedSearchTime,
      String totalResults,
      String formattedTotalResults});
}

/// @nodoc
class __$SearchInformationCopyWithImpl<$Res>
    extends _$SearchInformationCopyWithImpl<$Res>
    implements _$SearchInformationCopyWith<$Res> {
  __$SearchInformationCopyWithImpl(
      _SearchInformation _value, $Res Function(_SearchInformation) _then)
      : super(_value, (v) => _then(v as _SearchInformation));

  @override
  _SearchInformation get _value => super._value as _SearchInformation;

  @override
  $Res call({
    Object? searchTime = freezed,
    Object? formattedSearchTime = freezed,
    Object? totalResults = freezed,
    Object? formattedTotalResults = freezed,
  }) {
    return _then(_SearchInformation(
      searchTime: searchTime == freezed
          ? _value.searchTime
          : searchTime // ignore: cast_nullable_to_non_nullable
              as double,
      formattedSearchTime: formattedSearchTime == freezed
          ? _value.formattedSearchTime
          : formattedSearchTime // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String,
      formattedTotalResults: formattedTotalResults == freezed
          ? _value.formattedTotalResults
          : formattedTotalResults // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchInformation implements _SearchInformation {
  const _$_SearchInformation(
      {required this.searchTime,
      required this.formattedSearchTime,
      required this.totalResults,
      required this.formattedTotalResults});

  factory _$_SearchInformation.fromJson(Map<String, dynamic> json) =>
      _$$_SearchInformationFromJson(json);

  @override
  final double searchTime;
  @override
  final String formattedSearchTime;
  @override
  final String totalResults;
  @override
  final String formattedTotalResults;

  @override
  String toString() {
    return 'SearchInformation(searchTime: $searchTime, formattedSearchTime: $formattedSearchTime, totalResults: $totalResults, formattedTotalResults: $formattedTotalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchInformation &&
            (identical(other.searchTime, searchTime) ||
                other.searchTime == searchTime) &&
            (identical(other.formattedSearchTime, formattedSearchTime) ||
                other.formattedSearchTime == formattedSearchTime) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.formattedTotalResults, formattedTotalResults) ||
                other.formattedTotalResults == formattedTotalResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchTime, formattedSearchTime,
      totalResults, formattedTotalResults);

  @JsonKey(ignore: true)
  @override
  _$SearchInformationCopyWith<_SearchInformation> get copyWith =>
      __$SearchInformationCopyWithImpl<_SearchInformation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchInformationToJson(this);
  }
}

abstract class _SearchInformation implements SearchInformation {
  const factory _SearchInformation(
      {required double searchTime,
      required String formattedSearchTime,
      required String totalResults,
      required String formattedTotalResults}) = _$_SearchInformation;

  factory _SearchInformation.fromJson(Map<String, dynamic> json) =
      _$_SearchInformation.fromJson;

  @override
  double get searchTime;
  @override
  String get formattedSearchTime;
  @override
  String get totalResults;
  @override
  String get formattedTotalResults;
  @override
  @JsonKey(ignore: true)
  _$SearchInformationCopyWith<_SearchInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

Url _$UrlFromJson(Map<String, dynamic> json) {
  return _Url.fromJson(json);
}

/// @nodoc
class _$UrlTearOff {
  const _$UrlTearOff();

  _Url call({required String type, required String template}) {
    return _Url(
      type: type,
      template: template,
    );
  }

  Url fromJson(Map<String, Object?> json) {
    return Url.fromJson(json);
  }
}

/// @nodoc
const $Url = _$UrlTearOff();

/// @nodoc
mixin _$Url {
  String get type => throw _privateConstructorUsedError;
  String get template => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlCopyWith<Url> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlCopyWith<$Res> {
  factory $UrlCopyWith(Url value, $Res Function(Url) then) =
      _$UrlCopyWithImpl<$Res>;
  $Res call({String type, String template});
}

/// @nodoc
class _$UrlCopyWithImpl<$Res> implements $UrlCopyWith<$Res> {
  _$UrlCopyWithImpl(this._value, this._then);

  final Url _value;
  // ignore: unused_field
  final $Res Function(Url) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? template = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      template: template == freezed
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UrlCopyWith<$Res> implements $UrlCopyWith<$Res> {
  factory _$UrlCopyWith(_Url value, $Res Function(_Url) then) =
      __$UrlCopyWithImpl<$Res>;
  @override
  $Res call({String type, String template});
}

/// @nodoc
class __$UrlCopyWithImpl<$Res> extends _$UrlCopyWithImpl<$Res>
    implements _$UrlCopyWith<$Res> {
  __$UrlCopyWithImpl(_Url _value, $Res Function(_Url) _then)
      : super(_value, (v) => _then(v as _Url));

  @override
  _Url get _value => super._value as _Url;

  @override
  $Res call({
    Object? type = freezed,
    Object? template = freezed,
  }) {
    return _then(_Url(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      template: template == freezed
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Url implements _Url {
  const _$_Url({required this.type, required this.template});

  factory _$_Url.fromJson(Map<String, dynamic> json) => _$$_UrlFromJson(json);

  @override
  final String type;
  @override
  final String template;

  @override
  String toString() {
    return 'Url(type: $type, template: $template)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Url &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, template);

  @JsonKey(ignore: true)
  @override
  _$UrlCopyWith<_Url> get copyWith =>
      __$UrlCopyWithImpl<_Url>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlToJson(this);
  }
}

abstract class _Url implements Url {
  const factory _Url({required String type, required String template}) = _$_Url;

  factory _Url.fromJson(Map<String, dynamic> json) = _$_Url.fromJson;

  @override
  String get type;
  @override
  String get template;
  @override
  @JsonKey(ignore: true)
  _$UrlCopyWith<_Url> get copyWith => throw _privateConstructorUsedError;
}
