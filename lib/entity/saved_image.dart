import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_image.freezed.dart';
part 'saved_image.g.dart';

@freezed
class SavedImage with _$SavedImage {
  const factory SavedImage(
    int? id,
    String url,
    @JsonKey(name: "local_path") String localPath,
    String label,
    @JsonKey(name: "created_at") String createdAt
  ) = _SavedImage;

  factory SavedImage.fromJson(Map<String, dynamic> json) => _$SavedImageFromJson(json);
}