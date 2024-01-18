// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mediametadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaMetadataImpl _$$MediaMetadataImplFromJson(Map<String, dynamic> json) =>
    _$MediaMetadataImpl(
      creationTime: json['creationTime'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      video: json['video'] == null
          ? null
          : Video.fromJson(json['video'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MediaMetadataImplToJson(_$MediaMetadataImpl instance) =>
    <String, dynamic>{
      'creationTime': instance.creationTime,
      'width': instance.width,
      'height': instance.height,
      'video': instance.video,
    };
