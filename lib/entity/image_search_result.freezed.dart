// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImageSearchResultTearOff {
  const _$ImageSearchResultTearOff();

  _ImageSearchResult call(List<String> links, int nextStartingIndex) {
    return _ImageSearchResult(
      links,
      nextStartingIndex,
    );
  }
}

/// @nodoc
const $ImageSearchResult = _$ImageSearchResultTearOff();

/// @nodoc
mixin _$ImageSearchResult {
  List<String> get links => throw _privateConstructorUsedError;
  int get nextStartingIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageSearchResultCopyWith<ImageSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSearchResultCopyWith<$Res> {
  factory $ImageSearchResultCopyWith(
          ImageSearchResult value, $Res Function(ImageSearchResult) then) =
      _$ImageSearchResultCopyWithImpl<$Res>;
  $Res call({List<String> links, int nextStartingIndex});
}

/// @nodoc
class _$ImageSearchResultCopyWithImpl<$Res>
    implements $ImageSearchResultCopyWith<$Res> {
  _$ImageSearchResultCopyWithImpl(this._value, this._then);

  final ImageSearchResult _value;
  // ignore: unused_field
  final $Res Function(ImageSearchResult) _then;

  @override
  $Res call({
    Object? links = freezed,
    Object? nextStartingIndex = freezed,
  }) {
    return _then(_value.copyWith(
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nextStartingIndex: nextStartingIndex == freezed
          ? _value.nextStartingIndex
          : nextStartingIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ImageSearchResultCopyWith<$Res>
    implements $ImageSearchResultCopyWith<$Res> {
  factory _$ImageSearchResultCopyWith(
          _ImageSearchResult value, $Res Function(_ImageSearchResult) then) =
      __$ImageSearchResultCopyWithImpl<$Res>;
  @override
  $Res call({List<String> links, int nextStartingIndex});
}

/// @nodoc
class __$ImageSearchResultCopyWithImpl<$Res>
    extends _$ImageSearchResultCopyWithImpl<$Res>
    implements _$ImageSearchResultCopyWith<$Res> {
  __$ImageSearchResultCopyWithImpl(
      _ImageSearchResult _value, $Res Function(_ImageSearchResult) _then)
      : super(_value, (v) => _then(v as _ImageSearchResult));

  @override
  _ImageSearchResult get _value => super._value as _ImageSearchResult;

  @override
  $Res call({
    Object? links = freezed,
    Object? nextStartingIndex = freezed,
  }) {
    return _then(_ImageSearchResult(
      links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nextStartingIndex == freezed
          ? _value.nextStartingIndex
          : nextStartingIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ImageSearchResult implements _ImageSearchResult {
  const _$_ImageSearchResult(this.links, this.nextStartingIndex);

  @override
  final List<String> links;
  @override
  final int nextStartingIndex;

  @override
  String toString() {
    return 'ImageSearchResult(links: $links, nextStartingIndex: $nextStartingIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageSearchResult &&
            const DeepCollectionEquality().equals(other.links, links) &&
            (identical(other.nextStartingIndex, nextStartingIndex) ||
                other.nextStartingIndex == nextStartingIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(links), nextStartingIndex);

  @JsonKey(ignore: true)
  @override
  _$ImageSearchResultCopyWith<_ImageSearchResult> get copyWith =>
      __$ImageSearchResultCopyWithImpl<_ImageSearchResult>(this, _$identity);
}

abstract class _ImageSearchResult implements ImageSearchResult {
  const factory _ImageSearchResult(List<String> links, int nextStartingIndex) =
      _$_ImageSearchResult;

  @override
  List<String> get links;
  @override
  int get nextStartingIndex;
  @override
  @JsonKey(ignore: true)
  _$ImageSearchResultCopyWith<_ImageSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}
