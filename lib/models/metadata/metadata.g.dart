// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpotubeAudioSourceContainerPresetLossy
_$SpotubeAudioSourceContainerPresetLossyFromJson(Map json) =>
    SpotubeAudioSourceContainerPresetLossy(
      type: $enumDecode(_$SpotubeMediaCompressionTypeEnumMap, json['type']),
      name: json['name'] as String,
      qualities: (json['qualities'] as List<dynamic>)
          .map(
            (e) => SpotubeAudioLossyContainerQuality.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$SpotubeAudioSourceContainerPresetLossyToJson(
  SpotubeAudioSourceContainerPresetLossy instance,
) => <String, dynamic>{
  'type': _$SpotubeMediaCompressionTypeEnumMap[instance.type]!,
  'name': instance.name,
  'qualities': instance.qualities.map((e) => e.toJson()).toList(),
};

const _$SpotubeMediaCompressionTypeEnumMap = {
  SpotubeMediaCompressionType.lossy: 'lossy',
  SpotubeMediaCompressionType.lossless: 'lossless',
};

SpotubeAudioSourceContainerPresetLossless
_$SpotubeAudioSourceContainerPresetLosslessFromJson(Map json) =>
    SpotubeAudioSourceContainerPresetLossless(
      type: $enumDecode(_$SpotubeMediaCompressionTypeEnumMap, json['type']),
      name: json['name'] as String,
      qualities: (json['qualities'] as List<dynamic>)
          .map(
            (e) => SpotubeAudioLosslessContainerQuality.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$SpotubeAudioSourceContainerPresetLosslessToJson(
  SpotubeAudioSourceContainerPresetLossless instance,
) => <String, dynamic>{
  'type': _$SpotubeMediaCompressionTypeEnumMap[instance.type]!,
  'name': instance.name,
  'qualities': instance.qualities.map((e) => e.toJson()).toList(),
};

_SpotubeAudioLossyContainerQuality _$SpotubeAudioLossyContainerQualityFromJson(
  Map json,
) => _SpotubeAudioLossyContainerQuality(
  bitrate: (json['bitrate'] as num).toInt(),
);

Map<String, dynamic> _$SpotubeAudioLossyContainerQualityToJson(
  _SpotubeAudioLossyContainerQuality instance,
) => <String, dynamic>{'bitrate': instance.bitrate};

_SpotubeAudioLosslessContainerQuality
_$SpotubeAudioLosslessContainerQualityFromJson(Map json) =>
    _SpotubeAudioLosslessContainerQuality(
      bitDepth: (json['bitDepth'] as num).toInt(),
      sampleRate: (json['sampleRate'] as num).toInt(),
    );

Map<String, dynamic> _$SpotubeAudioLosslessContainerQualityToJson(
  _SpotubeAudioLosslessContainerQuality instance,
) => <String, dynamic>{
  'bitDepth': instance.bitDepth,
  'sampleRate': instance.sampleRate,
};

_SpotubeAudioSourceMatchObject _$SpotubeAudioSourceMatchObjectFromJson(
  Map json,
) => _SpotubeAudioSourceMatchObject(
  id: json['id'] as String,
  title: json['title'] as String,
  artists: (json['artists'] as List<dynamic>).map((e) => e as String).toList(),
  duration: Duration(microseconds: (json['duration'] as num).toInt()),
  thumbnail: json['thumbnail'] as String?,
  externalUri: json['externalUri'] as String,
);

Map<String, dynamic> _$SpotubeAudioSourceMatchObjectToJson(
  _SpotubeAudioSourceMatchObject instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'artists': instance.artists,
  'duration': instance.duration.inMicroseconds,
  'thumbnail': instance.thumbnail,
  'externalUri': instance.externalUri,
};

_SpotubeAudioSourceStreamObject _$SpotubeAudioSourceStreamObjectFromJson(
  Map json,
) => _SpotubeAudioSourceStreamObject(
  url: json['url'] as String,
  container: json['container'] as String,
  type: $enumDecode(_$SpotubeMediaCompressionTypeEnumMap, json['type']),
  codec: json['codec'] as String?,
  bitrate: (json['bitrate'] as num?)?.toDouble(),
  bitDepth: (json['bitDepth'] as num?)?.toInt(),
  sampleRate: (json['sampleRate'] as num?)?.toDouble(),
);

Map<String, dynamic> _$SpotubeAudioSourceStreamObjectToJson(
  _SpotubeAudioSourceStreamObject instance,
) => <String, dynamic>{
  'url': instance.url,
  'container': instance.container,
  'type': _$SpotubeMediaCompressionTypeEnumMap[instance.type]!,
  'codec': instance.codec,
  'bitrate': instance.bitrate,
  'bitDepth': instance.bitDepth,
  'sampleRate': instance.sampleRate,
};

_SpotubeFullAlbumObject _$SpotubeFullAlbumObjectFromJson(
  Map json,
) => _SpotubeFullAlbumObject(
  id: json['id'] as String,
  name: json['name'] as String,
  artists: (json['artists'] as List<dynamic>)
      .map(
        (e) => SpotubeSimpleArtistObject.fromJson(
          Map<String, dynamic>.from(e as Map),
        ),
      )
      .toList(),
  images:
      (json['images'] as List<dynamic>?)
          ?.map(
            (e) => SpotubeImageObject.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList() ??
      const [],
  releaseDate: json['releaseDate'] as String,
  externalUri: json['externalUri'] as String,
  totalTracks: (json['totalTracks'] as num?)?.toInt() ?? 0,
  albumType: $enumDecode(_$SpotubeAlbumTypeEnumMap, json['albumType']),
  recordLabel: json['recordLabel'] as String?,
  genres: (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$SpotubeFullAlbumObjectToJson(
  _SpotubeFullAlbumObject instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'artists': instance.artists.map((e) => e.toJson()).toList(),
  'images': instance.images.map((e) => e.toJson()).toList(),
  'releaseDate': instance.releaseDate,
  'externalUri': instance.externalUri,
  'totalTracks': instance.totalTracks,
  'albumType': _$SpotubeAlbumTypeEnumMap[instance.albumType]!,
  'recordLabel': instance.recordLabel,
  'genres': instance.genres,
};

const _$SpotubeAlbumTypeEnumMap = {
  SpotubeAlbumType.album: 'album',
  SpotubeAlbumType.single: 'single',
  SpotubeAlbumType.compilation: 'compilation',
};

_SpotubeSimpleAlbumObject _$SpotubeSimpleAlbumObjectFromJson(Map json) =>
    _SpotubeSimpleAlbumObject(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map(
            (e) => SpotubeSimpleArtistObject.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList(),
      images:
          (json['images'] as List<dynamic>?)
              ?.map(
                (e) => SpotubeImageObject.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList() ??
          const [],
      albumType: $enumDecode(_$SpotubeAlbumTypeEnumMap, json['albumType']),
      releaseDate: json['releaseDate'] as String?,
    );

Map<String, dynamic> _$SpotubeSimpleAlbumObjectToJson(
  _SpotubeSimpleAlbumObject instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'externalUri': instance.externalUri,
  'artists': instance.artists.map((e) => e.toJson()).toList(),
  'images': instance.images.map((e) => e.toJson()).toList(),
  'albumType': _$SpotubeAlbumTypeEnumMap[instance.albumType]!,
  'releaseDate': instance.releaseDate,
};

_SpotubeFullArtistObject _$SpotubeFullArtistObjectFromJson(Map json) =>
    _SpotubeFullArtistObject(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      images:
          (json['images'] as List<dynamic>?)
              ?.map(
                (e) => SpotubeImageObject.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList() ??
          const [],
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      followers: (json['followers'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SpotubeFullArtistObjectToJson(
  _SpotubeFullArtistObject instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'externalUri': instance.externalUri,
  'images': instance.images.map((e) => e.toJson()).toList(),
  'genres': instance.genres,
  'followers': instance.followers,
};

_SpotubeSimpleArtistObject _$SpotubeSimpleArtistObjectFromJson(Map json) =>
    _SpotubeSimpleArtistObject(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map(
            (e) => SpotubeImageObject.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$SpotubeSimpleArtistObjectToJson(
  _SpotubeSimpleArtistObject instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'externalUri': instance.externalUri,
  'images': instance.images?.map((e) => e.toJson()).toList(),
};

_SpotubeBrowseSectionObject<T> _$SpotubeBrowseSectionObjectFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) => _SpotubeBrowseSectionObject<T>(
  id: json['id'] as String,
  title: json['title'] as String,
  externalUri: json['externalUri'] as String,
  browseMore: json['browseMore'] as bool,
  items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
);

Map<String, dynamic> _$SpotubeBrowseSectionObjectToJson<T>(
  _SpotubeBrowseSectionObject<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'externalUri': instance.externalUri,
  'browseMore': instance.browseMore,
  'items': instance.items.map(toJsonT).toList(),
};

MetadataFormFieldInputObject _$MetadataFormFieldInputObjectFromJson(Map json) =>
    MetadataFormFieldInputObject(
      objectType: json['objectType'] as String,
      id: json['id'] as String,
      variant:
          $enumDecodeNullable(_$FormFieldVariantEnumMap, json['variant']) ??
          FormFieldVariant.text,
      placeholder: json['placeholder'] as String?,
      defaultValue: json['defaultValue'] as String?,
      required: json['required'] as bool?,
      regex: json['regex'] as String?,
    );

Map<String, dynamic> _$MetadataFormFieldInputObjectToJson(
  MetadataFormFieldInputObject instance,
) => <String, dynamic>{
  'objectType': instance.objectType,
  'id': instance.id,
  'variant': _$FormFieldVariantEnumMap[instance.variant]!,
  'placeholder': instance.placeholder,
  'defaultValue': instance.defaultValue,
  'required': instance.required,
  'regex': instance.regex,
};

const _$FormFieldVariantEnumMap = {
  FormFieldVariant.text: 'text',
  FormFieldVariant.password: 'password',
  FormFieldVariant.number: 'number',
};

MetadataFormFieldTextObject _$MetadataFormFieldTextObjectFromJson(Map json) =>
    MetadataFormFieldTextObject(
      objectType: json['objectType'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$MetadataFormFieldTextObjectToJson(
  MetadataFormFieldTextObject instance,
) => <String, dynamic>{
  'objectType': instance.objectType,
  'text': instance.text,
};

_SpotubeImageObject _$SpotubeImageObjectFromJson(Map json) =>
    _SpotubeImageObject(
      url: json['url'] as String,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SpotubeImageObjectToJson(_SpotubeImageObject instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

_SpotubePaginationResponseObject<T>
_$SpotubePaginationResponseObjectFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) => _SpotubePaginationResponseObject<T>(
  limit: (json['limit'] as num).toInt(),
  nextOffset: (json['nextOffset'] as num?)?.toInt(),
  total: (json['total'] as num).toInt(),
  hasMore: json['hasMore'] as bool,
  items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
);

Map<String, dynamic> _$SpotubePaginationResponseObjectToJson<T>(
  _SpotubePaginationResponseObject<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'limit': instance.limit,
  'nextOffset': instance.nextOffset,
  'total': instance.total,
  'hasMore': instance.hasMore,
  'items': instance.items.map(toJsonT).toList(),
};

_SpotubeFullPlaylistObject _$SpotubeFullPlaylistObjectFromJson(Map json) =>
    _SpotubeFullPlaylistObject(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      externalUri: json['externalUri'] as String,
      owner: SpotubeUserObject.fromJson(
        Map<String, dynamic>.from(json['owner'] as Map),
      ),
      images:
          (json['images'] as List<dynamic>?)
              ?.map(
                (e) => SpotubeImageObject.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList() ??
          const [],
      collaborators:
          (json['collaborators'] as List<dynamic>?)
              ?.map(
                (e) => SpotubeUserObject.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList() ??
          const [],
      collaborative: json['collaborative'] as bool? ?? false,
      public: json['public'] as bool? ?? false,
    );

Map<String, dynamic> _$SpotubeFullPlaylistObjectToJson(
  _SpotubeFullPlaylistObject instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'externalUri': instance.externalUri,
  'owner': instance.owner.toJson(),
  'images': instance.images.map((e) => e.toJson()).toList(),
  'collaborators': instance.collaborators.map((e) => e.toJson()).toList(),
  'collaborative': instance.collaborative,
  'public': instance.public,
};

_SpotubeSimplePlaylistObject _$SpotubeSimplePlaylistObjectFromJson(Map json) =>
    _SpotubeSimplePlaylistObject(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      externalUri: json['externalUri'] as String,
      owner: SpotubeUserObject.fromJson(
        Map<String, dynamic>.from(json['owner'] as Map),
      ),
      images:
          (json['images'] as List<dynamic>?)
              ?.map(
                (e) => SpotubeImageObject.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SpotubeSimplePlaylistObjectToJson(
  _SpotubeSimplePlaylistObject instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'externalUri': instance.externalUri,
  'owner': instance.owner.toJson(),
  'images': instance.images.map((e) => e.toJson()).toList(),
};

_SpotubeSearchResponseObject _$SpotubeSearchResponseObjectFromJson(
  Map json,
) => _SpotubeSearchResponseObject(
  albums: (json['albums'] as List<dynamic>)
      .map(
        (e) => SpotubeSimpleAlbumObject.fromJson(
          Map<String, dynamic>.from(e as Map),
        ),
      )
      .toList(),
  artists: (json['artists'] as List<dynamic>)
      .map(
        (e) => SpotubeFullArtistObject.fromJson(
          Map<String, dynamic>.from(e as Map),
        ),
      )
      .toList(),
  playlists: (json['playlists'] as List<dynamic>)
      .map(
        (e) => SpotubeSimplePlaylistObject.fromJson(
          Map<String, dynamic>.from(e as Map),
        ),
      )
      .toList(),
  tracks: (json['tracks'] as List<dynamic>)
      .map(
        (e) => SpotubeFullTrackObject.fromJson(
          Map<String, dynamic>.from(e as Map),
        ),
      )
      .toList(),
);

Map<String, dynamic> _$SpotubeSearchResponseObjectToJson(
  _SpotubeSearchResponseObject instance,
) => <String, dynamic>{
  'albums': instance.albums.map((e) => e.toJson()).toList(),
  'artists': instance.artists.map((e) => e.toJson()).toList(),
  'playlists': instance.playlists.map((e) => e.toJson()).toList(),
  'tracks': instance.tracks.map((e) => e.toJson()).toList(),
};

SpotubeLocalTrackObject _$SpotubeLocalTrackObjectFromJson(Map json) =>
    SpotubeLocalTrackObject(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      artists:
          (json['artists'] as List<dynamic>?)
              ?.map(
                (e) => SpotubeSimpleArtistObject.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList() ??
          const [],
      album: SpotubeSimpleAlbumObject.fromJson(
        Map<String, dynamic>.from(json['album'] as Map),
      ),
      durationMs: (json['durationMs'] as num).toInt(),
      path: json['path'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SpotubeLocalTrackObjectToJson(
  SpotubeLocalTrackObject instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'externalUri': instance.externalUri,
  'artists': instance.artists.map((e) => e.toJson()).toList(),
  'album': instance.album.toJson(),
  'durationMs': instance.durationMs,
  'path': instance.path,
  'runtimeType': instance.$type,
};

SpotubeFullTrackObject _$SpotubeFullTrackObjectFromJson(Map json) =>
    SpotubeFullTrackObject(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      artists:
          (json['artists'] as List<dynamic>?)
              ?.map(
                (e) => SpotubeSimpleArtistObject.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList() ??
          const [],
      album: SpotubeSimpleAlbumObject.fromJson(
        Map<String, dynamic>.from(json['album'] as Map),
      ),
      durationMs: (json['durationMs'] as num).toInt(),
      isrc: json['isrc'] as String,
      explicit: json['explicit'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SpotubeFullTrackObjectToJson(
  SpotubeFullTrackObject instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'externalUri': instance.externalUri,
  'artists': instance.artists.map((e) => e.toJson()).toList(),
  'album': instance.album.toJson(),
  'durationMs': instance.durationMs,
  'isrc': instance.isrc,
  'explicit': instance.explicit,
  'runtimeType': instance.$type,
};

_SpotubeUserObject _$SpotubeUserObjectFromJson(Map json) => _SpotubeUserObject(
  id: json['id'] as String,
  name: json['name'] as String,
  images:
      (json['images'] as List<dynamic>?)
          ?.map(
            (e) => SpotubeImageObject.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList() ??
      const [],
  externalUri: json['externalUri'] as String,
);

Map<String, dynamic> _$SpotubeUserObjectToJson(_SpotubeUserObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'externalUri': instance.externalUri,
    };

_PluginConfiguration _$PluginConfigurationFromJson(Map json) =>
    _PluginConfiguration(
      name: json['name'] as String,
      description: json['description'] as String,
      version: json['version'] as String,
      author: json['author'] as String,
      entryPoint: json['entryPoint'] as String,
      pluginApiVersion: json['pluginApiVersion'] as String,
      apis:
          (json['apis'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PluginApisEnumMap, e))
              .toList() ??
          const [],
      abilities:
          (json['abilities'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PluginAbilitiesEnumMap, e))
              .toList() ??
          const [],
      repository: json['repository'] as String?,
    );

Map<String, dynamic> _$PluginConfigurationToJson(
  _PluginConfiguration instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'version': instance.version,
  'author': instance.author,
  'entryPoint': instance.entryPoint,
  'pluginApiVersion': instance.pluginApiVersion,
  'apis': instance.apis.map((e) => _$PluginApisEnumMap[e]!).toList(),
  'abilities': instance.abilities
      .map((e) => _$PluginAbilitiesEnumMap[e]!)
      .toList(),
  'repository': instance.repository,
};

const _$PluginApisEnumMap = {
  PluginApis.webview: 'webview',
  PluginApis.localstorage: 'localstorage',
  PluginApis.timezone: 'timezone',
};

const _$PluginAbilitiesEnumMap = {
  PluginAbilities.authentication: 'authentication',
  PluginAbilities.scrobbling: 'scrobbling',
  PluginAbilities.metadata: 'metadata',
  PluginAbilities.audioSource: 'audio-source',
};

_PluginUpdateAvailable _$PluginUpdateAvailableFromJson(Map json) =>
    _PluginUpdateAvailable(
      downloadUrl: json['downloadUrl'] as String,
      version: json['version'] as String,
      changelog: json['changelog'] as String?,
    );

Map<String, dynamic> _$PluginUpdateAvailableToJson(
  _PluginUpdateAvailable instance,
) => <String, dynamic>{
  'downloadUrl': instance.downloadUrl,
  'version': instance.version,
  'changelog': instance.changelog,
};

_MetadataPluginRepository _$MetadataPluginRepositoryFromJson(Map json) =>
    _MetadataPluginRepository(
      name: json['name'] as String,
      owner: json['owner'] as String,
      description: json['description'] as String,
      repoUrl: json['repoUrl'] as String,
      topics: (json['topics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MetadataPluginRepositoryToJson(
  _MetadataPluginRepository instance,
) => <String, dynamic>{
  'name': instance.name,
  'owner': instance.owner,
  'description': instance.description,
  'repoUrl': instance.repoUrl,
  'topics': instance.topics,
};
