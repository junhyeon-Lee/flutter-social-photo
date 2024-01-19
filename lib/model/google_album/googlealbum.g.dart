// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'googlealbum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoogleAlbumImpl _$$GoogleAlbumImplFromJson(Map<String, dynamic> json) =>
    _$GoogleAlbumImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      productUrl: json['productUrl'] as String?,
      mediaItemsCount: json['mediaItemsCount'] as String?,
      coverPhotoBaseUrl: json['coverPhotoBaseUrl'] as String?,
      coverPhotoMediaItemId: json['coverPhotoMediaItemId'] as String?,
    );

Map<String, dynamic> _$$GoogleAlbumImplToJson(_$GoogleAlbumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'productUrl': instance.productUrl,
      'mediaItemsCount': instance.mediaItemsCount,
      'coverPhotoBaseUrl': instance.coverPhotoBaseUrl,
      'coverPhotoMediaItemId': instance.coverPhotoMediaItemId,
    };
