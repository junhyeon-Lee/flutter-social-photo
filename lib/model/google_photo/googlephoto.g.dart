// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'googlephoto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GooglePhotoImpl _$$GooglePhotoImplFromJson(Map<String, dynamic> json) =>
    _$GooglePhotoImpl(
      id: json['id'] as String?,
      productUrl: json['productUrl'] as String?,
      baseUrl: json['baseUrl'] as String?,
      mimeType: json['mimeType'] as String?,
      mediaMetadata: json['mediaMetadata'] == null
          ? null
          : MediaMetaData.fromJson(
              json['mediaMetadata'] as Map<String, dynamic>),
      filename: json['filename'] as String?,
    );

Map<String, dynamic> _$$GooglePhotoImplToJson(_$GooglePhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productUrl': instance.productUrl,
      'baseUrl': instance.baseUrl,
      'mimeType': instance.mimeType,
      'mediaMetadata': instance.mediaMetadata,
      'filename': instance.filename,
    };
