// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'googlealbumlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoogleAlbumListImpl _$$GoogleAlbumListImplFromJson(
        Map<String, dynamic> json) =>
    _$GoogleAlbumListImpl(
      albums: (json['albums'] as List<dynamic>)
          .map((e) => GoogleAlbum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GoogleAlbumListImplToJson(
        _$GoogleAlbumListImpl instance) =>
    <String, dynamic>{
      'albums': instance.albums,
    };
