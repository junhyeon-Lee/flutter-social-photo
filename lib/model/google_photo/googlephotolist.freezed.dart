// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'googlephotolist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GooglePhotoList _$GooglePhotoListFromJson(Map<String, dynamic> json) {
  return _GooglePhotoList.fromJson(json);
}

/// @nodoc
mixin _$GooglePhotoList {
  List<GooglePhoto>? get mediaItems => throw _privateConstructorUsedError;
  String? get nextPageToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GooglePhotoListCopyWith<GooglePhotoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GooglePhotoListCopyWith<$Res> {
  factory $GooglePhotoListCopyWith(
          GooglePhotoList value, $Res Function(GooglePhotoList) then) =
      _$GooglePhotoListCopyWithImpl<$Res, GooglePhotoList>;
  @useResult
  $Res call({List<GooglePhoto>? mediaItems, String? nextPageToken});
}

/// @nodoc
class _$GooglePhotoListCopyWithImpl<$Res, $Val extends GooglePhotoList>
    implements $GooglePhotoListCopyWith<$Res> {
  _$GooglePhotoListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaItems = freezed,
    Object? nextPageToken = freezed,
  }) {
    return _then(_value.copyWith(
      mediaItems: freezed == mediaItems
          ? _value.mediaItems
          : mediaItems // ignore: cast_nullable_to_non_nullable
              as List<GooglePhoto>?,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GooglePhotoListImplCopyWith<$Res>
    implements $GooglePhotoListCopyWith<$Res> {
  factory _$$GooglePhotoListImplCopyWith(_$GooglePhotoListImpl value,
          $Res Function(_$GooglePhotoListImpl) then) =
      __$$GooglePhotoListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GooglePhoto>? mediaItems, String? nextPageToken});
}

/// @nodoc
class __$$GooglePhotoListImplCopyWithImpl<$Res>
    extends _$GooglePhotoListCopyWithImpl<$Res, _$GooglePhotoListImpl>
    implements _$$GooglePhotoListImplCopyWith<$Res> {
  __$$GooglePhotoListImplCopyWithImpl(
      _$GooglePhotoListImpl _value, $Res Function(_$GooglePhotoListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaItems = freezed,
    Object? nextPageToken = freezed,
  }) {
    return _then(_$GooglePhotoListImpl(
      mediaItems: freezed == mediaItems
          ? _value._mediaItems
          : mediaItems // ignore: cast_nullable_to_non_nullable
              as List<GooglePhoto>?,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GooglePhotoListImpl implements _GooglePhotoList {
  _$GooglePhotoListImpl(
      {final List<GooglePhoto>? mediaItems, this.nextPageToken})
      : _mediaItems = mediaItems;

  factory _$GooglePhotoListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GooglePhotoListImplFromJson(json);

  final List<GooglePhoto>? _mediaItems;
  @override
  List<GooglePhoto>? get mediaItems {
    final value = _mediaItems;
    if (value == null) return null;
    if (_mediaItems is EqualUnmodifiableListView) return _mediaItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? nextPageToken;

  @override
  String toString() {
    return 'GooglePhotoList(mediaItems: $mediaItems, nextPageToken: $nextPageToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GooglePhotoListImpl &&
            const DeepCollectionEquality()
                .equals(other._mediaItems, _mediaItems) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_mediaItems), nextPageToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GooglePhotoListImplCopyWith<_$GooglePhotoListImpl> get copyWith =>
      __$$GooglePhotoListImplCopyWithImpl<_$GooglePhotoListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GooglePhotoListImplToJson(
      this,
    );
  }
}

abstract class _GooglePhotoList implements GooglePhotoList {
  factory _GooglePhotoList(
      {final List<GooglePhoto>? mediaItems,
      final String? nextPageToken}) = _$GooglePhotoListImpl;

  factory _GooglePhotoList.fromJson(Map<String, dynamic> json) =
      _$GooglePhotoListImpl.fromJson;

  @override
  List<GooglePhoto>? get mediaItems;
  @override
  String? get nextPageToken;
  @override
  @JsonKey(ignore: true)
  _$$GooglePhotoListImplCopyWith<_$GooglePhotoListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
