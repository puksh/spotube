// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
WebSocketLoadEventData _$WebSocketLoadEventDataFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'playlist':
          return WebSocketLoadEventDataPlaylist.fromJson(
            json
          );
                case 'album':
          return WebSocketLoadEventDataAlbum.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'WebSocketLoadEventData',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$WebSocketLoadEventData {

@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject") List<SpotubeTrackObject> get tracks; Object? get collection; int? get initialIndex;
/// Create a copy of WebSocketLoadEventData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebSocketLoadEventDataCopyWith<WebSocketLoadEventData> get copyWith => _$WebSocketLoadEventDataCopyWithImpl<WebSocketLoadEventData>(this as WebSocketLoadEventData, _$identity);

  /// Serializes this WebSocketLoadEventData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebSocketLoadEventData&&const DeepCollectionEquality().equals(other.tracks, tracks)&&const DeepCollectionEquality().equals(other.collection, collection)&&(identical(other.initialIndex, initialIndex) || other.initialIndex == initialIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tracks),const DeepCollectionEquality().hash(collection),initialIndex);

@override
String toString() {
  return 'WebSocketLoadEventData(tracks: $tracks, collection: $collection, initialIndex: $initialIndex)';
}


}

/// @nodoc
abstract mixin class $WebSocketLoadEventDataCopyWith<$Res>  {
  factory $WebSocketLoadEventDataCopyWith(WebSocketLoadEventData value, $Res Function(WebSocketLoadEventData) _then) = _$WebSocketLoadEventDataCopyWithImpl;
@useResult
$Res call({
@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject") List<SpotubeTrackObject> tracks, int? initialIndex
});




}
/// @nodoc
class _$WebSocketLoadEventDataCopyWithImpl<$Res>
    implements $WebSocketLoadEventDataCopyWith<$Res> {
  _$WebSocketLoadEventDataCopyWithImpl(this._self, this._then);

  final WebSocketLoadEventData _self;
  final $Res Function(WebSocketLoadEventData) _then;

/// Create a copy of WebSocketLoadEventData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tracks = null,Object? initialIndex = freezed,}) {
  return _then(_self.copyWith(
tracks: null == tracks ? _self.tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<SpotubeTrackObject>,initialIndex: freezed == initialIndex ? _self.initialIndex : initialIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WebSocketLoadEventData].
extension WebSocketLoadEventDataPatterns on WebSocketLoadEventData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WebSocketLoadEventDataPlaylist value)?  playlist,TResult Function( WebSocketLoadEventDataAlbum value)?  album,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WebSocketLoadEventDataPlaylist() when playlist != null:
return playlist(_that);case WebSocketLoadEventDataAlbum() when album != null:
return album(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WebSocketLoadEventDataPlaylist value)  playlist,required TResult Function( WebSocketLoadEventDataAlbum value)  album,}){
final _that = this;
switch (_that) {
case WebSocketLoadEventDataPlaylist():
return playlist(_that);case WebSocketLoadEventDataAlbum():
return album(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WebSocketLoadEventDataPlaylist value)?  playlist,TResult? Function( WebSocketLoadEventDataAlbum value)?  album,}){
final _that = this;
switch (_that) {
case WebSocketLoadEventDataPlaylist() when playlist != null:
return playlist(_that);case WebSocketLoadEventDataAlbum() when album != null:
return album(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject")  List<SpotubeTrackObject> tracks,  SpotubeSimplePlaylistObject? collection,  int? initialIndex)?  playlist,TResult Function(@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject")  List<SpotubeTrackObject> tracks,  SpotubeSimpleAlbumObject? collection,  int? initialIndex)?  album,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WebSocketLoadEventDataPlaylist() when playlist != null:
return playlist(_that.tracks,_that.collection,_that.initialIndex);case WebSocketLoadEventDataAlbum() when album != null:
return album(_that.tracks,_that.collection,_that.initialIndex);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject")  List<SpotubeTrackObject> tracks,  SpotubeSimplePlaylistObject? collection,  int? initialIndex)  playlist,required TResult Function(@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject")  List<SpotubeTrackObject> tracks,  SpotubeSimpleAlbumObject? collection,  int? initialIndex)  album,}) {final _that = this;
switch (_that) {
case WebSocketLoadEventDataPlaylist():
return playlist(_that.tracks,_that.collection,_that.initialIndex);case WebSocketLoadEventDataAlbum():
return album(_that.tracks,_that.collection,_that.initialIndex);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject")  List<SpotubeTrackObject> tracks,  SpotubeSimplePlaylistObject? collection,  int? initialIndex)?  playlist,TResult? Function(@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject")  List<SpotubeTrackObject> tracks,  SpotubeSimpleAlbumObject? collection,  int? initialIndex)?  album,}) {final _that = this;
switch (_that) {
case WebSocketLoadEventDataPlaylist() when playlist != null:
return playlist(_that.tracks,_that.collection,_that.initialIndex);case WebSocketLoadEventDataAlbum() when album != null:
return album(_that.tracks,_that.collection,_that.initialIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class WebSocketLoadEventDataPlaylist extends WebSocketLoadEventData {
   WebSocketLoadEventDataPlaylist({@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject") required final  List<SpotubeTrackObject> tracks, this.collection, this.initialIndex, final  String? $type}): _tracks = tracks,$type = $type ?? 'playlist',super._();
  factory WebSocketLoadEventDataPlaylist.fromJson(Map<String, dynamic> json) => _$WebSocketLoadEventDataPlaylistFromJson(json);

 final  List<SpotubeTrackObject> _tracks;
@override@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject") List<SpotubeTrackObject> get tracks {
  if (_tracks is EqualUnmodifiableListView) return _tracks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tracks);
}

@override final  SpotubeSimplePlaylistObject? collection;
@override final  int? initialIndex;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WebSocketLoadEventData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebSocketLoadEventDataPlaylistCopyWith<WebSocketLoadEventDataPlaylist> get copyWith => _$WebSocketLoadEventDataPlaylistCopyWithImpl<WebSocketLoadEventDataPlaylist>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebSocketLoadEventDataPlaylistToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebSocketLoadEventDataPlaylist&&const DeepCollectionEquality().equals(other._tracks, _tracks)&&(identical(other.collection, collection) || other.collection == collection)&&(identical(other.initialIndex, initialIndex) || other.initialIndex == initialIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tracks),collection,initialIndex);

@override
String toString() {
  return 'WebSocketLoadEventData.playlist(tracks: $tracks, collection: $collection, initialIndex: $initialIndex)';
}


}

/// @nodoc
abstract mixin class $WebSocketLoadEventDataPlaylistCopyWith<$Res> implements $WebSocketLoadEventDataCopyWith<$Res> {
  factory $WebSocketLoadEventDataPlaylistCopyWith(WebSocketLoadEventDataPlaylist value, $Res Function(WebSocketLoadEventDataPlaylist) _then) = _$WebSocketLoadEventDataPlaylistCopyWithImpl;
@override @useResult
$Res call({
@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject") List<SpotubeTrackObject> tracks, SpotubeSimplePlaylistObject? collection, int? initialIndex
});


$SpotubeSimplePlaylistObjectCopyWith<$Res>? get collection;

}
/// @nodoc
class _$WebSocketLoadEventDataPlaylistCopyWithImpl<$Res>
    implements $WebSocketLoadEventDataPlaylistCopyWith<$Res> {
  _$WebSocketLoadEventDataPlaylistCopyWithImpl(this._self, this._then);

  final WebSocketLoadEventDataPlaylist _self;
  final $Res Function(WebSocketLoadEventDataPlaylist) _then;

/// Create a copy of WebSocketLoadEventData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tracks = null,Object? collection = freezed,Object? initialIndex = freezed,}) {
  return _then(WebSocketLoadEventDataPlaylist(
tracks: null == tracks ? _self._tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<SpotubeTrackObject>,collection: freezed == collection ? _self.collection : collection // ignore: cast_nullable_to_non_nullable
as SpotubeSimplePlaylistObject?,initialIndex: freezed == initialIndex ? _self.initialIndex : initialIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of WebSocketLoadEventData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotubeSimplePlaylistObjectCopyWith<$Res>? get collection {
    if (_self.collection == null) {
    return null;
  }

  return $SpotubeSimplePlaylistObjectCopyWith<$Res>(_self.collection!, (value) {
    return _then(_self.copyWith(collection: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class WebSocketLoadEventDataAlbum extends WebSocketLoadEventData {
   WebSocketLoadEventDataAlbum({@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject") required final  List<SpotubeTrackObject> tracks, this.collection, this.initialIndex, final  String? $type}): _tracks = tracks,$type = $type ?? 'album',super._();
  factory WebSocketLoadEventDataAlbum.fromJson(Map<String, dynamic> json) => _$WebSocketLoadEventDataAlbumFromJson(json);

 final  List<SpotubeTrackObject> _tracks;
@override@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject") List<SpotubeTrackObject> get tracks {
  if (_tracks is EqualUnmodifiableListView) return _tracks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tracks);
}

@override final  SpotubeSimpleAlbumObject? collection;
@override final  int? initialIndex;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WebSocketLoadEventData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebSocketLoadEventDataAlbumCopyWith<WebSocketLoadEventDataAlbum> get copyWith => _$WebSocketLoadEventDataAlbumCopyWithImpl<WebSocketLoadEventDataAlbum>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebSocketLoadEventDataAlbumToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebSocketLoadEventDataAlbum&&const DeepCollectionEquality().equals(other._tracks, _tracks)&&(identical(other.collection, collection) || other.collection == collection)&&(identical(other.initialIndex, initialIndex) || other.initialIndex == initialIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tracks),collection,initialIndex);

@override
String toString() {
  return 'WebSocketLoadEventData.album(tracks: $tracks, collection: $collection, initialIndex: $initialIndex)';
}


}

/// @nodoc
abstract mixin class $WebSocketLoadEventDataAlbumCopyWith<$Res> implements $WebSocketLoadEventDataCopyWith<$Res> {
  factory $WebSocketLoadEventDataAlbumCopyWith(WebSocketLoadEventDataAlbum value, $Res Function(WebSocketLoadEventDataAlbum) _then) = _$WebSocketLoadEventDataAlbumCopyWithImpl;
@override @useResult
$Res call({
@Assert("tracks is List<SpotubeFullTrackObject>", "tracks must be a list of SpotubeFullTrackObject") List<SpotubeTrackObject> tracks, SpotubeSimpleAlbumObject? collection, int? initialIndex
});


$SpotubeSimpleAlbumObjectCopyWith<$Res>? get collection;

}
/// @nodoc
class _$WebSocketLoadEventDataAlbumCopyWithImpl<$Res>
    implements $WebSocketLoadEventDataAlbumCopyWith<$Res> {
  _$WebSocketLoadEventDataAlbumCopyWithImpl(this._self, this._then);

  final WebSocketLoadEventDataAlbum _self;
  final $Res Function(WebSocketLoadEventDataAlbum) _then;

/// Create a copy of WebSocketLoadEventData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tracks = null,Object? collection = freezed,Object? initialIndex = freezed,}) {
  return _then(WebSocketLoadEventDataAlbum(
tracks: null == tracks ? _self._tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<SpotubeTrackObject>,collection: freezed == collection ? _self.collection : collection // ignore: cast_nullable_to_non_nullable
as SpotubeSimpleAlbumObject?,initialIndex: freezed == initialIndex ? _self.initialIndex : initialIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of WebSocketLoadEventData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotubeSimpleAlbumObjectCopyWith<$Res>? get collection {
    if (_self.collection == null) {
    return null;
  }

  return $SpotubeSimpleAlbumObjectCopyWith<$Res>(_self.collection!, (value) {
    return _then(_self.copyWith(collection: value));
  });
}
}

// dart format on
