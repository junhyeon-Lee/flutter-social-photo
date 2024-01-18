import 'package:freezed_annotation/freezed_annotation.dart';
part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  factory Video({
    int? fps,
    String? status,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) =>
      _$VideoFromJson(json);
}