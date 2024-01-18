// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'googlephotolist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GooglePhotoListImpl _$$GooglePhotoListImplFromJson(
        Map<String, dynamic> json) =>
    _$GooglePhotoListImpl(
      mediaItems: (json['mediaItems'] as List<dynamic>?)
          ?.map((e) => GooglePhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['nextPageToken'] as String?,
    );

Map<String, dynamic> _$$GooglePhotoListImplToJson(
        _$GooglePhotoListImpl instance) =>
    <String, dynamic>{
      'mediaItems': instance.mediaItems,
      'nextPageToken': instance.nextPageToken,
    };
