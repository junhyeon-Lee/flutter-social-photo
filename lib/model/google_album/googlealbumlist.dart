import 'package:freezed_annotation/freezed_annotation.dart';

import 'googlealbum.dart';

part 'googlealbumlist.freezed.dart';
part 'googlealbumlist.g.dart';

@freezed
class GoogleAlbumList with _$GoogleAlbumList {
  factory GoogleAlbumList({
   required List<GoogleAlbum> albums
  }) = _GoogleAlbumList;

  factory GoogleAlbumList.fromJson(Map<String, dynamic> json) =>
      _$GoogleAlbumListFromJson(json);
}
