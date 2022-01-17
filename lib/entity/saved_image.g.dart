// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedImage _$$_SavedImageFromJson(Map<String, dynamic> json) =>
    _$_SavedImage(
      json['id'] as int?,
      json['url'] as String,
      json['local_path'] as String,
      json['label'] as String,
      json['created_at'] as String,
    );

Map<String, dynamic> _$$_SavedImageToJson(_$_SavedImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'local_path': instance.localPath,
      'label': instance.label,
      'created_at': instance.createdAt,
    };
