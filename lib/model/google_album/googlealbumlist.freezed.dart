// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'googlealbumlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GoogleAlbumList _$GoogleAlbumListFromJson(Map<String, dynamic> json) {
  return _GoogleAlbumList.fromJson(json);
}

/// @nodoc
mixin _$GoogleAlbumList {
  List<GoogleAlbum> get albums => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleAlbumListCopyWith<GoogleAlbumList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleAlbumListCopyWith<$Res> {
  factory $GoogleAlbumListCopyWith(
          GoogleAlbumList value, $Res Function(GoogleAlbumList) then) =
      _$GoogleAlbumListCopyWithImpl<$Res, GoogleAlbumList>;
  @useResult
  $Res call({List<GoogleAlbum> albums});
}

/// @nodoc
class _$GoogleAlbumListCopyWithImpl<$Res, $Val extends GoogleAlbumList>
    implements $GoogleAlbumListCopyWith<$Res> {
  _$GoogleAlbumListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = null,
  }) {
    return _then(_value.copyWith(
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<GoogleAlbum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleAlbumListImplCopyWith<$Res>
    implements $GoogleAlbumListCopyWith<$Res> {
  factory _$$GoogleAlbumListImplCopyWith(_$GoogleAlbumListImpl value,
          $Res Function(_$GoogleAlbumListImpl) then) =
      __$$GoogleAlbumListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GoogleAlbum> albums});
}

/// @nodoc
class __$$GoogleAlbumListImplCopyWithImpl<$Res>
    extends _$GoogleAlbumListCopyWithImpl<$Res, _$GoogleAlbumListImpl>
    implements _$$GoogleAlbumListImplCopyWith<$Res> {
  __$$GoogleAlbumListImplCopyWithImpl(
      _$GoogleAlbumListImpl _value, $Res Function(_$GoogleAlbumListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = null,
  }) {
    return _then(_$GoogleAlbumListImpl(
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<GoogleAlbum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleAlbumListImpl implements _GoogleAlbumList {
  _$GoogleAlbumListImpl({required final List<GoogleAlbum> albums})
      : _albums = albums;

  factory _$GoogleAlbumListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleAlbumListImplFromJson(json);

  final List<GoogleAlbum> _albums;
  @override
  List<GoogleAlbum> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  String toString() {
    return 'GoogleAlbumList(albums: $albums)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAlbumListImpl &&
            const DeepCollectionEquality().equals(other._albums, _albums));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_albums));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAlbumListImplCopyWith<_$GoogleAlbumListImpl> get copyWith =>
      __$$GoogleAlbumListImplCopyWithImpl<_$GoogleAlbumListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleAlbumListImplToJson(
      this,
    );
  }
}

abstract class _GoogleAlbumList implements GoogleAlbumList {
  factory _GoogleAlbumList({required final List<GoogleAlbum> albums}) =
      _$GoogleAlbumListImpl;

  factory _GoogleAlbumList.fromJson(Map<String, dynamic> json) =
      _$GoogleAlbumListImpl.fromJson;

  @override
  List<GoogleAlbum> get albums;
  @override
  @JsonKey(ignore: true)
  _$$GoogleAlbumListImplCopyWith<_$GoogleAlbumListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
