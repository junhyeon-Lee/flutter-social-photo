import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reference_app/model/google_photo/googlephoto.dart';
part 'googlephotolist.freezed.dart';
part 'googlephotolist.g.dart';

@freezed
class GooglePhotoList with _$GooglePhotoList {
  factory GooglePhotoList({
    List<GooglePhoto>? mediaItems,
    String? nextPageToken,
  }) = _GooglePhotoList;

  factory GooglePhotoList.fromJson(Map<String, dynamic> json) =>
      _$GooglePhotoListFromJson(json);
}