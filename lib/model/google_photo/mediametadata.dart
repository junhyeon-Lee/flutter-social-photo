import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reference_app/model/google_photo/video.dart';
part 'mediametadata.freezed.dart';
part 'mediametadata.g.dart';

@freezed
class MediaMetaData with _$MediaMetaData {
  factory MediaMetaData({
    String? creationTime,
    String? width,
    String? height,
    Video? video
  }) = _MediaMetadata;

  factory MediaMetaData.fromJson(Map<String, dynamic> json) =>
      _$MediaMetaDataFromJson(json);
}