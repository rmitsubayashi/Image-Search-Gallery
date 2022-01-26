// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'saved_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedImage _$SavedImageFromJson(Map<String, dynamic> json) {
  return _SavedImage.fromJson(json);
}

/// @nodoc
class _$SavedImageTearOff {
  const _$SavedImageTearOff();

  _SavedImage call(int? id, String url, String label,
      @JsonKey(name: "created_at") String createdAt) {
    return _SavedImage(
      id,
      url,
      label,
      createdAt,
    );
  }

  SavedImage fromJson(Map<String, Object?> json) {
    return SavedImage.fromJson(json);
  }
}

/// @nodoc
const $SavedImage = _$SavedImageTearOff();

/// @nodoc
mixin _$SavedImage {
  int? get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedImageCopyWith<SavedImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedImageCopyWith<$Res> {
  factory $SavedImageCopyWith(
          SavedImage value, $Res Function(SavedImage) then) =
      _$SavedImageCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String url,
      String label,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class _$SavedImageCopyWithImpl<$Res> implements $SavedImageCopyWith<$Res> {
  _$SavedImageCopyWithImpl(this._value, this._then);

  final SavedImage _value;
  // ignore: unused_field
  final $Res Function(SavedImage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? label = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SavedImageCopyWith<$Res> implements $SavedImageCopyWith<$Res> {
  factory _$SavedImageCopyWith(
          _SavedImage value, $Res Function(_SavedImage) then) =
      __$SavedImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String url,
      String label,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class __$SavedImageCopyWithImpl<$Res> extends _$SavedImageCopyWithImpl<$Res>
    implements _$SavedImageCopyWith<$Res> {
  __$SavedImageCopyWithImpl(
      _SavedImage _value, $Res Function(_SavedImage) _then)
      : super(_value, (v) => _then(v as _SavedImage));

  @override
  _SavedImage get _value => super._value as _SavedImage;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? label = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_SavedImage(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedImage implements _SavedImage {
  const _$_SavedImage(this.id, this.url, this.label,
      @JsonKey(name: "created_at") this.createdAt);

  factory _$_SavedImage.fromJson(Map<String, dynamic> json) =>
      _$$_SavedImageFromJson(json);

  @override
  final int? id;
  @override
  final String url;
  @override
  final String label;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;

  @override
  String toString() {
    return 'SavedImage(id: $id, url: $url, label: $label, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, url, label, createdAt);

  @JsonKey(ignore: true)
  @override
  _$SavedImageCopyWith<_SavedImage> get copyWith =>
      __$SavedImageCopyWithImpl<_SavedImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedImageToJson(this);
  }
}

abstract class _SavedImage implements SavedImage {
  const factory _SavedImage(int? id, String url, String label,
      @JsonKey(name: "created_at") String createdAt) = _$_SavedImage;

  factory _SavedImage.fromJson(Map<String, dynamic> json) =
      _$_SavedImage.fromJson;

  @override
  int? get id;
  @override
  String get url;
  @override
  String get label;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$SavedImageCopyWith<_SavedImage> get copyWith =>
      throw _privateConstructorUsedError;
}
