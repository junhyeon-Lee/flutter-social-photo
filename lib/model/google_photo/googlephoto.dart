import 'package:freezed_annotation/freezed_annotation.dart';

import 'mediametadata.dart';

part 'googlephoto.freezed.dart';
part 'googlephoto.g.dart';

@freezed
class GooglePhoto with _$GooglePhoto {
  factory GooglePhoto({
    String? id,
    String? productUrl,
    String? baseUrl,
    String? mimeType,
    MediaMetaData? mediaMetadata,
    String? filename,
  }) = _GooglePhoto;

  factory GooglePhoto.fromJson(Map<String, dynamic> json) =>
      _$GooglePhotoFromJson(json);
}
