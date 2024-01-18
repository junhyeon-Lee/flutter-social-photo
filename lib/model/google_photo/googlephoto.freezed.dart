// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'googlephoto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GooglePhoto _$GooglePhotoFromJson(Map<String, dynamic> json) {
  return _GooglePhoto.fromJson(json);
}

/// @nodoc
mixin _$GooglePhoto {
  String? get id => throw _privateConstructorUsedError;
  String? get productUrl => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  MediaMetaData? get mediaMetadata => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GooglePhotoCopyWith<GooglePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GooglePhotoCopyWith<$Res> {
  factory $GooglePhotoCopyWith(
          GooglePhoto value, $Res Function(GooglePhoto) then) =
      _$GooglePhotoCopyWithImpl<$Res, GooglePhoto>;
  @useResult
  $Res call(
      {String? id,
      String? productUrl,
      String? baseUrl,
      String? mimeType,
      MediaMetaData? mediaMetadata,
      String? filename});

  $MediaMetaDataCopyWith<$Res>? get mediaMetadata;
}

/// @nodoc
class _$GooglePhotoCopyWithImpl<$Res, $Val extends GooglePhoto>
    implements $GooglePhotoCopyWith<$Res> {
  _$GooglePhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productUrl = freezed,
    Object? baseUrl = freezed,
    Object? mimeType = freezed,
    Object? mediaMetadata = freezed,
    Object? filename = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productUrl: freezed == productUrl
          ? _value.productUrl
          : productUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaMetadata: freezed == mediaMetadata
          ? _value.mediaMetadata
          : mediaMetadata // ignore: cast_nullable_to_non_nullable
              as MediaMetaData?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaMetaDataCopyWith<$Res>? get mediaMetadata {
    if (_value.mediaMetadata == null) {
      return null;
    }

    return $MediaMetaDataCopyWith<$Res>(_value.mediaMetadata!, (value) {
      return _then(_value.copyWith(mediaMetadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GooglePhotoImplCopyWith<$Res>
    implements $GooglePhotoCopyWith<$Res> {
  factory _$$GooglePhotoImplCopyWith(
          _$GooglePhotoImpl value, $Res Function(_$GooglePhotoImpl) then) =
      __$$GooglePhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? productUrl,
      String? baseUrl,
      String? mimeType,
      MediaMetaData? mediaMetadata,
      String? filename});

  @override
  $MediaMetaDataCopyWith<$Res>? get mediaMetadata;
}

/// @nodoc
class __$$GooglePhotoImplCopyWithImpl<$Res>
    extends _$GooglePhotoCopyWithImpl<$Res, _$GooglePhotoImpl>
    implements _$$GooglePhotoImplCopyWith<$Res> {
  __$$GooglePhotoImplCopyWithImpl(
      _$GooglePhotoImpl _value, $Res Function(_$GooglePhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productUrl = freezed,
    Object? baseUrl = freezed,
    Object? mimeType = freezed,
    Object? mediaMetadata = freezed,
    Object? filename = freezed,
  }) {
    return _then(_$GooglePhotoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productUrl: freezed == productUrl
          ? _value.productUrl
          : productUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaMetadata: freezed == mediaMetadata
          ? _value.mediaMetadata
          : mediaMetadata // ignore: cast_nullable_to_non_nullable
              as MediaMetaData?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GooglePhotoImpl implements _GooglePhoto {
  _$GooglePhotoImpl(
      {this.id,
      this.productUrl,
      this.baseUrl,
      this.mimeType,
      this.mediaMetadata,
      this.filename});

  factory _$GooglePhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GooglePhotoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? productUrl;
  @override
  final String? baseUrl;
  @override
  final String? mimeType;
  @override
  final MediaMetaData? mediaMetadata;
  @override
  final String? filename;

  @override
  String toString() {
    return 'GooglePhoto(id: $id, productUrl: $productUrl, baseUrl: $baseUrl, mimeType: $mimeType, mediaMetadata: $mediaMetadata, filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GooglePhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productUrl, productUrl) ||
                other.productUrl == productUrl) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.mediaMetadata, mediaMetadata) ||
                other.mediaMetadata == mediaMetadata) &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, productUrl, baseUrl, mimeType, mediaMetadata, filename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GooglePhotoImplCopyWith<_$GooglePhotoImpl> get copyWith =>
      __$$GooglePhotoImplCopyWithImpl<_$GooglePhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GooglePhotoImplToJson(
      this,
    );
  }
}

abstract class _GooglePhoto implements GooglePhoto {
  factory _GooglePhoto(
      {final String? id,
      final String? productUrl,
      final String? baseUrl,
      final String? mimeType,
      final MediaMetaData? mediaMetadata,
      final String? filename}) = _$GooglePhotoImpl;

  factory _GooglePhoto.fromJson(Map<String, dynamic> json) =
      _$GooglePhotoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get productUrl;
  @override
  String? get baseUrl;
  @override
  String? get mimeType;
  @override
  MediaMetaData? get mediaMetadata;
  @override
  String? get filename;
  @override
  @JsonKey(ignore: true)
  _$$GooglePhotoImplCopyWith<_$GooglePhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
