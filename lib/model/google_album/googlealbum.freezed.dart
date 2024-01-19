// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'googlealbum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GoogleAlbum _$GoogleAlbumFromJson(Map<String, dynamic> json) {
  return _GoogleAlbum.fromJson(json);
}

/// @nodoc
mixin _$GoogleAlbum {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get productUrl => throw _privateConstructorUsedError;
  String? get mediaItemsCount => throw _privateConstructorUsedError;
  String? get coverPhotoBaseUrl => throw _privateConstructorUsedError;
  String? get coverPhotoMediaItemId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleAlbumCopyWith<GoogleAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleAlbumCopyWith<$Res> {
  factory $GoogleAlbumCopyWith(
          GoogleAlbum value, $Res Function(GoogleAlbum) then) =
      _$GoogleAlbumCopyWithImpl<$Res, GoogleAlbum>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? productUrl,
      String? mediaItemsCount,
      String? coverPhotoBaseUrl,
      String? coverPhotoMediaItemId});
}

/// @nodoc
class _$GoogleAlbumCopyWithImpl<$Res, $Val extends GoogleAlbum>
    implements $GoogleAlbumCopyWith<$Res> {
  _$GoogleAlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? productUrl = freezed,
    Object? mediaItemsCount = freezed,
    Object? coverPhotoBaseUrl = freezed,
    Object? coverPhotoMediaItemId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      productUrl: freezed == productUrl
          ? _value.productUrl
          : productUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaItemsCount: freezed == mediaItemsCount
          ? _value.mediaItemsCount
          : mediaItemsCount // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhotoBaseUrl: freezed == coverPhotoBaseUrl
          ? _value.coverPhotoBaseUrl
          : coverPhotoBaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhotoMediaItemId: freezed == coverPhotoMediaItemId
          ? _value.coverPhotoMediaItemId
          : coverPhotoMediaItemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleAlbumImplCopyWith<$Res>
    implements $GoogleAlbumCopyWith<$Res> {
  factory _$$GoogleAlbumImplCopyWith(
          _$GoogleAlbumImpl value, $Res Function(_$GoogleAlbumImpl) then) =
      __$$GoogleAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? productUrl,
      String? mediaItemsCount,
      String? coverPhotoBaseUrl,
      String? coverPhotoMediaItemId});
}

/// @nodoc
class __$$GoogleAlbumImplCopyWithImpl<$Res>
    extends _$GoogleAlbumCopyWithImpl<$Res, _$GoogleAlbumImpl>
    implements _$$GoogleAlbumImplCopyWith<$Res> {
  __$$GoogleAlbumImplCopyWithImpl(
      _$GoogleAlbumImpl _value, $Res Function(_$GoogleAlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? productUrl = freezed,
    Object? mediaItemsCount = freezed,
    Object? coverPhotoBaseUrl = freezed,
    Object? coverPhotoMediaItemId = freezed,
  }) {
    return _then(_$GoogleAlbumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      productUrl: freezed == productUrl
          ? _value.productUrl
          : productUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaItemsCount: freezed == mediaItemsCount
          ? _value.mediaItemsCount
          : mediaItemsCount // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhotoBaseUrl: freezed == coverPhotoBaseUrl
          ? _value.coverPhotoBaseUrl
          : coverPhotoBaseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhotoMediaItemId: freezed == coverPhotoMediaItemId
          ? _value.coverPhotoMediaItemId
          : coverPhotoMediaItemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleAlbumImpl implements _GoogleAlbum {
  _$GoogleAlbumImpl(
      {this.id,
      this.title,
      this.productUrl,
      this.mediaItemsCount,
      this.coverPhotoBaseUrl,
      this.coverPhotoMediaItemId});

  factory _$GoogleAlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleAlbumImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? productUrl;
  @override
  final String? mediaItemsCount;
  @override
  final String? coverPhotoBaseUrl;
  @override
  final String? coverPhotoMediaItemId;

  @override
  String toString() {
    return 'GoogleAlbum(id: $id, title: $title, productUrl: $productUrl, mediaItemsCount: $mediaItemsCount, coverPhotoBaseUrl: $coverPhotoBaseUrl, coverPhotoMediaItemId: $coverPhotoMediaItemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAlbumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.productUrl, productUrl) ||
                other.productUrl == productUrl) &&
            (identical(other.mediaItemsCount, mediaItemsCount) ||
                other.mediaItemsCount == mediaItemsCount) &&
            (identical(other.coverPhotoBaseUrl, coverPhotoBaseUrl) ||
                other.coverPhotoBaseUrl == coverPhotoBaseUrl) &&
            (identical(other.coverPhotoMediaItemId, coverPhotoMediaItemId) ||
                other.coverPhotoMediaItemId == coverPhotoMediaItemId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, productUrl,
      mediaItemsCount, coverPhotoBaseUrl, coverPhotoMediaItemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAlbumImplCopyWith<_$GoogleAlbumImpl> get copyWith =>
      __$$GoogleAlbumImplCopyWithImpl<_$GoogleAlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleAlbumImplToJson(
      this,
    );
  }
}

abstract class _GoogleAlbum implements GoogleAlbum {
  factory _GoogleAlbum(
      {final String? id,
      final String? title,
      final String? productUrl,
      final String? mediaItemsCount,
      final String? coverPhotoBaseUrl,
      final String? coverPhotoMediaItemId}) = _$GoogleAlbumImpl;

  factory _GoogleAlbum.fromJson(Map<String, dynamic> json) =
      _$GoogleAlbumImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get productUrl;
  @override
  String? get mediaItemsCount;
  @override
  String? get coverPhotoBaseUrl;
  @override
  String? get coverPhotoMediaItemId;
  @override
  @JsonKey(ignore: true)
  _$$GoogleAlbumImplCopyWith<_$GoogleAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
