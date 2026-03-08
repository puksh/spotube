// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quality_presets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AudioSourcePresetsState {

 List<SpotubeAudioSourceContainerPreset> get presets; int get selectedStreamingQualityIndex; int get selectedStreamingContainerIndex; int get selectedDownloadingQualityIndex; int get selectedDownloadingContainerIndex;
/// Create a copy of AudioSourcePresetsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioSourcePresetsStateCopyWith<AudioSourcePresetsState> get copyWith => _$AudioSourcePresetsStateCopyWithImpl<AudioSourcePresetsState>(this as AudioSourcePresetsState, _$identity);

  /// Serializes this AudioSourcePresetsState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioSourcePresetsState&&const DeepCollectionEquality().equals(other.presets, presets)&&(identical(other.selectedStreamingQualityIndex, selectedStreamingQualityIndex) || other.selectedStreamingQualityIndex == selectedStreamingQualityIndex)&&(identical(other.selectedStreamingContainerIndex, selectedStreamingContainerIndex) || other.selectedStreamingContainerIndex == selectedStreamingContainerIndex)&&(identical(other.selectedDownloadingQualityIndex, selectedDownloadingQualityIndex) || other.selectedDownloadingQualityIndex == selectedDownloadingQualityIndex)&&(identical(other.selectedDownloadingContainerIndex, selectedDownloadingContainerIndex) || other.selectedDownloadingContainerIndex == selectedDownloadingContainerIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(presets),selectedStreamingQualityIndex,selectedStreamingContainerIndex,selectedDownloadingQualityIndex,selectedDownloadingContainerIndex);

@override
String toString() {
  return 'AudioSourcePresetsState(presets: $presets, selectedStreamingQualityIndex: $selectedStreamingQualityIndex, selectedStreamingContainerIndex: $selectedStreamingContainerIndex, selectedDownloadingQualityIndex: $selectedDownloadingQualityIndex, selectedDownloadingContainerIndex: $selectedDownloadingContainerIndex)';
}


}

/// @nodoc
abstract mixin class $AudioSourcePresetsStateCopyWith<$Res>  {
  factory $AudioSourcePresetsStateCopyWith(AudioSourcePresetsState value, $Res Function(AudioSourcePresetsState) _then) = _$AudioSourcePresetsStateCopyWithImpl;
@useResult
$Res call({
 List<SpotubeAudioSourceContainerPreset> presets, int selectedStreamingQualityIndex, int selectedStreamingContainerIndex, int selectedDownloadingQualityIndex, int selectedDownloadingContainerIndex
});




}
/// @nodoc
class _$AudioSourcePresetsStateCopyWithImpl<$Res>
    implements $AudioSourcePresetsStateCopyWith<$Res> {
  _$AudioSourcePresetsStateCopyWithImpl(this._self, this._then);

  final AudioSourcePresetsState _self;
  final $Res Function(AudioSourcePresetsState) _then;

/// Create a copy of AudioSourcePresetsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? presets = null,Object? selectedStreamingQualityIndex = null,Object? selectedStreamingContainerIndex = null,Object? selectedDownloadingQualityIndex = null,Object? selectedDownloadingContainerIndex = null,}) {
  return _then(_self.copyWith(
presets: null == presets ? _self.presets : presets // ignore: cast_nullable_to_non_nullable
as List<SpotubeAudioSourceContainerPreset>,selectedStreamingQualityIndex: null == selectedStreamingQualityIndex ? _self.selectedStreamingQualityIndex : selectedStreamingQualityIndex // ignore: cast_nullable_to_non_nullable
as int,selectedStreamingContainerIndex: null == selectedStreamingContainerIndex ? _self.selectedStreamingContainerIndex : selectedStreamingContainerIndex // ignore: cast_nullable_to_non_nullable
as int,selectedDownloadingQualityIndex: null == selectedDownloadingQualityIndex ? _self.selectedDownloadingQualityIndex : selectedDownloadingQualityIndex // ignore: cast_nullable_to_non_nullable
as int,selectedDownloadingContainerIndex: null == selectedDownloadingContainerIndex ? _self.selectedDownloadingContainerIndex : selectedDownloadingContainerIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AudioSourcePresetsState].
extension AudioSourcePresetsStatePatterns on AudioSourcePresetsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioSourcePresetsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioSourcePresetsState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioSourcePresetsState value)  $default,){
final _that = this;
switch (_that) {
case _AudioSourcePresetsState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioSourcePresetsState value)?  $default,){
final _that = this;
switch (_that) {
case _AudioSourcePresetsState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SpotubeAudioSourceContainerPreset> presets,  int selectedStreamingQualityIndex,  int selectedStreamingContainerIndex,  int selectedDownloadingQualityIndex,  int selectedDownloadingContainerIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioSourcePresetsState() when $default != null:
return $default(_that.presets,_that.selectedStreamingQualityIndex,_that.selectedStreamingContainerIndex,_that.selectedDownloadingQualityIndex,_that.selectedDownloadingContainerIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SpotubeAudioSourceContainerPreset> presets,  int selectedStreamingQualityIndex,  int selectedStreamingContainerIndex,  int selectedDownloadingQualityIndex,  int selectedDownloadingContainerIndex)  $default,) {final _that = this;
switch (_that) {
case _AudioSourcePresetsState():
return $default(_that.presets,_that.selectedStreamingQualityIndex,_that.selectedStreamingContainerIndex,_that.selectedDownloadingQualityIndex,_that.selectedDownloadingContainerIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SpotubeAudioSourceContainerPreset> presets,  int selectedStreamingQualityIndex,  int selectedStreamingContainerIndex,  int selectedDownloadingQualityIndex,  int selectedDownloadingContainerIndex)?  $default,) {final _that = this;
switch (_that) {
case _AudioSourcePresetsState() when $default != null:
return $default(_that.presets,_that.selectedStreamingQualityIndex,_that.selectedStreamingContainerIndex,_that.selectedDownloadingQualityIndex,_that.selectedDownloadingContainerIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AudioSourcePresetsState implements AudioSourcePresetsState {
   _AudioSourcePresetsState({final  List<SpotubeAudioSourceContainerPreset> presets = const [], this.selectedStreamingQualityIndex = 0, this.selectedStreamingContainerIndex = 0, this.selectedDownloadingQualityIndex = 0, this.selectedDownloadingContainerIndex = 0}): _presets = presets;
  factory _AudioSourcePresetsState.fromJson(Map<String, dynamic> json) => _$AudioSourcePresetsStateFromJson(json);

 final  List<SpotubeAudioSourceContainerPreset> _presets;
@override@JsonKey() List<SpotubeAudioSourceContainerPreset> get presets {
  if (_presets is EqualUnmodifiableListView) return _presets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_presets);
}

@override@JsonKey() final  int selectedStreamingQualityIndex;
@override@JsonKey() final  int selectedStreamingContainerIndex;
@override@JsonKey() final  int selectedDownloadingQualityIndex;
@override@JsonKey() final  int selectedDownloadingContainerIndex;

/// Create a copy of AudioSourcePresetsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioSourcePresetsStateCopyWith<_AudioSourcePresetsState> get copyWith => __$AudioSourcePresetsStateCopyWithImpl<_AudioSourcePresetsState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AudioSourcePresetsStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioSourcePresetsState&&const DeepCollectionEquality().equals(other._presets, _presets)&&(identical(other.selectedStreamingQualityIndex, selectedStreamingQualityIndex) || other.selectedStreamingQualityIndex == selectedStreamingQualityIndex)&&(identical(other.selectedStreamingContainerIndex, selectedStreamingContainerIndex) || other.selectedStreamingContainerIndex == selectedStreamingContainerIndex)&&(identical(other.selectedDownloadingQualityIndex, selectedDownloadingQualityIndex) || other.selectedDownloadingQualityIndex == selectedDownloadingQualityIndex)&&(identical(other.selectedDownloadingContainerIndex, selectedDownloadingContainerIndex) || other.selectedDownloadingContainerIndex == selectedDownloadingContainerIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_presets),selectedStreamingQualityIndex,selectedStreamingContainerIndex,selectedDownloadingQualityIndex,selectedDownloadingContainerIndex);

@override
String toString() {
  return 'AudioSourcePresetsState(presets: $presets, selectedStreamingQualityIndex: $selectedStreamingQualityIndex, selectedStreamingContainerIndex: $selectedStreamingContainerIndex, selectedDownloadingQualityIndex: $selectedDownloadingQualityIndex, selectedDownloadingContainerIndex: $selectedDownloadingContainerIndex)';
}


}

/// @nodoc
abstract mixin class _$AudioSourcePresetsStateCopyWith<$Res> implements $AudioSourcePresetsStateCopyWith<$Res> {
  factory _$AudioSourcePresetsStateCopyWith(_AudioSourcePresetsState value, $Res Function(_AudioSourcePresetsState) _then) = __$AudioSourcePresetsStateCopyWithImpl;
@override @useResult
$Res call({
 List<SpotubeAudioSourceContainerPreset> presets, int selectedStreamingQualityIndex, int selectedStreamingContainerIndex, int selectedDownloadingQualityIndex, int selectedDownloadingContainerIndex
});




}
/// @nodoc
class __$AudioSourcePresetsStateCopyWithImpl<$Res>
    implements _$AudioSourcePresetsStateCopyWith<$Res> {
  __$AudioSourcePresetsStateCopyWithImpl(this._self, this._then);

  final _AudioSourcePresetsState _self;
  final $Res Function(_AudioSourcePresetsState) _then;

/// Create a copy of AudioSourcePresetsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? presets = null,Object? selectedStreamingQualityIndex = null,Object? selectedStreamingContainerIndex = null,Object? selectedDownloadingQualityIndex = null,Object? selectedDownloadingContainerIndex = null,}) {
  return _then(_AudioSourcePresetsState(
presets: null == presets ? _self._presets : presets // ignore: cast_nullable_to_non_nullable
as List<SpotubeAudioSourceContainerPreset>,selectedStreamingQualityIndex: null == selectedStreamingQualityIndex ? _self.selectedStreamingQualityIndex : selectedStreamingQualityIndex // ignore: cast_nullable_to_non_nullable
as int,selectedStreamingContainerIndex: null == selectedStreamingContainerIndex ? _self.selectedStreamingContainerIndex : selectedStreamingContainerIndex // ignore: cast_nullable_to_non_nullable
as int,selectedDownloadingQualityIndex: null == selectedDownloadingQualityIndex ? _self.selectedDownloadingQualityIndex : selectedDownloadingQualityIndex // ignore: cast_nullable_to_non_nullable
as int,selectedDownloadingContainerIndex: null == selectedDownloadingContainerIndex ? _self.selectedDownloadingContainerIndex : selectedDownloadingContainerIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
