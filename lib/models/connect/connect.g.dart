// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebSocketLoadEventDataPlaylist _$WebSocketLoadEventDataPlaylistFromJson(
  Map json,
) => WebSocketLoadEventDataPlaylist(
  tracks: (json['tracks'] as List<dynamic>)
      .map(
        (e) => SpotubeTrackObject.fromJson(Map<String, dynamic>.from(e as Map)),
      )
      .toList(),
  collection: json['collection'] == null
      ? null
      : SpotubeSimplePlaylistObject.fromJson(
          Map<String, dynamic>.from(json['collection'] as Map),
        ),
  initialIndex: (json['initialIndex'] as num?)?.toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WebSocketLoadEventDataPlaylistToJson(
  WebSocketLoadEventDataPlaylist instance,
) => <String, dynamic>{
  'tracks': instance.tracks.map((e) => e.toJson()).toList(),
  'collection': instance.collection?.toJson(),
  'initialIndex': instance.initialIndex,
  'runtimeType': instance.$type,
};

WebSocketLoadEventDataAlbum _$WebSocketLoadEventDataAlbumFromJson(Map json) =>
    WebSocketLoadEventDataAlbum(
      tracks: (json['tracks'] as List<dynamic>)
          .map(
            (e) => SpotubeTrackObject.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList(),
      collection: json['collection'] == null
          ? null
          : SpotubeSimpleAlbumObject.fromJson(
              Map<String, dynamic>.from(json['collection'] as Map),
            ),
      initialIndex: (json['initialIndex'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WebSocketLoadEventDataAlbumToJson(
  WebSocketLoadEventDataAlbum instance,
) => <String, dynamic>{
  'tracks': instance.tracks.map((e) => e.toJson()).toList(),
  'collection': instance.collection?.toJson(),
  'initialIndex': instance.initialIndex,
  'runtimeType': instance.$type,
};
