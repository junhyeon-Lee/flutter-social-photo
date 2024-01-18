import 'package:freezed_annotation/freezed_annotation.dart';

part 'googlealbum.freezed.dart';
part 'googlealbum.g.dart';

@freezed
class GoogleAlbum with _$GoogleAlbum {
  factory GoogleAlbum({
    String? id,
    String? title,
    String? productUrl,
    String? mediaItemsCount,
    String? coverPhotoBaseUrl,
    String? coverPhotoMediaItemId,
  }) = _GoogleAlbum;

  factory GoogleAlbum.fromJson(Map<String, dynamic> json) =>
      _$GoogleAlbumFromJson(json);
}
