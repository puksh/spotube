// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
SpotubeAudioSourceContainerPreset _$SpotubeAudioSourceContainerPresetFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'lossy':
          return SpotubeAudioSourceContainerPresetLossy.fromJson(
            json
          );
                case 'lossless':
          return SpotubeAudioSourceContainerPresetLossless.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'SpotubeAudioSourceContainerPreset',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$SpotubeAudioSourceContainerPreset {

 SpotubeMediaCompressionType get type; String get name; List<Object> get qualities;
/// Create a copy of SpotubeAudioSourceContainerPreset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeAudioSourceContainerPresetCopyWith<SpotubeAudioSourceContainerPreset> get copyWith => _$SpotubeAudioSourceContainerPresetCopyWithImpl<SpotubeAudioSourceContainerPreset>(this as SpotubeAudioSourceContainerPreset, _$identity);

  /// Serializes this SpotubeAudioSourceContainerPreset to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeAudioSourceContainerPreset&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.qualities, qualities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,const DeepCollectionEquality().hash(qualities));

@override
String toString() {
  return 'SpotubeAudioSourceContainerPreset(type: $type, name: $name, qualities: $qualities)';
}


}

/// @nodoc
abstract mixin class $SpotubeAudioSourceContainerPresetCopyWith<$Res>  {
  factory $SpotubeAudioSourceContainerPresetCopyWith(SpotubeAudioSourceContainerPreset value, $Res Function(SpotubeAudioSourceContainerPreset) _then) = _$SpotubeAudioSourceContainerPresetCopyWithImpl;
@useResult
$Res call({
 SpotubeMediaCompressionType type, String name
});




}
/// @nodoc
class _$SpotubeAudioSourceContainerPresetCopyWithImpl<$Res>
    implements $SpotubeAudioSourceContainerPresetCopyWith<$Res> {
  _$SpotubeAudioSourceContainerPresetCopyWithImpl(this._self, this._then);

  final SpotubeAudioSourceContainerPreset _self;
  final $Res Function(SpotubeAudioSourceContainerPreset) _then;

/// Create a copy of SpotubeAudioSourceContainerPreset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SpotubeMediaCompressionType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeAudioSourceContainerPreset].
extension SpotubeAudioSourceContainerPresetPatterns on SpotubeAudioSourceContainerPreset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SpotubeAudioSourceContainerPresetLossy value)?  lossy,TResult Function( SpotubeAudioSourceContainerPresetLossless value)?  lossless,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SpotubeAudioSourceContainerPresetLossy() when lossy != null:
return lossy(_that);case SpotubeAudioSourceContainerPresetLossless() when lossless != null:
return lossless(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SpotubeAudioSourceContainerPresetLossy value)  lossy,required TResult Function( SpotubeAudioSourceContainerPresetLossless value)  lossless,}){
final _that = this;
switch (_that) {
case SpotubeAudioSourceContainerPresetLossy():
return lossy(_that);case SpotubeAudioSourceContainerPresetLossless():
return lossless(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SpotubeAudioSourceContainerPresetLossy value)?  lossy,TResult? Function( SpotubeAudioSourceContainerPresetLossless value)?  lossless,}){
final _that = this;
switch (_that) {
case SpotubeAudioSourceContainerPresetLossy() when lossy != null:
return lossy(_that);case SpotubeAudioSourceContainerPresetLossless() when lossless != null:
return lossless(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SpotubeMediaCompressionType type,  String name,  List<SpotubeAudioLossyContainerQuality> qualities)?  lossy,TResult Function( SpotubeMediaCompressionType type,  String name,  List<SpotubeAudioLosslessContainerQuality> qualities)?  lossless,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SpotubeAudioSourceContainerPresetLossy() when lossy != null:
return lossy(_that.type,_that.name,_that.qualities);case SpotubeAudioSourceContainerPresetLossless() when lossless != null:
return lossless(_that.type,_that.name,_that.qualities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SpotubeMediaCompressionType type,  String name,  List<SpotubeAudioLossyContainerQuality> qualities)  lossy,required TResult Function( SpotubeMediaCompressionType type,  String name,  List<SpotubeAudioLosslessContainerQuality> qualities)  lossless,}) {final _that = this;
switch (_that) {
case SpotubeAudioSourceContainerPresetLossy():
return lossy(_that.type,_that.name,_that.qualities);case SpotubeAudioSourceContainerPresetLossless():
return lossless(_that.type,_that.name,_that.qualities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SpotubeMediaCompressionType type,  String name,  List<SpotubeAudioLossyContainerQuality> qualities)?  lossy,TResult? Function( SpotubeMediaCompressionType type,  String name,  List<SpotubeAudioLosslessContainerQuality> qualities)?  lossless,}) {final _that = this;
switch (_that) {
case SpotubeAudioSourceContainerPresetLossy() when lossy != null:
return lossy(_that.type,_that.name,_that.qualities);case SpotubeAudioSourceContainerPresetLossless() when lossless != null:
return lossless(_that.type,_that.name,_that.qualities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class SpotubeAudioSourceContainerPresetLossy extends SpotubeAudioSourceContainerPreset {
   SpotubeAudioSourceContainerPresetLossy({required this.type, required this.name, required final  List<SpotubeAudioLossyContainerQuality> qualities}): _qualities = qualities,super._();
  factory SpotubeAudioSourceContainerPresetLossy.fromJson(Map<String, dynamic> json) => _$SpotubeAudioSourceContainerPresetLossyFromJson(json);

@override final  SpotubeMediaCompressionType type;
@override final  String name;
 final  List<SpotubeAudioLossyContainerQuality> _qualities;
@override List<SpotubeAudioLossyContainerQuality> get qualities {
  if (_qualities is EqualUnmodifiableListView) return _qualities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_qualities);
}


/// Create a copy of SpotubeAudioSourceContainerPreset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeAudioSourceContainerPresetLossyCopyWith<SpotubeAudioSourceContainerPresetLossy> get copyWith => _$SpotubeAudioSourceContainerPresetLossyCopyWithImpl<SpotubeAudioSourceContainerPresetLossy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeAudioSourceContainerPresetLossyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeAudioSourceContainerPresetLossy&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._qualities, _qualities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,const DeepCollectionEquality().hash(_qualities));

@override
String toString() {
  return 'SpotubeAudioSourceContainerPreset.lossy(type: $type, name: $name, qualities: $qualities)';
}


}

/// @nodoc
abstract mixin class $SpotubeAudioSourceContainerPresetLossyCopyWith<$Res> implements $SpotubeAudioSourceContainerPresetCopyWith<$Res> {
  factory $SpotubeAudioSourceContainerPresetLossyCopyWith(SpotubeAudioSourceContainerPresetLossy value, $Res Function(SpotubeAudioSourceContainerPresetLossy) _then) = _$SpotubeAudioSourceContainerPresetLossyCopyWithImpl;
@override @useResult
$Res call({
 SpotubeMediaCompressionType type, String name, List<SpotubeAudioLossyContainerQuality> qualities
});




}
/// @nodoc
class _$SpotubeAudioSourceContainerPresetLossyCopyWithImpl<$Res>
    implements $SpotubeAudioSourceContainerPresetLossyCopyWith<$Res> {
  _$SpotubeAudioSourceContainerPresetLossyCopyWithImpl(this._self, this._then);

  final SpotubeAudioSourceContainerPresetLossy _self;
  final $Res Function(SpotubeAudioSourceContainerPresetLossy) _then;

/// Create a copy of SpotubeAudioSourceContainerPreset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? qualities = null,}) {
  return _then(SpotubeAudioSourceContainerPresetLossy(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SpotubeMediaCompressionType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,qualities: null == qualities ? _self._qualities : qualities // ignore: cast_nullable_to_non_nullable
as List<SpotubeAudioLossyContainerQuality>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SpotubeAudioSourceContainerPresetLossless extends SpotubeAudioSourceContainerPreset {
   SpotubeAudioSourceContainerPresetLossless({required this.type, required this.name, required final  List<SpotubeAudioLosslessContainerQuality> qualities}): _qualities = qualities,super._();
  factory SpotubeAudioSourceContainerPresetLossless.fromJson(Map<String, dynamic> json) => _$SpotubeAudioSourceContainerPresetLosslessFromJson(json);

@override final  SpotubeMediaCompressionType type;
@override final  String name;
 final  List<SpotubeAudioLosslessContainerQuality> _qualities;
@override List<SpotubeAudioLosslessContainerQuality> get qualities {
  if (_qualities is EqualUnmodifiableListView) return _qualities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_qualities);
}


/// Create a copy of SpotubeAudioSourceContainerPreset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeAudioSourceContainerPresetLosslessCopyWith<SpotubeAudioSourceContainerPresetLossless> get copyWith => _$SpotubeAudioSourceContainerPresetLosslessCopyWithImpl<SpotubeAudioSourceContainerPresetLossless>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeAudioSourceContainerPresetLosslessToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeAudioSourceContainerPresetLossless&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._qualities, _qualities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,const DeepCollectionEquality().hash(_qualities));

@override
String toString() {
  return 'SpotubeAudioSourceContainerPreset.lossless(type: $type, name: $name, qualities: $qualities)';
}


}

/// @nodoc
abstract mixin class $SpotubeAudioSourceContainerPresetLosslessCopyWith<$Res> implements $SpotubeAudioSourceContainerPresetCopyWith<$Res> {
  factory $SpotubeAudioSourceContainerPresetLosslessCopyWith(SpotubeAudioSourceContainerPresetLossless value, $Res Function(SpotubeAudioSourceContainerPresetLossless) _then) = _$SpotubeAudioSourceContainerPresetLosslessCopyWithImpl;
@override @useResult
$Res call({
 SpotubeMediaCompressionType type, String name, List<SpotubeAudioLosslessContainerQuality> qualities
});




}
/// @nodoc
class _$SpotubeAudioSourceContainerPresetLosslessCopyWithImpl<$Res>
    implements $SpotubeAudioSourceContainerPresetLosslessCopyWith<$Res> {
  _$SpotubeAudioSourceContainerPresetLosslessCopyWithImpl(this._self, this._then);

  final SpotubeAudioSourceContainerPresetLossless _self;
  final $Res Function(SpotubeAudioSourceContainerPresetLossless) _then;

/// Create a copy of SpotubeAudioSourceContainerPreset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? qualities = null,}) {
  return _then(SpotubeAudioSourceContainerPresetLossless(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SpotubeMediaCompressionType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,qualities: null == qualities ? _self._qualities : qualities // ignore: cast_nullable_to_non_nullable
as List<SpotubeAudioLosslessContainerQuality>,
  ));
}


}


/// @nodoc
mixin _$SpotubeAudioLossyContainerQuality {

 int get bitrate;
/// Create a copy of SpotubeAudioLossyContainerQuality
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeAudioLossyContainerQualityCopyWith<SpotubeAudioLossyContainerQuality> get copyWith => _$SpotubeAudioLossyContainerQualityCopyWithImpl<SpotubeAudioLossyContainerQuality>(this as SpotubeAudioLossyContainerQuality, _$identity);

  /// Serializes this SpotubeAudioLossyContainerQuality to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeAudioLossyContainerQuality&&(identical(other.bitrate, bitrate) || other.bitrate == bitrate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bitrate);



}

/// @nodoc
abstract mixin class $SpotubeAudioLossyContainerQualityCopyWith<$Res>  {
  factory $SpotubeAudioLossyContainerQualityCopyWith(SpotubeAudioLossyContainerQuality value, $Res Function(SpotubeAudioLossyContainerQuality) _then) = _$SpotubeAudioLossyContainerQualityCopyWithImpl;
@useResult
$Res call({
 int bitrate
});




}
/// @nodoc
class _$SpotubeAudioLossyContainerQualityCopyWithImpl<$Res>
    implements $SpotubeAudioLossyContainerQualityCopyWith<$Res> {
  _$SpotubeAudioLossyContainerQualityCopyWithImpl(this._self, this._then);

  final SpotubeAudioLossyContainerQuality _self;
  final $Res Function(SpotubeAudioLossyContainerQuality) _then;

/// Create a copy of SpotubeAudioLossyContainerQuality
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bitrate = null,}) {
  return _then(_self.copyWith(
bitrate: null == bitrate ? _self.bitrate : bitrate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeAudioLossyContainerQuality].
extension SpotubeAudioLossyContainerQualityPatterns on SpotubeAudioLossyContainerQuality {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeAudioLossyContainerQuality value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeAudioLossyContainerQuality() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeAudioLossyContainerQuality value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeAudioLossyContainerQuality():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeAudioLossyContainerQuality value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeAudioLossyContainerQuality() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bitrate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeAudioLossyContainerQuality() when $default != null:
return $default(_that.bitrate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bitrate)  $default,) {final _that = this;
switch (_that) {
case _SpotubeAudioLossyContainerQuality():
return $default(_that.bitrate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bitrate)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeAudioLossyContainerQuality() when $default != null:
return $default(_that.bitrate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeAudioLossyContainerQuality extends SpotubeAudioLossyContainerQuality {
   _SpotubeAudioLossyContainerQuality({required this.bitrate}): super._();
  factory _SpotubeAudioLossyContainerQuality.fromJson(Map<String, dynamic> json) => _$SpotubeAudioLossyContainerQualityFromJson(json);

@override final  int bitrate;

/// Create a copy of SpotubeAudioLossyContainerQuality
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeAudioLossyContainerQualityCopyWith<_SpotubeAudioLossyContainerQuality> get copyWith => __$SpotubeAudioLossyContainerQualityCopyWithImpl<_SpotubeAudioLossyContainerQuality>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeAudioLossyContainerQualityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeAudioLossyContainerQuality&&(identical(other.bitrate, bitrate) || other.bitrate == bitrate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bitrate);



}

/// @nodoc
abstract mixin class _$SpotubeAudioLossyContainerQualityCopyWith<$Res> implements $SpotubeAudioLossyContainerQualityCopyWith<$Res> {
  factory _$SpotubeAudioLossyContainerQualityCopyWith(_SpotubeAudioLossyContainerQuality value, $Res Function(_SpotubeAudioLossyContainerQuality) _then) = __$SpotubeAudioLossyContainerQualityCopyWithImpl;
@override @useResult
$Res call({
 int bitrate
});




}
/// @nodoc
class __$SpotubeAudioLossyContainerQualityCopyWithImpl<$Res>
    implements _$SpotubeAudioLossyContainerQualityCopyWith<$Res> {
  __$SpotubeAudioLossyContainerQualityCopyWithImpl(this._self, this._then);

  final _SpotubeAudioLossyContainerQuality _self;
  final $Res Function(_SpotubeAudioLossyContainerQuality) _then;

/// Create a copy of SpotubeAudioLossyContainerQuality
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bitrate = null,}) {
  return _then(_SpotubeAudioLossyContainerQuality(
bitrate: null == bitrate ? _self.bitrate : bitrate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SpotubeAudioLosslessContainerQuality {

 int get bitDepth;// bit
 int get sampleRate;
/// Create a copy of SpotubeAudioLosslessContainerQuality
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeAudioLosslessContainerQualityCopyWith<SpotubeAudioLosslessContainerQuality> get copyWith => _$SpotubeAudioLosslessContainerQualityCopyWithImpl<SpotubeAudioLosslessContainerQuality>(this as SpotubeAudioLosslessContainerQuality, _$identity);

  /// Serializes this SpotubeAudioLosslessContainerQuality to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeAudioLosslessContainerQuality&&(identical(other.bitDepth, bitDepth) || other.bitDepth == bitDepth)&&(identical(other.sampleRate, sampleRate) || other.sampleRate == sampleRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bitDepth,sampleRate);



}

/// @nodoc
abstract mixin class $SpotubeAudioLosslessContainerQualityCopyWith<$Res>  {
  factory $SpotubeAudioLosslessContainerQualityCopyWith(SpotubeAudioLosslessContainerQuality value, $Res Function(SpotubeAudioLosslessContainerQuality) _then) = _$SpotubeAudioLosslessContainerQualityCopyWithImpl;
@useResult
$Res call({
 int bitDepth, int sampleRate
});




}
/// @nodoc
class _$SpotubeAudioLosslessContainerQualityCopyWithImpl<$Res>
    implements $SpotubeAudioLosslessContainerQualityCopyWith<$Res> {
  _$SpotubeAudioLosslessContainerQualityCopyWithImpl(this._self, this._then);

  final SpotubeAudioLosslessContainerQuality _self;
  final $Res Function(SpotubeAudioLosslessContainerQuality) _then;

/// Create a copy of SpotubeAudioLosslessContainerQuality
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bitDepth = null,Object? sampleRate = null,}) {
  return _then(_self.copyWith(
bitDepth: null == bitDepth ? _self.bitDepth : bitDepth // ignore: cast_nullable_to_non_nullable
as int,sampleRate: null == sampleRate ? _self.sampleRate : sampleRate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeAudioLosslessContainerQuality].
extension SpotubeAudioLosslessContainerQualityPatterns on SpotubeAudioLosslessContainerQuality {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeAudioLosslessContainerQuality value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeAudioLosslessContainerQuality() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeAudioLosslessContainerQuality value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeAudioLosslessContainerQuality():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeAudioLosslessContainerQuality value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeAudioLosslessContainerQuality() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bitDepth,  int sampleRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeAudioLosslessContainerQuality() when $default != null:
return $default(_that.bitDepth,_that.sampleRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bitDepth,  int sampleRate)  $default,) {final _that = this;
switch (_that) {
case _SpotubeAudioLosslessContainerQuality():
return $default(_that.bitDepth,_that.sampleRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bitDepth,  int sampleRate)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeAudioLosslessContainerQuality() when $default != null:
return $default(_that.bitDepth,_that.sampleRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeAudioLosslessContainerQuality extends SpotubeAudioLosslessContainerQuality {
   _SpotubeAudioLosslessContainerQuality({required this.bitDepth, required this.sampleRate}): super._();
  factory _SpotubeAudioLosslessContainerQuality.fromJson(Map<String, dynamic> json) => _$SpotubeAudioLosslessContainerQualityFromJson(json);

@override final  int bitDepth;
// bit
@override final  int sampleRate;

/// Create a copy of SpotubeAudioLosslessContainerQuality
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeAudioLosslessContainerQualityCopyWith<_SpotubeAudioLosslessContainerQuality> get copyWith => __$SpotubeAudioLosslessContainerQualityCopyWithImpl<_SpotubeAudioLosslessContainerQuality>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeAudioLosslessContainerQualityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeAudioLosslessContainerQuality&&(identical(other.bitDepth, bitDepth) || other.bitDepth == bitDepth)&&(identical(other.sampleRate, sampleRate) || other.sampleRate == sampleRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bitDepth,sampleRate);



}

/// @nodoc
abstract mixin class _$SpotubeAudioLosslessContainerQualityCopyWith<$Res> implements $SpotubeAudioLosslessContainerQualityCopyWith<$Res> {
  factory _$SpotubeAudioLosslessContainerQualityCopyWith(_SpotubeAudioLosslessContainerQuality value, $Res Function(_SpotubeAudioLosslessContainerQuality) _then) = __$SpotubeAudioLosslessContainerQualityCopyWithImpl;
@override @useResult
$Res call({
 int bitDepth, int sampleRate
});




}
/// @nodoc
class __$SpotubeAudioLosslessContainerQualityCopyWithImpl<$Res>
    implements _$SpotubeAudioLosslessContainerQualityCopyWith<$Res> {
  __$SpotubeAudioLosslessContainerQualityCopyWithImpl(this._self, this._then);

  final _SpotubeAudioLosslessContainerQuality _self;
  final $Res Function(_SpotubeAudioLosslessContainerQuality) _then;

/// Create a copy of SpotubeAudioLosslessContainerQuality
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bitDepth = null,Object? sampleRate = null,}) {
  return _then(_SpotubeAudioLosslessContainerQuality(
bitDepth: null == bitDepth ? _self.bitDepth : bitDepth // ignore: cast_nullable_to_non_nullable
as int,sampleRate: null == sampleRate ? _self.sampleRate : sampleRate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SpotubeAudioSourceMatchObject {

 String get id; String get title; List<String> get artists; Duration get duration; String? get thumbnail; String get externalUri;
/// Create a copy of SpotubeAudioSourceMatchObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeAudioSourceMatchObjectCopyWith<SpotubeAudioSourceMatchObject> get copyWith => _$SpotubeAudioSourceMatchObjectCopyWithImpl<SpotubeAudioSourceMatchObject>(this as SpotubeAudioSourceMatchObject, _$identity);

  /// Serializes this SpotubeAudioSourceMatchObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeAudioSourceMatchObject&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.artists, artists)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(artists),duration,thumbnail,externalUri);

@override
String toString() {
  return 'SpotubeAudioSourceMatchObject(id: $id, title: $title, artists: $artists, duration: $duration, thumbnail: $thumbnail, externalUri: $externalUri)';
}


}

/// @nodoc
abstract mixin class $SpotubeAudioSourceMatchObjectCopyWith<$Res>  {
  factory $SpotubeAudioSourceMatchObjectCopyWith(SpotubeAudioSourceMatchObject value, $Res Function(SpotubeAudioSourceMatchObject) _then) = _$SpotubeAudioSourceMatchObjectCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<String> artists, Duration duration, String? thumbnail, String externalUri
});




}
/// @nodoc
class _$SpotubeAudioSourceMatchObjectCopyWithImpl<$Res>
    implements $SpotubeAudioSourceMatchObjectCopyWith<$Res> {
  _$SpotubeAudioSourceMatchObjectCopyWithImpl(this._self, this._then);

  final SpotubeAudioSourceMatchObject _self;
  final $Res Function(SpotubeAudioSourceMatchObject) _then;

/// Create a copy of SpotubeAudioSourceMatchObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? artists = null,Object? duration = null,Object? thumbnail = freezed,Object? externalUri = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,artists: null == artists ? _self.artists : artists // ignore: cast_nullable_to_non_nullable
as List<String>,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeAudioSourceMatchObject].
extension SpotubeAudioSourceMatchObjectPatterns on SpotubeAudioSourceMatchObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeAudioSourceMatchObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeAudioSourceMatchObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeAudioSourceMatchObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeAudioSourceMatchObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeAudioSourceMatchObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeAudioSourceMatchObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<String> artists,  Duration duration,  String? thumbnail,  String externalUri)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeAudioSourceMatchObject() when $default != null:
return $default(_that.id,_that.title,_that.artists,_that.duration,_that.thumbnail,_that.externalUri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<String> artists,  Duration duration,  String? thumbnail,  String externalUri)  $default,) {final _that = this;
switch (_that) {
case _SpotubeAudioSourceMatchObject():
return $default(_that.id,_that.title,_that.artists,_that.duration,_that.thumbnail,_that.externalUri);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<String> artists,  Duration duration,  String? thumbnail,  String externalUri)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeAudioSourceMatchObject() when $default != null:
return $default(_that.id,_that.title,_that.artists,_that.duration,_that.thumbnail,_that.externalUri);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeAudioSourceMatchObject implements SpotubeAudioSourceMatchObject {
   _SpotubeAudioSourceMatchObject({required this.id, required this.title, required final  List<String> artists, required this.duration, this.thumbnail, required this.externalUri}): _artists = artists;
  factory _SpotubeAudioSourceMatchObject.fromJson(Map<String, dynamic> json) => _$SpotubeAudioSourceMatchObjectFromJson(json);

@override final  String id;
@override final  String title;
 final  List<String> _artists;
@override List<String> get artists {
  if (_artists is EqualUnmodifiableListView) return _artists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artists);
}

@override final  Duration duration;
@override final  String? thumbnail;
@override final  String externalUri;

/// Create a copy of SpotubeAudioSourceMatchObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeAudioSourceMatchObjectCopyWith<_SpotubeAudioSourceMatchObject> get copyWith => __$SpotubeAudioSourceMatchObjectCopyWithImpl<_SpotubeAudioSourceMatchObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeAudioSourceMatchObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeAudioSourceMatchObject&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._artists, _artists)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_artists),duration,thumbnail,externalUri);

@override
String toString() {
  return 'SpotubeAudioSourceMatchObject(id: $id, title: $title, artists: $artists, duration: $duration, thumbnail: $thumbnail, externalUri: $externalUri)';
}


}

/// @nodoc
abstract mixin class _$SpotubeAudioSourceMatchObjectCopyWith<$Res> implements $SpotubeAudioSourceMatchObjectCopyWith<$Res> {
  factory _$SpotubeAudioSourceMatchObjectCopyWith(_SpotubeAudioSourceMatchObject value, $Res Function(_SpotubeAudioSourceMatchObject) _then) = __$SpotubeAudioSourceMatchObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<String> artists, Duration duration, String? thumbnail, String externalUri
});




}
/// @nodoc
class __$SpotubeAudioSourceMatchObjectCopyWithImpl<$Res>
    implements _$SpotubeAudioSourceMatchObjectCopyWith<$Res> {
  __$SpotubeAudioSourceMatchObjectCopyWithImpl(this._self, this._then);

  final _SpotubeAudioSourceMatchObject _self;
  final $Res Function(_SpotubeAudioSourceMatchObject) _then;

/// Create a copy of SpotubeAudioSourceMatchObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? artists = null,Object? duration = null,Object? thumbnail = freezed,Object? externalUri = null,}) {
  return _then(_SpotubeAudioSourceMatchObject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,artists: null == artists ? _self._artists : artists // ignore: cast_nullable_to_non_nullable
as List<String>,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SpotubeAudioSourceStreamObject {

 String get url; String get container; SpotubeMediaCompressionType get type; String? get codec; double? get bitrate; int? get bitDepth; double? get sampleRate;
/// Create a copy of SpotubeAudioSourceStreamObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeAudioSourceStreamObjectCopyWith<SpotubeAudioSourceStreamObject> get copyWith => _$SpotubeAudioSourceStreamObjectCopyWithImpl<SpotubeAudioSourceStreamObject>(this as SpotubeAudioSourceStreamObject, _$identity);

  /// Serializes this SpotubeAudioSourceStreamObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeAudioSourceStreamObject&&(identical(other.url, url) || other.url == url)&&(identical(other.container, container) || other.container == container)&&(identical(other.type, type) || other.type == type)&&(identical(other.codec, codec) || other.codec == codec)&&(identical(other.bitrate, bitrate) || other.bitrate == bitrate)&&(identical(other.bitDepth, bitDepth) || other.bitDepth == bitDepth)&&(identical(other.sampleRate, sampleRate) || other.sampleRate == sampleRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,container,type,codec,bitrate,bitDepth,sampleRate);

@override
String toString() {
  return 'SpotubeAudioSourceStreamObject(url: $url, container: $container, type: $type, codec: $codec, bitrate: $bitrate, bitDepth: $bitDepth, sampleRate: $sampleRate)';
}


}

/// @nodoc
abstract mixin class $SpotubeAudioSourceStreamObjectCopyWith<$Res>  {
  factory $SpotubeAudioSourceStreamObjectCopyWith(SpotubeAudioSourceStreamObject value, $Res Function(SpotubeAudioSourceStreamObject) _then) = _$SpotubeAudioSourceStreamObjectCopyWithImpl;
@useResult
$Res call({
 String url, String container, SpotubeMediaCompressionType type, String? codec, double? bitrate, int? bitDepth, double? sampleRate
});




}
/// @nodoc
class _$SpotubeAudioSourceStreamObjectCopyWithImpl<$Res>
    implements $SpotubeAudioSourceStreamObjectCopyWith<$Res> {
  _$SpotubeAudioSourceStreamObjectCopyWithImpl(this._self, this._then);

  final SpotubeAudioSourceStreamObject _self;
  final $Res Function(SpotubeAudioSourceStreamObject) _then;

/// Create a copy of SpotubeAudioSourceStreamObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? container = null,Object? type = null,Object? codec = freezed,Object? bitrate = freezed,Object? bitDepth = freezed,Object? sampleRate = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,container: null == container ? _self.container : container // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SpotubeMediaCompressionType,codec: freezed == codec ? _self.codec : codec // ignore: cast_nullable_to_non_nullable
as String?,bitrate: freezed == bitrate ? _self.bitrate : bitrate // ignore: cast_nullable_to_non_nullable
as double?,bitDepth: freezed == bitDepth ? _self.bitDepth : bitDepth // ignore: cast_nullable_to_non_nullable
as int?,sampleRate: freezed == sampleRate ? _self.sampleRate : sampleRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeAudioSourceStreamObject].
extension SpotubeAudioSourceStreamObjectPatterns on SpotubeAudioSourceStreamObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeAudioSourceStreamObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeAudioSourceStreamObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeAudioSourceStreamObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeAudioSourceStreamObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeAudioSourceStreamObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeAudioSourceStreamObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String container,  SpotubeMediaCompressionType type,  String? codec,  double? bitrate,  int? bitDepth,  double? sampleRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeAudioSourceStreamObject() when $default != null:
return $default(_that.url,_that.container,_that.type,_that.codec,_that.bitrate,_that.bitDepth,_that.sampleRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String container,  SpotubeMediaCompressionType type,  String? codec,  double? bitrate,  int? bitDepth,  double? sampleRate)  $default,) {final _that = this;
switch (_that) {
case _SpotubeAudioSourceStreamObject():
return $default(_that.url,_that.container,_that.type,_that.codec,_that.bitrate,_that.bitDepth,_that.sampleRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String container,  SpotubeMediaCompressionType type,  String? codec,  double? bitrate,  int? bitDepth,  double? sampleRate)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeAudioSourceStreamObject() when $default != null:
return $default(_that.url,_that.container,_that.type,_that.codec,_that.bitrate,_that.bitDepth,_that.sampleRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeAudioSourceStreamObject implements SpotubeAudioSourceStreamObject {
   _SpotubeAudioSourceStreamObject({required this.url, required this.container, required this.type, this.codec, this.bitrate, this.bitDepth, this.sampleRate});
  factory _SpotubeAudioSourceStreamObject.fromJson(Map<String, dynamic> json) => _$SpotubeAudioSourceStreamObjectFromJson(json);

@override final  String url;
@override final  String container;
@override final  SpotubeMediaCompressionType type;
@override final  String? codec;
@override final  double? bitrate;
@override final  int? bitDepth;
@override final  double? sampleRate;

/// Create a copy of SpotubeAudioSourceStreamObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeAudioSourceStreamObjectCopyWith<_SpotubeAudioSourceStreamObject> get copyWith => __$SpotubeAudioSourceStreamObjectCopyWithImpl<_SpotubeAudioSourceStreamObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeAudioSourceStreamObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeAudioSourceStreamObject&&(identical(other.url, url) || other.url == url)&&(identical(other.container, container) || other.container == container)&&(identical(other.type, type) || other.type == type)&&(identical(other.codec, codec) || other.codec == codec)&&(identical(other.bitrate, bitrate) || other.bitrate == bitrate)&&(identical(other.bitDepth, bitDepth) || other.bitDepth == bitDepth)&&(identical(other.sampleRate, sampleRate) || other.sampleRate == sampleRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,container,type,codec,bitrate,bitDepth,sampleRate);

@override
String toString() {
  return 'SpotubeAudioSourceStreamObject(url: $url, container: $container, type: $type, codec: $codec, bitrate: $bitrate, bitDepth: $bitDepth, sampleRate: $sampleRate)';
}


}

/// @nodoc
abstract mixin class _$SpotubeAudioSourceStreamObjectCopyWith<$Res> implements $SpotubeAudioSourceStreamObjectCopyWith<$Res> {
  factory _$SpotubeAudioSourceStreamObjectCopyWith(_SpotubeAudioSourceStreamObject value, $Res Function(_SpotubeAudioSourceStreamObject) _then) = __$SpotubeAudioSourceStreamObjectCopyWithImpl;
@override @useResult
$Res call({
 String url, String container, SpotubeMediaCompressionType type, String? codec, double? bitrate, int? bitDepth, double? sampleRate
});




}
/// @nodoc
class __$SpotubeAudioSourceStreamObjectCopyWithImpl<$Res>
    implements _$SpotubeAudioSourceStreamObjectCopyWith<$Res> {
  __$SpotubeAudioSourceStreamObjectCopyWithImpl(this._self, this._then);

  final _SpotubeAudioSourceStreamObject _self;
  final $Res Function(_SpotubeAudioSourceStreamObject) _then;

/// Create a copy of SpotubeAudioSourceStreamObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? container = null,Object? type = null,Object? codec = freezed,Object? bitrate = freezed,Object? bitDepth = freezed,Object? sampleRate = freezed,}) {
  return _then(_SpotubeAudioSourceStreamObject(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,container: null == container ? _self.container : container // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SpotubeMediaCompressionType,codec: freezed == codec ? _self.codec : codec // ignore: cast_nullable_to_non_nullable
as String?,bitrate: freezed == bitrate ? _self.bitrate : bitrate // ignore: cast_nullable_to_non_nullable
as double?,bitDepth: freezed == bitDepth ? _self.bitDepth : bitDepth // ignore: cast_nullable_to_non_nullable
as int?,sampleRate: freezed == sampleRate ? _self.sampleRate : sampleRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$SpotubeFullAlbumObject {

 String get id; String get name; List<SpotubeSimpleArtistObject> get artists; List<SpotubeImageObject> get images; String get releaseDate; String get externalUri; int get totalTracks; SpotubeAlbumType get albumType; String? get recordLabel; List<String>? get genres;
/// Create a copy of SpotubeFullAlbumObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeFullAlbumObjectCopyWith<SpotubeFullAlbumObject> get copyWith => _$SpotubeFullAlbumObjectCopyWithImpl<SpotubeFullAlbumObject>(this as SpotubeFullAlbumObject, _$identity);

  /// Serializes this SpotubeFullAlbumObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeFullAlbumObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.artists, artists)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&(identical(other.totalTracks, totalTracks) || other.totalTracks == totalTracks)&&(identical(other.albumType, albumType) || other.albumType == albumType)&&(identical(other.recordLabel, recordLabel) || other.recordLabel == recordLabel)&&const DeepCollectionEquality().equals(other.genres, genres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(artists),const DeepCollectionEquality().hash(images),releaseDate,externalUri,totalTracks,albumType,recordLabel,const DeepCollectionEquality().hash(genres));

@override
String toString() {
  return 'SpotubeFullAlbumObject(id: $id, name: $name, artists: $artists, images: $images, releaseDate: $releaseDate, externalUri: $externalUri, totalTracks: $totalTracks, albumType: $albumType, recordLabel: $recordLabel, genres: $genres)';
}


}

/// @nodoc
abstract mixin class $SpotubeFullAlbumObjectCopyWith<$Res>  {
  factory $SpotubeFullAlbumObjectCopyWith(SpotubeFullAlbumObject value, $Res Function(SpotubeFullAlbumObject) _then) = _$SpotubeFullAlbumObjectCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<SpotubeSimpleArtistObject> artists, List<SpotubeImageObject> images, String releaseDate, String externalUri, int totalTracks, SpotubeAlbumType albumType, String? recordLabel, List<String>? genres
});




}
/// @nodoc
class _$SpotubeFullAlbumObjectCopyWithImpl<$Res>
    implements $SpotubeFullAlbumObjectCopyWith<$Res> {
  _$SpotubeFullAlbumObjectCopyWithImpl(this._self, this._then);

  final SpotubeFullAlbumObject _self;
  final $Res Function(SpotubeFullAlbumObject) _then;

/// Create a copy of SpotubeFullAlbumObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? artists = null,Object? images = null,Object? releaseDate = null,Object? externalUri = null,Object? totalTracks = null,Object? albumType = null,Object? recordLabel = freezed,Object? genres = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,artists: null == artists ? _self.artists : artists // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimpleArtistObject>,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,totalTracks: null == totalTracks ? _self.totalTracks : totalTracks // ignore: cast_nullable_to_non_nullable
as int,albumType: null == albumType ? _self.albumType : albumType // ignore: cast_nullable_to_non_nullable
as SpotubeAlbumType,recordLabel: freezed == recordLabel ? _self.recordLabel : recordLabel // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeFullAlbumObject].
extension SpotubeFullAlbumObjectPatterns on SpotubeFullAlbumObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeFullAlbumObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeFullAlbumObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeFullAlbumObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeFullAlbumObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeFullAlbumObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeFullAlbumObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<SpotubeSimpleArtistObject> artists,  List<SpotubeImageObject> images,  String releaseDate,  String externalUri,  int totalTracks,  SpotubeAlbumType albumType,  String? recordLabel,  List<String>? genres)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeFullAlbumObject() when $default != null:
return $default(_that.id,_that.name,_that.artists,_that.images,_that.releaseDate,_that.externalUri,_that.totalTracks,_that.albumType,_that.recordLabel,_that.genres);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<SpotubeSimpleArtistObject> artists,  List<SpotubeImageObject> images,  String releaseDate,  String externalUri,  int totalTracks,  SpotubeAlbumType albumType,  String? recordLabel,  List<String>? genres)  $default,) {final _that = this;
switch (_that) {
case _SpotubeFullAlbumObject():
return $default(_that.id,_that.name,_that.artists,_that.images,_that.releaseDate,_that.externalUri,_that.totalTracks,_that.albumType,_that.recordLabel,_that.genres);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<SpotubeSimpleArtistObject> artists,  List<SpotubeImageObject> images,  String releaseDate,  String externalUri,  int totalTracks,  SpotubeAlbumType albumType,  String? recordLabel,  List<String>? genres)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeFullAlbumObject() when $default != null:
return $default(_that.id,_that.name,_that.artists,_that.images,_that.releaseDate,_that.externalUri,_that.totalTracks,_that.albumType,_that.recordLabel,_that.genres);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeFullAlbumObject implements SpotubeFullAlbumObject {
   _SpotubeFullAlbumObject({required this.id, required this.name, required final  List<SpotubeSimpleArtistObject> artists, final  List<SpotubeImageObject> images = const [], required this.releaseDate, required this.externalUri, this.totalTracks = 0, required this.albumType, this.recordLabel, final  List<String>? genres}): _artists = artists,_images = images,_genres = genres;
  factory _SpotubeFullAlbumObject.fromJson(Map<String, dynamic> json) => _$SpotubeFullAlbumObjectFromJson(json);

@override final  String id;
@override final  String name;
 final  List<SpotubeSimpleArtistObject> _artists;
@override List<SpotubeSimpleArtistObject> get artists {
  if (_artists is EqualUnmodifiableListView) return _artists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artists);
}

 final  List<SpotubeImageObject> _images;
@override@JsonKey() List<SpotubeImageObject> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String releaseDate;
@override final  String externalUri;
@override@JsonKey() final  int totalTracks;
@override final  SpotubeAlbumType albumType;
@override final  String? recordLabel;
 final  List<String>? _genres;
@override List<String>? get genres {
  final value = _genres;
  if (value == null) return null;
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SpotubeFullAlbumObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeFullAlbumObjectCopyWith<_SpotubeFullAlbumObject> get copyWith => __$SpotubeFullAlbumObjectCopyWithImpl<_SpotubeFullAlbumObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeFullAlbumObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeFullAlbumObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._artists, _artists)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&(identical(other.totalTracks, totalTracks) || other.totalTracks == totalTracks)&&(identical(other.albumType, albumType) || other.albumType == albumType)&&(identical(other.recordLabel, recordLabel) || other.recordLabel == recordLabel)&&const DeepCollectionEquality().equals(other._genres, _genres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_artists),const DeepCollectionEquality().hash(_images),releaseDate,externalUri,totalTracks,albumType,recordLabel,const DeepCollectionEquality().hash(_genres));

@override
String toString() {
  return 'SpotubeFullAlbumObject(id: $id, name: $name, artists: $artists, images: $images, releaseDate: $releaseDate, externalUri: $externalUri, totalTracks: $totalTracks, albumType: $albumType, recordLabel: $recordLabel, genres: $genres)';
}


}

/// @nodoc
abstract mixin class _$SpotubeFullAlbumObjectCopyWith<$Res> implements $SpotubeFullAlbumObjectCopyWith<$Res> {
  factory _$SpotubeFullAlbumObjectCopyWith(_SpotubeFullAlbumObject value, $Res Function(_SpotubeFullAlbumObject) _then) = __$SpotubeFullAlbumObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<SpotubeSimpleArtistObject> artists, List<SpotubeImageObject> images, String releaseDate, String externalUri, int totalTracks, SpotubeAlbumType albumType, String? recordLabel, List<String>? genres
});




}
/// @nodoc
class __$SpotubeFullAlbumObjectCopyWithImpl<$Res>
    implements _$SpotubeFullAlbumObjectCopyWith<$Res> {
  __$SpotubeFullAlbumObjectCopyWithImpl(this._self, this._then);

  final _SpotubeFullAlbumObject _self;
  final $Res Function(_SpotubeFullAlbumObject) _then;

/// Create a copy of SpotubeFullAlbumObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? artists = null,Object? images = null,Object? releaseDate = null,Object? externalUri = null,Object? totalTracks = null,Object? albumType = null,Object? recordLabel = freezed,Object? genres = freezed,}) {
  return _then(_SpotubeFullAlbumObject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,artists: null == artists ? _self._artists : artists // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimpleArtistObject>,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,totalTracks: null == totalTracks ? _self.totalTracks : totalTracks // ignore: cast_nullable_to_non_nullable
as int,albumType: null == albumType ? _self.albumType : albumType // ignore: cast_nullable_to_non_nullable
as SpotubeAlbumType,recordLabel: freezed == recordLabel ? _self.recordLabel : recordLabel // ignore: cast_nullable_to_non_nullable
as String?,genres: freezed == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$SpotubeSimpleAlbumObject {

 String get id; String get name; String get externalUri; List<SpotubeSimpleArtistObject> get artists; List<SpotubeImageObject> get images; SpotubeAlbumType get albumType; String? get releaseDate;
/// Create a copy of SpotubeSimpleAlbumObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeSimpleAlbumObjectCopyWith<SpotubeSimpleAlbumObject> get copyWith => _$SpotubeSimpleAlbumObjectCopyWithImpl<SpotubeSimpleAlbumObject>(this as SpotubeSimpleAlbumObject, _$identity);

  /// Serializes this SpotubeSimpleAlbumObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeSimpleAlbumObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&const DeepCollectionEquality().equals(other.artists, artists)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.albumType, albumType) || other.albumType == albumType)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,externalUri,const DeepCollectionEquality().hash(artists),const DeepCollectionEquality().hash(images),albumType,releaseDate);

@override
String toString() {
  return 'SpotubeSimpleAlbumObject(id: $id, name: $name, externalUri: $externalUri, artists: $artists, images: $images, albumType: $albumType, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class $SpotubeSimpleAlbumObjectCopyWith<$Res>  {
  factory $SpotubeSimpleAlbumObjectCopyWith(SpotubeSimpleAlbumObject value, $Res Function(SpotubeSimpleAlbumObject) _then) = _$SpotubeSimpleAlbumObjectCopyWithImpl;
@useResult
$Res call({
 String id, String name, String externalUri, List<SpotubeSimpleArtistObject> artists, List<SpotubeImageObject> images, SpotubeAlbumType albumType, String? releaseDate
});




}
/// @nodoc
class _$SpotubeSimpleAlbumObjectCopyWithImpl<$Res>
    implements $SpotubeSimpleAlbumObjectCopyWith<$Res> {
  _$SpotubeSimpleAlbumObjectCopyWithImpl(this._self, this._then);

  final SpotubeSimpleAlbumObject _self;
  final $Res Function(SpotubeSimpleAlbumObject) _then;

/// Create a copy of SpotubeSimpleAlbumObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? externalUri = null,Object? artists = null,Object? images = null,Object? albumType = null,Object? releaseDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,artists: null == artists ? _self.artists : artists // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimpleArtistObject>,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,albumType: null == albumType ? _self.albumType : albumType // ignore: cast_nullable_to_non_nullable
as SpotubeAlbumType,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeSimpleAlbumObject].
extension SpotubeSimpleAlbumObjectPatterns on SpotubeSimpleAlbumObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeSimpleAlbumObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeSimpleAlbumObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeSimpleAlbumObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeSimpleAlbumObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeSimpleAlbumObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeSimpleAlbumObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String externalUri,  List<SpotubeSimpleArtistObject> artists,  List<SpotubeImageObject> images,  SpotubeAlbumType albumType,  String? releaseDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeSimpleAlbumObject() when $default != null:
return $default(_that.id,_that.name,_that.externalUri,_that.artists,_that.images,_that.albumType,_that.releaseDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String externalUri,  List<SpotubeSimpleArtistObject> artists,  List<SpotubeImageObject> images,  SpotubeAlbumType albumType,  String? releaseDate)  $default,) {final _that = this;
switch (_that) {
case _SpotubeSimpleAlbumObject():
return $default(_that.id,_that.name,_that.externalUri,_that.artists,_that.images,_that.albumType,_that.releaseDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String externalUri,  List<SpotubeSimpleArtistObject> artists,  List<SpotubeImageObject> images,  SpotubeAlbumType albumType,  String? releaseDate)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeSimpleAlbumObject() when $default != null:
return $default(_that.id,_that.name,_that.externalUri,_that.artists,_that.images,_that.albumType,_that.releaseDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeSimpleAlbumObject implements SpotubeSimpleAlbumObject {
   _SpotubeSimpleAlbumObject({required this.id, required this.name, required this.externalUri, required final  List<SpotubeSimpleArtistObject> artists, final  List<SpotubeImageObject> images = const [], required this.albumType, this.releaseDate}): _artists = artists,_images = images;
  factory _SpotubeSimpleAlbumObject.fromJson(Map<String, dynamic> json) => _$SpotubeSimpleAlbumObjectFromJson(json);

@override final  String id;
@override final  String name;
@override final  String externalUri;
 final  List<SpotubeSimpleArtistObject> _artists;
@override List<SpotubeSimpleArtistObject> get artists {
  if (_artists is EqualUnmodifiableListView) return _artists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artists);
}

 final  List<SpotubeImageObject> _images;
@override@JsonKey() List<SpotubeImageObject> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  SpotubeAlbumType albumType;
@override final  String? releaseDate;

/// Create a copy of SpotubeSimpleAlbumObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeSimpleAlbumObjectCopyWith<_SpotubeSimpleAlbumObject> get copyWith => __$SpotubeSimpleAlbumObjectCopyWithImpl<_SpotubeSimpleAlbumObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeSimpleAlbumObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeSimpleAlbumObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&const DeepCollectionEquality().equals(other._artists, _artists)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.albumType, albumType) || other.albumType == albumType)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,externalUri,const DeepCollectionEquality().hash(_artists),const DeepCollectionEquality().hash(_images),albumType,releaseDate);

@override
String toString() {
  return 'SpotubeSimpleAlbumObject(id: $id, name: $name, externalUri: $externalUri, artists: $artists, images: $images, albumType: $albumType, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class _$SpotubeSimpleAlbumObjectCopyWith<$Res> implements $SpotubeSimpleAlbumObjectCopyWith<$Res> {
  factory _$SpotubeSimpleAlbumObjectCopyWith(_SpotubeSimpleAlbumObject value, $Res Function(_SpotubeSimpleAlbumObject) _then) = __$SpotubeSimpleAlbumObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String externalUri, List<SpotubeSimpleArtistObject> artists, List<SpotubeImageObject> images, SpotubeAlbumType albumType, String? releaseDate
});




}
/// @nodoc
class __$SpotubeSimpleAlbumObjectCopyWithImpl<$Res>
    implements _$SpotubeSimpleAlbumObjectCopyWith<$Res> {
  __$SpotubeSimpleAlbumObjectCopyWithImpl(this._self, this._then);

  final _SpotubeSimpleAlbumObject _self;
  final $Res Function(_SpotubeSimpleAlbumObject) _then;

/// Create a copy of SpotubeSimpleAlbumObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? externalUri = null,Object? artists = null,Object? images = null,Object? albumType = null,Object? releaseDate = freezed,}) {
  return _then(_SpotubeSimpleAlbumObject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,artists: null == artists ? _self._artists : artists // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimpleArtistObject>,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,albumType: null == albumType ? _self.albumType : albumType // ignore: cast_nullable_to_non_nullable
as SpotubeAlbumType,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SpotubeFullArtistObject {

 String get id; String get name; String get externalUri; List<SpotubeImageObject> get images; List<String>? get genres; int? get followers;
/// Create a copy of SpotubeFullArtistObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeFullArtistObjectCopyWith<SpotubeFullArtistObject> get copyWith => _$SpotubeFullArtistObjectCopyWithImpl<SpotubeFullArtistObject>(this as SpotubeFullArtistObject, _$identity);

  /// Serializes this SpotubeFullArtistObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeFullArtistObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.followers, followers) || other.followers == followers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,externalUri,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(genres),followers);

@override
String toString() {
  return 'SpotubeFullArtistObject(id: $id, name: $name, externalUri: $externalUri, images: $images, genres: $genres, followers: $followers)';
}


}

/// @nodoc
abstract mixin class $SpotubeFullArtistObjectCopyWith<$Res>  {
  factory $SpotubeFullArtistObjectCopyWith(SpotubeFullArtistObject value, $Res Function(SpotubeFullArtistObject) _then) = _$SpotubeFullArtistObjectCopyWithImpl;
@useResult
$Res call({
 String id, String name, String externalUri, List<SpotubeImageObject> images, List<String>? genres, int? followers
});




}
/// @nodoc
class _$SpotubeFullArtistObjectCopyWithImpl<$Res>
    implements $SpotubeFullArtistObjectCopyWith<$Res> {
  _$SpotubeFullArtistObjectCopyWithImpl(this._self, this._then);

  final SpotubeFullArtistObject _self;
  final $Res Function(SpotubeFullArtistObject) _then;

/// Create a copy of SpotubeFullArtistObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? externalUri = null,Object? images = null,Object? genres = freezed,Object? followers = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,followers: freezed == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeFullArtistObject].
extension SpotubeFullArtistObjectPatterns on SpotubeFullArtistObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeFullArtistObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeFullArtistObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeFullArtistObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeFullArtistObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeFullArtistObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeFullArtistObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String externalUri,  List<SpotubeImageObject> images,  List<String>? genres,  int? followers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeFullArtistObject() when $default != null:
return $default(_that.id,_that.name,_that.externalUri,_that.images,_that.genres,_that.followers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String externalUri,  List<SpotubeImageObject> images,  List<String>? genres,  int? followers)  $default,) {final _that = this;
switch (_that) {
case _SpotubeFullArtistObject():
return $default(_that.id,_that.name,_that.externalUri,_that.images,_that.genres,_that.followers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String externalUri,  List<SpotubeImageObject> images,  List<String>? genres,  int? followers)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeFullArtistObject() when $default != null:
return $default(_that.id,_that.name,_that.externalUri,_that.images,_that.genres,_that.followers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeFullArtistObject implements SpotubeFullArtistObject {
   _SpotubeFullArtistObject({required this.id, required this.name, required this.externalUri, final  List<SpotubeImageObject> images = const [], final  List<String>? genres, this.followers}): _images = images,_genres = genres;
  factory _SpotubeFullArtistObject.fromJson(Map<String, dynamic> json) => _$SpotubeFullArtistObjectFromJson(json);

@override final  String id;
@override final  String name;
@override final  String externalUri;
 final  List<SpotubeImageObject> _images;
@override@JsonKey() List<SpotubeImageObject> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<String>? _genres;
@override List<String>? get genres {
  final value = _genres;
  if (value == null) return null;
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? followers;

/// Create a copy of SpotubeFullArtistObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeFullArtistObjectCopyWith<_SpotubeFullArtistObject> get copyWith => __$SpotubeFullArtistObjectCopyWithImpl<_SpotubeFullArtistObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeFullArtistObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeFullArtistObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.followers, followers) || other.followers == followers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,externalUri,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_genres),followers);

@override
String toString() {
  return 'SpotubeFullArtistObject(id: $id, name: $name, externalUri: $externalUri, images: $images, genres: $genres, followers: $followers)';
}


}

/// @nodoc
abstract mixin class _$SpotubeFullArtistObjectCopyWith<$Res> implements $SpotubeFullArtistObjectCopyWith<$Res> {
  factory _$SpotubeFullArtistObjectCopyWith(_SpotubeFullArtistObject value, $Res Function(_SpotubeFullArtistObject) _then) = __$SpotubeFullArtistObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String externalUri, List<SpotubeImageObject> images, List<String>? genres, int? followers
});




}
/// @nodoc
class __$SpotubeFullArtistObjectCopyWithImpl<$Res>
    implements _$SpotubeFullArtistObjectCopyWith<$Res> {
  __$SpotubeFullArtistObjectCopyWithImpl(this._self, this._then);

  final _SpotubeFullArtistObject _self;
  final $Res Function(_SpotubeFullArtistObject) _then;

/// Create a copy of SpotubeFullArtistObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? externalUri = null,Object? images = null,Object? genres = freezed,Object? followers = freezed,}) {
  return _then(_SpotubeFullArtistObject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,genres: freezed == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>?,followers: freezed == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SpotubeSimpleArtistObject {

 String get id; String get name; String get externalUri; List<SpotubeImageObject>? get images;
/// Create a copy of SpotubeSimpleArtistObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeSimpleArtistObjectCopyWith<SpotubeSimpleArtistObject> get copyWith => _$SpotubeSimpleArtistObjectCopyWithImpl<SpotubeSimpleArtistObject>(this as SpotubeSimpleArtistObject, _$identity);

  /// Serializes this SpotubeSimpleArtistObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeSimpleArtistObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,externalUri,const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'SpotubeSimpleArtistObject(id: $id, name: $name, externalUri: $externalUri, images: $images)';
}


}

/// @nodoc
abstract mixin class $SpotubeSimpleArtistObjectCopyWith<$Res>  {
  factory $SpotubeSimpleArtistObjectCopyWith(SpotubeSimpleArtistObject value, $Res Function(SpotubeSimpleArtistObject) _then) = _$SpotubeSimpleArtistObjectCopyWithImpl;
@useResult
$Res call({
 String id, String name, String externalUri, List<SpotubeImageObject>? images
});




}
/// @nodoc
class _$SpotubeSimpleArtistObjectCopyWithImpl<$Res>
    implements $SpotubeSimpleArtistObjectCopyWith<$Res> {
  _$SpotubeSimpleArtistObjectCopyWithImpl(this._self, this._then);

  final SpotubeSimpleArtistObject _self;
  final $Res Function(SpotubeSimpleArtistObject) _then;

/// Create a copy of SpotubeSimpleArtistObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? externalUri = null,Object? images = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeSimpleArtistObject].
extension SpotubeSimpleArtistObjectPatterns on SpotubeSimpleArtistObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeSimpleArtistObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeSimpleArtistObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeSimpleArtistObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeSimpleArtistObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeSimpleArtistObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeSimpleArtistObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String externalUri,  List<SpotubeImageObject>? images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeSimpleArtistObject() when $default != null:
return $default(_that.id,_that.name,_that.externalUri,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String externalUri,  List<SpotubeImageObject>? images)  $default,) {final _that = this;
switch (_that) {
case _SpotubeSimpleArtistObject():
return $default(_that.id,_that.name,_that.externalUri,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String externalUri,  List<SpotubeImageObject>? images)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeSimpleArtistObject() when $default != null:
return $default(_that.id,_that.name,_that.externalUri,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeSimpleArtistObject implements SpotubeSimpleArtistObject {
   _SpotubeSimpleArtistObject({required this.id, required this.name, required this.externalUri, final  List<SpotubeImageObject>? images}): _images = images;
  factory _SpotubeSimpleArtistObject.fromJson(Map<String, dynamic> json) => _$SpotubeSimpleArtistObjectFromJson(json);

@override final  String id;
@override final  String name;
@override final  String externalUri;
 final  List<SpotubeImageObject>? _images;
@override List<SpotubeImageObject>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SpotubeSimpleArtistObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeSimpleArtistObjectCopyWith<_SpotubeSimpleArtistObject> get copyWith => __$SpotubeSimpleArtistObjectCopyWithImpl<_SpotubeSimpleArtistObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeSimpleArtistObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeSimpleArtistObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,externalUri,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'SpotubeSimpleArtistObject(id: $id, name: $name, externalUri: $externalUri, images: $images)';
}


}

/// @nodoc
abstract mixin class _$SpotubeSimpleArtistObjectCopyWith<$Res> implements $SpotubeSimpleArtistObjectCopyWith<$Res> {
  factory _$SpotubeSimpleArtistObjectCopyWith(_SpotubeSimpleArtistObject value, $Res Function(_SpotubeSimpleArtistObject) _then) = __$SpotubeSimpleArtistObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String externalUri, List<SpotubeImageObject>? images
});




}
/// @nodoc
class __$SpotubeSimpleArtistObjectCopyWithImpl<$Res>
    implements _$SpotubeSimpleArtistObjectCopyWith<$Res> {
  __$SpotubeSimpleArtistObjectCopyWithImpl(this._self, this._then);

  final _SpotubeSimpleArtistObject _self;
  final $Res Function(_SpotubeSimpleArtistObject) _then;

/// Create a copy of SpotubeSimpleArtistObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? externalUri = null,Object? images = freezed,}) {
  return _then(_SpotubeSimpleArtistObject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>?,
  ));
}


}


/// @nodoc
mixin _$SpotubeBrowseSectionObject<T> {

 String get id; String get title; String get externalUri; bool get browseMore; List<T> get items;
/// Create a copy of SpotubeBrowseSectionObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeBrowseSectionObjectCopyWith<T, SpotubeBrowseSectionObject<T>> get copyWith => _$SpotubeBrowseSectionObjectCopyWithImpl<T, SpotubeBrowseSectionObject<T>>(this as SpotubeBrowseSectionObject<T>, _$identity);

  /// Serializes this SpotubeBrowseSectionObject to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeBrowseSectionObject<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&(identical(other.browseMore, browseMore) || other.browseMore == browseMore)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,externalUri,browseMore,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'SpotubeBrowseSectionObject<$T>(id: $id, title: $title, externalUri: $externalUri, browseMore: $browseMore, items: $items)';
}


}

/// @nodoc
abstract mixin class $SpotubeBrowseSectionObjectCopyWith<T,$Res>  {
  factory $SpotubeBrowseSectionObjectCopyWith(SpotubeBrowseSectionObject<T> value, $Res Function(SpotubeBrowseSectionObject<T>) _then) = _$SpotubeBrowseSectionObjectCopyWithImpl;
@useResult
$Res call({
 String id, String title, String externalUri, bool browseMore, List<T> items
});




}
/// @nodoc
class _$SpotubeBrowseSectionObjectCopyWithImpl<T,$Res>
    implements $SpotubeBrowseSectionObjectCopyWith<T, $Res> {
  _$SpotubeBrowseSectionObjectCopyWithImpl(this._self, this._then);

  final SpotubeBrowseSectionObject<T> _self;
  final $Res Function(SpotubeBrowseSectionObject<T>) _then;

/// Create a copy of SpotubeBrowseSectionObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? externalUri = null,Object? browseMore = null,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,browseMore: null == browseMore ? _self.browseMore : browseMore // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeBrowseSectionObject].
extension SpotubeBrowseSectionObjectPatterns<T> on SpotubeBrowseSectionObject<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeBrowseSectionObject<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeBrowseSectionObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeBrowseSectionObject<T> value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeBrowseSectionObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeBrowseSectionObject<T> value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeBrowseSectionObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String externalUri,  bool browseMore,  List<T> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeBrowseSectionObject() when $default != null:
return $default(_that.id,_that.title,_that.externalUri,_that.browseMore,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String externalUri,  bool browseMore,  List<T> items)  $default,) {final _that = this;
switch (_that) {
case _SpotubeBrowseSectionObject():
return $default(_that.id,_that.title,_that.externalUri,_that.browseMore,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String externalUri,  bool browseMore,  List<T> items)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeBrowseSectionObject() when $default != null:
return $default(_that.id,_that.title,_that.externalUri,_that.browseMore,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _SpotubeBrowseSectionObject<T> implements SpotubeBrowseSectionObject<T> {
   _SpotubeBrowseSectionObject({required this.id, required this.title, required this.externalUri, required this.browseMore, required final  List<T> items}): _items = items;
  factory _SpotubeBrowseSectionObject.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$SpotubeBrowseSectionObjectFromJson(json,fromJsonT);

@override final  String id;
@override final  String title;
@override final  String externalUri;
@override final  bool browseMore;
 final  List<T> _items;
@override List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SpotubeBrowseSectionObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeBrowseSectionObjectCopyWith<T, _SpotubeBrowseSectionObject<T>> get copyWith => __$SpotubeBrowseSectionObjectCopyWithImpl<T, _SpotubeBrowseSectionObject<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$SpotubeBrowseSectionObjectToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeBrowseSectionObject<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&(identical(other.browseMore, browseMore) || other.browseMore == browseMore)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,externalUri,browseMore,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SpotubeBrowseSectionObject<$T>(id: $id, title: $title, externalUri: $externalUri, browseMore: $browseMore, items: $items)';
}


}

/// @nodoc
abstract mixin class _$SpotubeBrowseSectionObjectCopyWith<T,$Res> implements $SpotubeBrowseSectionObjectCopyWith<T, $Res> {
  factory _$SpotubeBrowseSectionObjectCopyWith(_SpotubeBrowseSectionObject<T> value, $Res Function(_SpotubeBrowseSectionObject<T>) _then) = __$SpotubeBrowseSectionObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String externalUri, bool browseMore, List<T> items
});




}
/// @nodoc
class __$SpotubeBrowseSectionObjectCopyWithImpl<T,$Res>
    implements _$SpotubeBrowseSectionObjectCopyWith<T, $Res> {
  __$SpotubeBrowseSectionObjectCopyWithImpl(this._self, this._then);

  final _SpotubeBrowseSectionObject<T> _self;
  final $Res Function(_SpotubeBrowseSectionObject<T>) _then;

/// Create a copy of SpotubeBrowseSectionObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? externalUri = null,Object? browseMore = null,Object? items = null,}) {
  return _then(_SpotubeBrowseSectionObject<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,browseMore: null == browseMore ? _self.browseMore : browseMore // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,
  ));
}


}

MetadataFormFieldObject _$MetadataFormFieldObjectFromJson(
  Map<String, dynamic> json
) {
        switch (json['objectType']) {
                  case 'input':
          return MetadataFormFieldInputObject.fromJson(
            json
          );
                case 'text':
          return MetadataFormFieldTextObject.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'objectType',
  'MetadataFormFieldObject',
  'Invalid union type "${json['objectType']}"!'
);
        }
      
}

/// @nodoc
mixin _$MetadataFormFieldObject {

 String get objectType;
/// Create a copy of MetadataFormFieldObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetadataFormFieldObjectCopyWith<MetadataFormFieldObject> get copyWith => _$MetadataFormFieldObjectCopyWithImpl<MetadataFormFieldObject>(this as MetadataFormFieldObject, _$identity);

  /// Serializes this MetadataFormFieldObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetadataFormFieldObject&&(identical(other.objectType, objectType) || other.objectType == objectType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectType);

@override
String toString() {
  return 'MetadataFormFieldObject(objectType: $objectType)';
}


}

/// @nodoc
abstract mixin class $MetadataFormFieldObjectCopyWith<$Res>  {
  factory $MetadataFormFieldObjectCopyWith(MetadataFormFieldObject value, $Res Function(MetadataFormFieldObject) _then) = _$MetadataFormFieldObjectCopyWithImpl;
@useResult
$Res call({
 String objectType
});




}
/// @nodoc
class _$MetadataFormFieldObjectCopyWithImpl<$Res>
    implements $MetadataFormFieldObjectCopyWith<$Res> {
  _$MetadataFormFieldObjectCopyWithImpl(this._self, this._then);

  final MetadataFormFieldObject _self;
  final $Res Function(MetadataFormFieldObject) _then;

/// Create a copy of MetadataFormFieldObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectType = null,}) {
  return _then(_self.copyWith(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MetadataFormFieldObject].
extension MetadataFormFieldObjectPatterns on MetadataFormFieldObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MetadataFormFieldInputObject value)?  input,TResult Function( MetadataFormFieldTextObject value)?  text,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MetadataFormFieldInputObject() when input != null:
return input(_that);case MetadataFormFieldTextObject() when text != null:
return text(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MetadataFormFieldInputObject value)  input,required TResult Function( MetadataFormFieldTextObject value)  text,}){
final _that = this;
switch (_that) {
case MetadataFormFieldInputObject():
return input(_that);case MetadataFormFieldTextObject():
return text(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MetadataFormFieldInputObject value)?  input,TResult? Function( MetadataFormFieldTextObject value)?  text,}){
final _that = this;
switch (_that) {
case MetadataFormFieldInputObject() when input != null:
return input(_that);case MetadataFormFieldTextObject() when text != null:
return text(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String objectType,  String id,  FormFieldVariant variant,  String? placeholder,  String? defaultValue,  bool? required,  String? regex)?  input,TResult Function( String objectType,  String text)?  text,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MetadataFormFieldInputObject() when input != null:
return input(_that.objectType,_that.id,_that.variant,_that.placeholder,_that.defaultValue,_that.required,_that.regex);case MetadataFormFieldTextObject() when text != null:
return text(_that.objectType,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String objectType,  String id,  FormFieldVariant variant,  String? placeholder,  String? defaultValue,  bool? required,  String? regex)  input,required TResult Function( String objectType,  String text)  text,}) {final _that = this;
switch (_that) {
case MetadataFormFieldInputObject():
return input(_that.objectType,_that.id,_that.variant,_that.placeholder,_that.defaultValue,_that.required,_that.regex);case MetadataFormFieldTextObject():
return text(_that.objectType,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String objectType,  String id,  FormFieldVariant variant,  String? placeholder,  String? defaultValue,  bool? required,  String? regex)?  input,TResult? Function( String objectType,  String text)?  text,}) {final _that = this;
switch (_that) {
case MetadataFormFieldInputObject() when input != null:
return input(_that.objectType,_that.id,_that.variant,_that.placeholder,_that.defaultValue,_that.required,_that.regex);case MetadataFormFieldTextObject() when text != null:
return text(_that.objectType,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class MetadataFormFieldInputObject implements MetadataFormFieldObject {
   MetadataFormFieldInputObject({required this.objectType, required this.id, this.variant = FormFieldVariant.text, this.placeholder, this.defaultValue, this.required, this.regex});
  factory MetadataFormFieldInputObject.fromJson(Map<String, dynamic> json) => _$MetadataFormFieldInputObjectFromJson(json);

@override final  String objectType;
 final  String id;
@JsonKey() final  FormFieldVariant variant;
 final  String? placeholder;
 final  String? defaultValue;
 final  bool? required;
 final  String? regex;

/// Create a copy of MetadataFormFieldObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetadataFormFieldInputObjectCopyWith<MetadataFormFieldInputObject> get copyWith => _$MetadataFormFieldInputObjectCopyWithImpl<MetadataFormFieldInputObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetadataFormFieldInputObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetadataFormFieldInputObject&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.id, id) || other.id == id)&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.placeholder, placeholder) || other.placeholder == placeholder)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.required, required) || other.required == required)&&(identical(other.regex, regex) || other.regex == regex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectType,id,variant,placeholder,defaultValue,required,regex);

@override
String toString() {
  return 'MetadataFormFieldObject.input(objectType: $objectType, id: $id, variant: $variant, placeholder: $placeholder, defaultValue: $defaultValue, required: $required, regex: $regex)';
}


}

/// @nodoc
abstract mixin class $MetadataFormFieldInputObjectCopyWith<$Res> implements $MetadataFormFieldObjectCopyWith<$Res> {
  factory $MetadataFormFieldInputObjectCopyWith(MetadataFormFieldInputObject value, $Res Function(MetadataFormFieldInputObject) _then) = _$MetadataFormFieldInputObjectCopyWithImpl;
@override @useResult
$Res call({
 String objectType, String id, FormFieldVariant variant, String? placeholder, String? defaultValue, bool? required, String? regex
});




}
/// @nodoc
class _$MetadataFormFieldInputObjectCopyWithImpl<$Res>
    implements $MetadataFormFieldInputObjectCopyWith<$Res> {
  _$MetadataFormFieldInputObjectCopyWithImpl(this._self, this._then);

  final MetadataFormFieldInputObject _self;
  final $Res Function(MetadataFormFieldInputObject) _then;

/// Create a copy of MetadataFormFieldObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectType = null,Object? id = null,Object? variant = null,Object? placeholder = freezed,Object? defaultValue = freezed,Object? required = freezed,Object? regex = freezed,}) {
  return _then(MetadataFormFieldInputObject(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,variant: null == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as FormFieldVariant,placeholder: freezed == placeholder ? _self.placeholder : placeholder // ignore: cast_nullable_to_non_nullable
as String?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,regex: freezed == regex ? _self.regex : regex // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class MetadataFormFieldTextObject implements MetadataFormFieldObject {
   MetadataFormFieldTextObject({required this.objectType, required this.text});
  factory MetadataFormFieldTextObject.fromJson(Map<String, dynamic> json) => _$MetadataFormFieldTextObjectFromJson(json);

@override final  String objectType;
 final  String text;

/// Create a copy of MetadataFormFieldObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetadataFormFieldTextObjectCopyWith<MetadataFormFieldTextObject> get copyWith => _$MetadataFormFieldTextObjectCopyWithImpl<MetadataFormFieldTextObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetadataFormFieldTextObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetadataFormFieldTextObject&&(identical(other.objectType, objectType) || other.objectType == objectType)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectType,text);

@override
String toString() {
  return 'MetadataFormFieldObject.text(objectType: $objectType, text: $text)';
}


}

/// @nodoc
abstract mixin class $MetadataFormFieldTextObjectCopyWith<$Res> implements $MetadataFormFieldObjectCopyWith<$Res> {
  factory $MetadataFormFieldTextObjectCopyWith(MetadataFormFieldTextObject value, $Res Function(MetadataFormFieldTextObject) _then) = _$MetadataFormFieldTextObjectCopyWithImpl;
@override @useResult
$Res call({
 String objectType, String text
});




}
/// @nodoc
class _$MetadataFormFieldTextObjectCopyWithImpl<$Res>
    implements $MetadataFormFieldTextObjectCopyWith<$Res> {
  _$MetadataFormFieldTextObjectCopyWithImpl(this._self, this._then);

  final MetadataFormFieldTextObject _self;
  final $Res Function(MetadataFormFieldTextObject) _then;

/// Create a copy of MetadataFormFieldObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectType = null,Object? text = null,}) {
  return _then(MetadataFormFieldTextObject(
objectType: null == objectType ? _self.objectType : objectType // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SpotubeImageObject {

 String get url; int? get width; int? get height;
/// Create a copy of SpotubeImageObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeImageObjectCopyWith<SpotubeImageObject> get copyWith => _$SpotubeImageObjectCopyWithImpl<SpotubeImageObject>(this as SpotubeImageObject, _$identity);

  /// Serializes this SpotubeImageObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeImageObject&&(identical(other.url, url) || other.url == url)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,width,height);

@override
String toString() {
  return 'SpotubeImageObject(url: $url, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $SpotubeImageObjectCopyWith<$Res>  {
  factory $SpotubeImageObjectCopyWith(SpotubeImageObject value, $Res Function(SpotubeImageObject) _then) = _$SpotubeImageObjectCopyWithImpl;
@useResult
$Res call({
 String url, int? width, int? height
});




}
/// @nodoc
class _$SpotubeImageObjectCopyWithImpl<$Res>
    implements $SpotubeImageObjectCopyWith<$Res> {
  _$SpotubeImageObjectCopyWithImpl(this._self, this._then);

  final SpotubeImageObject _self;
  final $Res Function(SpotubeImageObject) _then;

/// Create a copy of SpotubeImageObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? width = freezed,Object? height = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeImageObject].
extension SpotubeImageObjectPatterns on SpotubeImageObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeImageObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeImageObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeImageObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeImageObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeImageObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeImageObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  int? width,  int? height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeImageObject() when $default != null:
return $default(_that.url,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  int? width,  int? height)  $default,) {final _that = this;
switch (_that) {
case _SpotubeImageObject():
return $default(_that.url,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  int? width,  int? height)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeImageObject() when $default != null:
return $default(_that.url,_that.width,_that.height);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeImageObject implements SpotubeImageObject {
   _SpotubeImageObject({required this.url, this.width, this.height});
  factory _SpotubeImageObject.fromJson(Map<String, dynamic> json) => _$SpotubeImageObjectFromJson(json);

@override final  String url;
@override final  int? width;
@override final  int? height;

/// Create a copy of SpotubeImageObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeImageObjectCopyWith<_SpotubeImageObject> get copyWith => __$SpotubeImageObjectCopyWithImpl<_SpotubeImageObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeImageObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeImageObject&&(identical(other.url, url) || other.url == url)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,width,height);

@override
String toString() {
  return 'SpotubeImageObject(url: $url, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$SpotubeImageObjectCopyWith<$Res> implements $SpotubeImageObjectCopyWith<$Res> {
  factory _$SpotubeImageObjectCopyWith(_SpotubeImageObject value, $Res Function(_SpotubeImageObject) _then) = __$SpotubeImageObjectCopyWithImpl;
@override @useResult
$Res call({
 String url, int? width, int? height
});




}
/// @nodoc
class __$SpotubeImageObjectCopyWithImpl<$Res>
    implements _$SpotubeImageObjectCopyWith<$Res> {
  __$SpotubeImageObjectCopyWithImpl(this._self, this._then);

  final _SpotubeImageObject _self;
  final $Res Function(_SpotubeImageObject) _then;

/// Create a copy of SpotubeImageObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? width = freezed,Object? height = freezed,}) {
  return _then(_SpotubeImageObject(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SpotubePaginationResponseObject<T> {

 int get limit; int? get nextOffset; int get total; bool get hasMore; List<T> get items;
/// Create a copy of SpotubePaginationResponseObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubePaginationResponseObjectCopyWith<T, SpotubePaginationResponseObject<T>> get copyWith => _$SpotubePaginationResponseObjectCopyWithImpl<T, SpotubePaginationResponseObject<T>>(this as SpotubePaginationResponseObject<T>, _$identity);

  /// Serializes this SpotubePaginationResponseObject to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubePaginationResponseObject<T>&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.nextOffset, nextOffset) || other.nextOffset == nextOffset)&&(identical(other.total, total) || other.total == total)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,limit,nextOffset,total,hasMore,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'SpotubePaginationResponseObject<$T>(limit: $limit, nextOffset: $nextOffset, total: $total, hasMore: $hasMore, items: $items)';
}


}

/// @nodoc
abstract mixin class $SpotubePaginationResponseObjectCopyWith<T,$Res>  {
  factory $SpotubePaginationResponseObjectCopyWith(SpotubePaginationResponseObject<T> value, $Res Function(SpotubePaginationResponseObject<T>) _then) = _$SpotubePaginationResponseObjectCopyWithImpl;
@useResult
$Res call({
 int limit, int? nextOffset, int total, bool hasMore, List<T> items
});




}
/// @nodoc
class _$SpotubePaginationResponseObjectCopyWithImpl<T,$Res>
    implements $SpotubePaginationResponseObjectCopyWith<T, $Res> {
  _$SpotubePaginationResponseObjectCopyWithImpl(this._self, this._then);

  final SpotubePaginationResponseObject<T> _self;
  final $Res Function(SpotubePaginationResponseObject<T>) _then;

/// Create a copy of SpotubePaginationResponseObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? limit = null,Object? nextOffset = freezed,Object? total = null,Object? hasMore = null,Object? items = null,}) {
  return _then(_self.copyWith(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,nextOffset: freezed == nextOffset ? _self.nextOffset : nextOffset // ignore: cast_nullable_to_non_nullable
as int?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubePaginationResponseObject].
extension SpotubePaginationResponseObjectPatterns<T> on SpotubePaginationResponseObject<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubePaginationResponseObject<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubePaginationResponseObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubePaginationResponseObject<T> value)  $default,){
final _that = this;
switch (_that) {
case _SpotubePaginationResponseObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubePaginationResponseObject<T> value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubePaginationResponseObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int limit,  int? nextOffset,  int total,  bool hasMore,  List<T> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubePaginationResponseObject() when $default != null:
return $default(_that.limit,_that.nextOffset,_that.total,_that.hasMore,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int limit,  int? nextOffset,  int total,  bool hasMore,  List<T> items)  $default,) {final _that = this;
switch (_that) {
case _SpotubePaginationResponseObject():
return $default(_that.limit,_that.nextOffset,_that.total,_that.hasMore,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int limit,  int? nextOffset,  int total,  bool hasMore,  List<T> items)?  $default,) {final _that = this;
switch (_that) {
case _SpotubePaginationResponseObject() when $default != null:
return $default(_that.limit,_that.nextOffset,_that.total,_that.hasMore,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _SpotubePaginationResponseObject<T> implements SpotubePaginationResponseObject<T> {
   _SpotubePaginationResponseObject({required this.limit, required this.nextOffset, required this.total, required this.hasMore, required final  List<T> items}): _items = items;
  factory _SpotubePaginationResponseObject.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$SpotubePaginationResponseObjectFromJson(json,fromJsonT);

@override final  int limit;
@override final  int? nextOffset;
@override final  int total;
@override final  bool hasMore;
 final  List<T> _items;
@override List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SpotubePaginationResponseObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubePaginationResponseObjectCopyWith<T, _SpotubePaginationResponseObject<T>> get copyWith => __$SpotubePaginationResponseObjectCopyWithImpl<T, _SpotubePaginationResponseObject<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$SpotubePaginationResponseObjectToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubePaginationResponseObject<T>&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.nextOffset, nextOffset) || other.nextOffset == nextOffset)&&(identical(other.total, total) || other.total == total)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,limit,nextOffset,total,hasMore,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SpotubePaginationResponseObject<$T>(limit: $limit, nextOffset: $nextOffset, total: $total, hasMore: $hasMore, items: $items)';
}


}

/// @nodoc
abstract mixin class _$SpotubePaginationResponseObjectCopyWith<T,$Res> implements $SpotubePaginationResponseObjectCopyWith<T, $Res> {
  factory _$SpotubePaginationResponseObjectCopyWith(_SpotubePaginationResponseObject<T> value, $Res Function(_SpotubePaginationResponseObject<T>) _then) = __$SpotubePaginationResponseObjectCopyWithImpl;
@override @useResult
$Res call({
 int limit, int? nextOffset, int total, bool hasMore, List<T> items
});




}
/// @nodoc
class __$SpotubePaginationResponseObjectCopyWithImpl<T,$Res>
    implements _$SpotubePaginationResponseObjectCopyWith<T, $Res> {
  __$SpotubePaginationResponseObjectCopyWithImpl(this._self, this._then);

  final _SpotubePaginationResponseObject<T> _self;
  final $Res Function(_SpotubePaginationResponseObject<T>) _then;

/// Create a copy of SpotubePaginationResponseObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? limit = null,Object? nextOffset = freezed,Object? total = null,Object? hasMore = null,Object? items = null,}) {
  return _then(_SpotubePaginationResponseObject<T>(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,nextOffset: freezed == nextOffset ? _self.nextOffset : nextOffset // ignore: cast_nullable_to_non_nullable
as int?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,
  ));
}


}


/// @nodoc
mixin _$SpotubeFullPlaylistObject {

 String get id; String get name; String get description; String get externalUri; SpotubeUserObject get owner; List<SpotubeImageObject> get images; List<SpotubeUserObject> get collaborators; bool get collaborative; bool get public;
/// Create a copy of SpotubeFullPlaylistObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeFullPlaylistObjectCopyWith<SpotubeFullPlaylistObject> get copyWith => _$SpotubeFullPlaylistObjectCopyWithImpl<SpotubeFullPlaylistObject>(this as SpotubeFullPlaylistObject, _$identity);

  /// Serializes this SpotubeFullPlaylistObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeFullPlaylistObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&(identical(other.owner, owner) || other.owner == owner)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.collaborators, collaborators)&&(identical(other.collaborative, collaborative) || other.collaborative == collaborative)&&(identical(other.public, public) || other.public == public));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,externalUri,owner,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(collaborators),collaborative,public);

@override
String toString() {
  return 'SpotubeFullPlaylistObject(id: $id, name: $name, description: $description, externalUri: $externalUri, owner: $owner, images: $images, collaborators: $collaborators, collaborative: $collaborative, public: $public)';
}


}

/// @nodoc
abstract mixin class $SpotubeFullPlaylistObjectCopyWith<$Res>  {
  factory $SpotubeFullPlaylistObjectCopyWith(SpotubeFullPlaylistObject value, $Res Function(SpotubeFullPlaylistObject) _then) = _$SpotubeFullPlaylistObjectCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String externalUri, SpotubeUserObject owner, List<SpotubeImageObject> images, List<SpotubeUserObject> collaborators, bool collaborative, bool public
});


$SpotubeUserObjectCopyWith<$Res> get owner;

}
/// @nodoc
class _$SpotubeFullPlaylistObjectCopyWithImpl<$Res>
    implements $SpotubeFullPlaylistObjectCopyWith<$Res> {
  _$SpotubeFullPlaylistObjectCopyWithImpl(this._self, this._then);

  final SpotubeFullPlaylistObject _self;
  final $Res Function(SpotubeFullPlaylistObject) _then;

/// Create a copy of SpotubeFullPlaylistObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? externalUri = null,Object? owner = null,Object? images = null,Object? collaborators = null,Object? collaborative = null,Object? public = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as SpotubeUserObject,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,collaborators: null == collaborators ? _self.collaborators : collaborators // ignore: cast_nullable_to_non_nullable
as List<SpotubeUserObject>,collaborative: null == collaborative ? _self.collaborative : collaborative // ignore: cast_nullable_to_non_nullable
as bool,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SpotubeFullPlaylistObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotubeUserObjectCopyWith<$Res> get owner {
  
  return $SpotubeUserObjectCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [SpotubeFullPlaylistObject].
extension SpotubeFullPlaylistObjectPatterns on SpotubeFullPlaylistObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeFullPlaylistObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeFullPlaylistObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeFullPlaylistObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeFullPlaylistObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeFullPlaylistObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeFullPlaylistObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String externalUri,  SpotubeUserObject owner,  List<SpotubeImageObject> images,  List<SpotubeUserObject> collaborators,  bool collaborative,  bool public)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeFullPlaylistObject() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.externalUri,_that.owner,_that.images,_that.collaborators,_that.collaborative,_that.public);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String externalUri,  SpotubeUserObject owner,  List<SpotubeImageObject> images,  List<SpotubeUserObject> collaborators,  bool collaborative,  bool public)  $default,) {final _that = this;
switch (_that) {
case _SpotubeFullPlaylistObject():
return $default(_that.id,_that.name,_that.description,_that.externalUri,_that.owner,_that.images,_that.collaborators,_that.collaborative,_that.public);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String externalUri,  SpotubeUserObject owner,  List<SpotubeImageObject> images,  List<SpotubeUserObject> collaborators,  bool collaborative,  bool public)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeFullPlaylistObject() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.externalUri,_that.owner,_that.images,_that.collaborators,_that.collaborative,_that.public);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeFullPlaylistObject implements SpotubeFullPlaylistObject {
   _SpotubeFullPlaylistObject({required this.id, required this.name, required this.description, required this.externalUri, required this.owner, final  List<SpotubeImageObject> images = const [], final  List<SpotubeUserObject> collaborators = const [], this.collaborative = false, this.public = false}): _images = images,_collaborators = collaborators;
  factory _SpotubeFullPlaylistObject.fromJson(Map<String, dynamic> json) => _$SpotubeFullPlaylistObjectFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String externalUri;
@override final  SpotubeUserObject owner;
 final  List<SpotubeImageObject> _images;
@override@JsonKey() List<SpotubeImageObject> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<SpotubeUserObject> _collaborators;
@override@JsonKey() List<SpotubeUserObject> get collaborators {
  if (_collaborators is EqualUnmodifiableListView) return _collaborators;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_collaborators);
}

@override@JsonKey() final  bool collaborative;
@override@JsonKey() final  bool public;

/// Create a copy of SpotubeFullPlaylistObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeFullPlaylistObjectCopyWith<_SpotubeFullPlaylistObject> get copyWith => __$SpotubeFullPlaylistObjectCopyWithImpl<_SpotubeFullPlaylistObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeFullPlaylistObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeFullPlaylistObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&(identical(other.owner, owner) || other.owner == owner)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._collaborators, _collaborators)&&(identical(other.collaborative, collaborative) || other.collaborative == collaborative)&&(identical(other.public, public) || other.public == public));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,externalUri,owner,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_collaborators),collaborative,public);

@override
String toString() {
  return 'SpotubeFullPlaylistObject(id: $id, name: $name, description: $description, externalUri: $externalUri, owner: $owner, images: $images, collaborators: $collaborators, collaborative: $collaborative, public: $public)';
}


}

/// @nodoc
abstract mixin class _$SpotubeFullPlaylistObjectCopyWith<$Res> implements $SpotubeFullPlaylistObjectCopyWith<$Res> {
  factory _$SpotubeFullPlaylistObjectCopyWith(_SpotubeFullPlaylistObject value, $Res Function(_SpotubeFullPlaylistObject) _then) = __$SpotubeFullPlaylistObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String externalUri, SpotubeUserObject owner, List<SpotubeImageObject> images, List<SpotubeUserObject> collaborators, bool collaborative, bool public
});


@override $SpotubeUserObjectCopyWith<$Res> get owner;

}
/// @nodoc
class __$SpotubeFullPlaylistObjectCopyWithImpl<$Res>
    implements _$SpotubeFullPlaylistObjectCopyWith<$Res> {
  __$SpotubeFullPlaylistObjectCopyWithImpl(this._self, this._then);

  final _SpotubeFullPlaylistObject _self;
  final $Res Function(_SpotubeFullPlaylistObject) _then;

/// Create a copy of SpotubeFullPlaylistObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? externalUri = null,Object? owner = null,Object? images = null,Object? collaborators = null,Object? collaborative = null,Object? public = null,}) {
  return _then(_SpotubeFullPlaylistObject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as SpotubeUserObject,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,collaborators: null == collaborators ? _self._collaborators : collaborators // ignore: cast_nullable_to_non_nullable
as List<SpotubeUserObject>,collaborative: null == collaborative ? _self.collaborative : collaborative // ignore: cast_nullable_to_non_nullable
as bool,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SpotubeFullPlaylistObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotubeUserObjectCopyWith<$Res> get owner {
  
  return $SpotubeUserObjectCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// @nodoc
mixin _$SpotubeSimplePlaylistObject {

 String get id; String get name; String get description; String get externalUri; SpotubeUserObject get owner; List<SpotubeImageObject> get images;
/// Create a copy of SpotubeSimplePlaylistObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeSimplePlaylistObjectCopyWith<SpotubeSimplePlaylistObject> get copyWith => _$SpotubeSimplePlaylistObjectCopyWithImpl<SpotubeSimplePlaylistObject>(this as SpotubeSimplePlaylistObject, _$identity);

  /// Serializes this SpotubeSimplePlaylistObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeSimplePlaylistObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&(identical(other.owner, owner) || other.owner == owner)&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,externalUri,owner,const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'SpotubeSimplePlaylistObject(id: $id, name: $name, description: $description, externalUri: $externalUri, owner: $owner, images: $images)';
}


}

/// @nodoc
abstract mixin class $SpotubeSimplePlaylistObjectCopyWith<$Res>  {
  factory $SpotubeSimplePlaylistObjectCopyWith(SpotubeSimplePlaylistObject value, $Res Function(SpotubeSimplePlaylistObject) _then) = _$SpotubeSimplePlaylistObjectCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String externalUri, SpotubeUserObject owner, List<SpotubeImageObject> images
});


$SpotubeUserObjectCopyWith<$Res> get owner;

}
/// @nodoc
class _$SpotubeSimplePlaylistObjectCopyWithImpl<$Res>
    implements $SpotubeSimplePlaylistObjectCopyWith<$Res> {
  _$SpotubeSimplePlaylistObjectCopyWithImpl(this._self, this._then);

  final SpotubeSimplePlaylistObject _self;
  final $Res Function(SpotubeSimplePlaylistObject) _then;

/// Create a copy of SpotubeSimplePlaylistObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? externalUri = null,Object? owner = null,Object? images = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as SpotubeUserObject,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,
  ));
}
/// Create a copy of SpotubeSimplePlaylistObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotubeUserObjectCopyWith<$Res> get owner {
  
  return $SpotubeUserObjectCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [SpotubeSimplePlaylistObject].
extension SpotubeSimplePlaylistObjectPatterns on SpotubeSimplePlaylistObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeSimplePlaylistObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeSimplePlaylistObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeSimplePlaylistObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeSimplePlaylistObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeSimplePlaylistObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeSimplePlaylistObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String externalUri,  SpotubeUserObject owner,  List<SpotubeImageObject> images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeSimplePlaylistObject() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.externalUri,_that.owner,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String externalUri,  SpotubeUserObject owner,  List<SpotubeImageObject> images)  $default,) {final _that = this;
switch (_that) {
case _SpotubeSimplePlaylistObject():
return $default(_that.id,_that.name,_that.description,_that.externalUri,_that.owner,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String externalUri,  SpotubeUserObject owner,  List<SpotubeImageObject> images)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeSimplePlaylistObject() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.externalUri,_that.owner,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeSimplePlaylistObject implements SpotubeSimplePlaylistObject {
   _SpotubeSimplePlaylistObject({required this.id, required this.name, required this.description, required this.externalUri, required this.owner, final  List<SpotubeImageObject> images = const []}): _images = images;
  factory _SpotubeSimplePlaylistObject.fromJson(Map<String, dynamic> json) => _$SpotubeSimplePlaylistObjectFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String externalUri;
@override final  SpotubeUserObject owner;
 final  List<SpotubeImageObject> _images;
@override@JsonKey() List<SpotubeImageObject> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of SpotubeSimplePlaylistObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeSimplePlaylistObjectCopyWith<_SpotubeSimplePlaylistObject> get copyWith => __$SpotubeSimplePlaylistObjectCopyWithImpl<_SpotubeSimplePlaylistObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeSimplePlaylistObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeSimplePlaylistObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&(identical(other.owner, owner) || other.owner == owner)&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,externalUri,owner,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'SpotubeSimplePlaylistObject(id: $id, name: $name, description: $description, externalUri: $externalUri, owner: $owner, images: $images)';
}


}

/// @nodoc
abstract mixin class _$SpotubeSimplePlaylistObjectCopyWith<$Res> implements $SpotubeSimplePlaylistObjectCopyWith<$Res> {
  factory _$SpotubeSimplePlaylistObjectCopyWith(_SpotubeSimplePlaylistObject value, $Res Function(_SpotubeSimplePlaylistObject) _then) = __$SpotubeSimplePlaylistObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String externalUri, SpotubeUserObject owner, List<SpotubeImageObject> images
});


@override $SpotubeUserObjectCopyWith<$Res> get owner;

}
/// @nodoc
class __$SpotubeSimplePlaylistObjectCopyWithImpl<$Res>
    implements _$SpotubeSimplePlaylistObjectCopyWith<$Res> {
  __$SpotubeSimplePlaylistObjectCopyWithImpl(this._self, this._then);

  final _SpotubeSimplePlaylistObject _self;
  final $Res Function(_SpotubeSimplePlaylistObject) _then;

/// Create a copy of SpotubeSimplePlaylistObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? externalUri = null,Object? owner = null,Object? images = null,}) {
  return _then(_SpotubeSimplePlaylistObject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as SpotubeUserObject,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,
  ));
}

/// Create a copy of SpotubeSimplePlaylistObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotubeUserObjectCopyWith<$Res> get owner {
  
  return $SpotubeUserObjectCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// @nodoc
mixin _$SpotubeSearchResponseObject {

 List<SpotubeSimpleAlbumObject> get albums; List<SpotubeFullArtistObject> get artists; List<SpotubeSimplePlaylistObject> get playlists; List<SpotubeFullTrackObject> get tracks;
/// Create a copy of SpotubeSearchResponseObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeSearchResponseObjectCopyWith<SpotubeSearchResponseObject> get copyWith => _$SpotubeSearchResponseObjectCopyWithImpl<SpotubeSearchResponseObject>(this as SpotubeSearchResponseObject, _$identity);

  /// Serializes this SpotubeSearchResponseObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeSearchResponseObject&&const DeepCollectionEquality().equals(other.albums, albums)&&const DeepCollectionEquality().equals(other.artists, artists)&&const DeepCollectionEquality().equals(other.playlists, playlists)&&const DeepCollectionEquality().equals(other.tracks, tracks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(albums),const DeepCollectionEquality().hash(artists),const DeepCollectionEquality().hash(playlists),const DeepCollectionEquality().hash(tracks));

@override
String toString() {
  return 'SpotubeSearchResponseObject(albums: $albums, artists: $artists, playlists: $playlists, tracks: $tracks)';
}


}

/// @nodoc
abstract mixin class $SpotubeSearchResponseObjectCopyWith<$Res>  {
  factory $SpotubeSearchResponseObjectCopyWith(SpotubeSearchResponseObject value, $Res Function(SpotubeSearchResponseObject) _then) = _$SpotubeSearchResponseObjectCopyWithImpl;
@useResult
$Res call({
 List<SpotubeSimpleAlbumObject> albums, List<SpotubeFullArtistObject> artists, List<SpotubeSimplePlaylistObject> playlists, List<SpotubeFullTrackObject> tracks
});




}
/// @nodoc
class _$SpotubeSearchResponseObjectCopyWithImpl<$Res>
    implements $SpotubeSearchResponseObjectCopyWith<$Res> {
  _$SpotubeSearchResponseObjectCopyWithImpl(this._self, this._then);

  final SpotubeSearchResponseObject _self;
  final $Res Function(SpotubeSearchResponseObject) _then;

/// Create a copy of SpotubeSearchResponseObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? albums = null,Object? artists = null,Object? playlists = null,Object? tracks = null,}) {
  return _then(_self.copyWith(
albums: null == albums ? _self.albums : albums // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimpleAlbumObject>,artists: null == artists ? _self.artists : artists // ignore: cast_nullable_to_non_nullable
as List<SpotubeFullArtistObject>,playlists: null == playlists ? _self.playlists : playlists // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimplePlaylistObject>,tracks: null == tracks ? _self.tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<SpotubeFullTrackObject>,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeSearchResponseObject].
extension SpotubeSearchResponseObjectPatterns on SpotubeSearchResponseObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeSearchResponseObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeSearchResponseObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeSearchResponseObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeSearchResponseObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeSearchResponseObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeSearchResponseObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SpotubeSimpleAlbumObject> albums,  List<SpotubeFullArtistObject> artists,  List<SpotubeSimplePlaylistObject> playlists,  List<SpotubeFullTrackObject> tracks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeSearchResponseObject() when $default != null:
return $default(_that.albums,_that.artists,_that.playlists,_that.tracks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SpotubeSimpleAlbumObject> albums,  List<SpotubeFullArtistObject> artists,  List<SpotubeSimplePlaylistObject> playlists,  List<SpotubeFullTrackObject> tracks)  $default,) {final _that = this;
switch (_that) {
case _SpotubeSearchResponseObject():
return $default(_that.albums,_that.artists,_that.playlists,_that.tracks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SpotubeSimpleAlbumObject> albums,  List<SpotubeFullArtistObject> artists,  List<SpotubeSimplePlaylistObject> playlists,  List<SpotubeFullTrackObject> tracks)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeSearchResponseObject() when $default != null:
return $default(_that.albums,_that.artists,_that.playlists,_that.tracks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeSearchResponseObject implements SpotubeSearchResponseObject {
   _SpotubeSearchResponseObject({required final  List<SpotubeSimpleAlbumObject> albums, required final  List<SpotubeFullArtistObject> artists, required final  List<SpotubeSimplePlaylistObject> playlists, required final  List<SpotubeFullTrackObject> tracks}): _albums = albums,_artists = artists,_playlists = playlists,_tracks = tracks;
  factory _SpotubeSearchResponseObject.fromJson(Map<String, dynamic> json) => _$SpotubeSearchResponseObjectFromJson(json);

 final  List<SpotubeSimpleAlbumObject> _albums;
@override List<SpotubeSimpleAlbumObject> get albums {
  if (_albums is EqualUnmodifiableListView) return _albums;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_albums);
}

 final  List<SpotubeFullArtistObject> _artists;
@override List<SpotubeFullArtistObject> get artists {
  if (_artists is EqualUnmodifiableListView) return _artists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artists);
}

 final  List<SpotubeSimplePlaylistObject> _playlists;
@override List<SpotubeSimplePlaylistObject> get playlists {
  if (_playlists is EqualUnmodifiableListView) return _playlists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playlists);
}

 final  List<SpotubeFullTrackObject> _tracks;
@override List<SpotubeFullTrackObject> get tracks {
  if (_tracks is EqualUnmodifiableListView) return _tracks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tracks);
}


/// Create a copy of SpotubeSearchResponseObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeSearchResponseObjectCopyWith<_SpotubeSearchResponseObject> get copyWith => __$SpotubeSearchResponseObjectCopyWithImpl<_SpotubeSearchResponseObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeSearchResponseObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeSearchResponseObject&&const DeepCollectionEquality().equals(other._albums, _albums)&&const DeepCollectionEquality().equals(other._artists, _artists)&&const DeepCollectionEquality().equals(other._playlists, _playlists)&&const DeepCollectionEquality().equals(other._tracks, _tracks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_albums),const DeepCollectionEquality().hash(_artists),const DeepCollectionEquality().hash(_playlists),const DeepCollectionEquality().hash(_tracks));

@override
String toString() {
  return 'SpotubeSearchResponseObject(albums: $albums, artists: $artists, playlists: $playlists, tracks: $tracks)';
}


}

/// @nodoc
abstract mixin class _$SpotubeSearchResponseObjectCopyWith<$Res> implements $SpotubeSearchResponseObjectCopyWith<$Res> {
  factory _$SpotubeSearchResponseObjectCopyWith(_SpotubeSearchResponseObject value, $Res Function(_SpotubeSearchResponseObject) _then) = __$SpotubeSearchResponseObjectCopyWithImpl;
@override @useResult
$Res call({
 List<SpotubeSimpleAlbumObject> albums, List<SpotubeFullArtistObject> artists, List<SpotubeSimplePlaylistObject> playlists, List<SpotubeFullTrackObject> tracks
});




}
/// @nodoc
class __$SpotubeSearchResponseObjectCopyWithImpl<$Res>
    implements _$SpotubeSearchResponseObjectCopyWith<$Res> {
  __$SpotubeSearchResponseObjectCopyWithImpl(this._self, this._then);

  final _SpotubeSearchResponseObject _self;
  final $Res Function(_SpotubeSearchResponseObject) _then;

/// Create a copy of SpotubeSearchResponseObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? albums = null,Object? artists = null,Object? playlists = null,Object? tracks = null,}) {
  return _then(_SpotubeSearchResponseObject(
albums: null == albums ? _self._albums : albums // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimpleAlbumObject>,artists: null == artists ? _self._artists : artists // ignore: cast_nullable_to_non_nullable
as List<SpotubeFullArtistObject>,playlists: null == playlists ? _self._playlists : playlists // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimplePlaylistObject>,tracks: null == tracks ? _self._tracks : tracks // ignore: cast_nullable_to_non_nullable
as List<SpotubeFullTrackObject>,
  ));
}


}

SpotubeTrackObject _$SpotubeTrackObjectFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'local':
          return SpotubeLocalTrackObject.fromJson(
            json
          );
                case 'full':
          return SpotubeFullTrackObject.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'SpotubeTrackObject',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$SpotubeTrackObject {

 String get id; String get name; String get externalUri; List<SpotubeSimpleArtistObject> get artists; SpotubeSimpleAlbumObject get album; int get durationMs;
/// Create a copy of SpotubeTrackObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeTrackObjectCopyWith<SpotubeTrackObject> get copyWith => _$SpotubeTrackObjectCopyWithImpl<SpotubeTrackObject>(this as SpotubeTrackObject, _$identity);

  /// Serializes this SpotubeTrackObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeTrackObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&const DeepCollectionEquality().equals(other.artists, artists)&&(identical(other.album, album) || other.album == album)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,externalUri,const DeepCollectionEquality().hash(artists),album,durationMs);

@override
String toString() {
  return 'SpotubeTrackObject(id: $id, name: $name, externalUri: $externalUri, artists: $artists, album: $album, durationMs: $durationMs)';
}


}

/// @nodoc
abstract mixin class $SpotubeTrackObjectCopyWith<$Res>  {
  factory $SpotubeTrackObjectCopyWith(SpotubeTrackObject value, $Res Function(SpotubeTrackObject) _then) = _$SpotubeTrackObjectCopyWithImpl;
@useResult
$Res call({
 String id, String name, String externalUri, List<SpotubeSimpleArtistObject> artists, SpotubeSimpleAlbumObject album, int durationMs
});


$SpotubeSimpleAlbumObjectCopyWith<$Res> get album;

}
/// @nodoc
class _$SpotubeTrackObjectCopyWithImpl<$Res>
    implements $SpotubeTrackObjectCopyWith<$Res> {
  _$SpotubeTrackObjectCopyWithImpl(this._self, this._then);

  final SpotubeTrackObject _self;
  final $Res Function(SpotubeTrackObject) _then;

/// Create a copy of SpotubeTrackObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? externalUri = null,Object? artists = null,Object? album = null,Object? durationMs = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,artists: null == artists ? _self.artists : artists // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimpleArtistObject>,album: null == album ? _self.album : album // ignore: cast_nullable_to_non_nullable
as SpotubeSimpleAlbumObject,durationMs: null == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of SpotubeTrackObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotubeSimpleAlbumObjectCopyWith<$Res> get album {
  
  return $SpotubeSimpleAlbumObjectCopyWith<$Res>(_self.album, (value) {
    return _then(_self.copyWith(album: value));
  });
}
}


/// Adds pattern-matching-related methods to [SpotubeTrackObject].
extension SpotubeTrackObjectPatterns on SpotubeTrackObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SpotubeLocalTrackObject value)?  local,TResult Function( SpotubeFullTrackObject value)?  full,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SpotubeLocalTrackObject() when local != null:
return local(_that);case SpotubeFullTrackObject() when full != null:
return full(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SpotubeLocalTrackObject value)  local,required TResult Function( SpotubeFullTrackObject value)  full,}){
final _that = this;
switch (_that) {
case SpotubeLocalTrackObject():
return local(_that);case SpotubeFullTrackObject():
return full(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SpotubeLocalTrackObject value)?  local,TResult? Function( SpotubeFullTrackObject value)?  full,}){
final _that = this;
switch (_that) {
case SpotubeLocalTrackObject() when local != null:
return local(_that);case SpotubeFullTrackObject() when full != null:
return full(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String name,  String externalUri,  List<SpotubeSimpleArtistObject> artists,  SpotubeSimpleAlbumObject album,  int durationMs,  String path)?  local,TResult Function( String id,  String name,  String externalUri,  List<SpotubeSimpleArtistObject> artists,  SpotubeSimpleAlbumObject album,  int durationMs,  String isrc,  bool explicit)?  full,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SpotubeLocalTrackObject() when local != null:
return local(_that.id,_that.name,_that.externalUri,_that.artists,_that.album,_that.durationMs,_that.path);case SpotubeFullTrackObject() when full != null:
return full(_that.id,_that.name,_that.externalUri,_that.artists,_that.album,_that.durationMs,_that.isrc,_that.explicit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String name,  String externalUri,  List<SpotubeSimpleArtistObject> artists,  SpotubeSimpleAlbumObject album,  int durationMs,  String path)  local,required TResult Function( String id,  String name,  String externalUri,  List<SpotubeSimpleArtistObject> artists,  SpotubeSimpleAlbumObject album,  int durationMs,  String isrc,  bool explicit)  full,}) {final _that = this;
switch (_that) {
case SpotubeLocalTrackObject():
return local(_that.id,_that.name,_that.externalUri,_that.artists,_that.album,_that.durationMs,_that.path);case SpotubeFullTrackObject():
return full(_that.id,_that.name,_that.externalUri,_that.artists,_that.album,_that.durationMs,_that.isrc,_that.explicit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String name,  String externalUri,  List<SpotubeSimpleArtistObject> artists,  SpotubeSimpleAlbumObject album,  int durationMs,  String path)?  local,TResult? Function( String id,  String name,  String externalUri,  List<SpotubeSimpleArtistObject> artists,  SpotubeSimpleAlbumObject album,  int durationMs,  String isrc,  bool explicit)?  full,}) {final _that = this;
switch (_that) {
case SpotubeLocalTrackObject() when local != null:
return local(_that.id,_that.name,_that.externalUri,_that.artists,_that.album,_that.durationMs,_that.path);case SpotubeFullTrackObject() when full != null:
return full(_that.id,_that.name,_that.externalUri,_that.artists,_that.album,_that.durationMs,_that.isrc,_that.explicit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class SpotubeLocalTrackObject implements SpotubeTrackObject {
   SpotubeLocalTrackObject({required this.id, required this.name, required this.externalUri, final  List<SpotubeSimpleArtistObject> artists = const [], required this.album, required this.durationMs, required this.path, final  String? $type}): _artists = artists,$type = $type ?? 'local';
  factory SpotubeLocalTrackObject.fromJson(Map<String, dynamic> json) => _$SpotubeLocalTrackObjectFromJson(json);

@override final  String id;
@override final  String name;
@override final  String externalUri;
 final  List<SpotubeSimpleArtistObject> _artists;
@override@JsonKey() List<SpotubeSimpleArtistObject> get artists {
  if (_artists is EqualUnmodifiableListView) return _artists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artists);
}

@override final  SpotubeSimpleAlbumObject album;
@override final  int durationMs;
 final  String path;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SpotubeTrackObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeLocalTrackObjectCopyWith<SpotubeLocalTrackObject> get copyWith => _$SpotubeLocalTrackObjectCopyWithImpl<SpotubeLocalTrackObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeLocalTrackObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeLocalTrackObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&const DeepCollectionEquality().equals(other._artists, _artists)&&(identical(other.album, album) || other.album == album)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,externalUri,const DeepCollectionEquality().hash(_artists),album,durationMs,path);

@override
String toString() {
  return 'SpotubeTrackObject.local(id: $id, name: $name, externalUri: $externalUri, artists: $artists, album: $album, durationMs: $durationMs, path: $path)';
}


}

/// @nodoc
abstract mixin class $SpotubeLocalTrackObjectCopyWith<$Res> implements $SpotubeTrackObjectCopyWith<$Res> {
  factory $SpotubeLocalTrackObjectCopyWith(SpotubeLocalTrackObject value, $Res Function(SpotubeLocalTrackObject) _then) = _$SpotubeLocalTrackObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String externalUri, List<SpotubeSimpleArtistObject> artists, SpotubeSimpleAlbumObject album, int durationMs, String path
});


@override $SpotubeSimpleAlbumObjectCopyWith<$Res> get album;

}
/// @nodoc
class _$SpotubeLocalTrackObjectCopyWithImpl<$Res>
    implements $SpotubeLocalTrackObjectCopyWith<$Res> {
  _$SpotubeLocalTrackObjectCopyWithImpl(this._self, this._then);

  final SpotubeLocalTrackObject _self;
  final $Res Function(SpotubeLocalTrackObject) _then;

/// Create a copy of SpotubeTrackObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? externalUri = null,Object? artists = null,Object? album = null,Object? durationMs = null,Object? path = null,}) {
  return _then(SpotubeLocalTrackObject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,artists: null == artists ? _self._artists : artists // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimpleArtistObject>,album: null == album ? _self.album : album // ignore: cast_nullable_to_non_nullable
as SpotubeSimpleAlbumObject,durationMs: null == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SpotubeTrackObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotubeSimpleAlbumObjectCopyWith<$Res> get album {
  
  return $SpotubeSimpleAlbumObjectCopyWith<$Res>(_self.album, (value) {
    return _then(_self.copyWith(album: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class SpotubeFullTrackObject implements SpotubeTrackObject {
   SpotubeFullTrackObject({required this.id, required this.name, required this.externalUri, final  List<SpotubeSimpleArtistObject> artists = const [], required this.album, required this.durationMs, required this.isrc, required this.explicit, final  String? $type}): _artists = artists,$type = $type ?? 'full';
  factory SpotubeFullTrackObject.fromJson(Map<String, dynamic> json) => _$SpotubeFullTrackObjectFromJson(json);

@override final  String id;
@override final  String name;
@override final  String externalUri;
 final  List<SpotubeSimpleArtistObject> _artists;
@override@JsonKey() List<SpotubeSimpleArtistObject> get artists {
  if (_artists is EqualUnmodifiableListView) return _artists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_artists);
}

@override final  SpotubeSimpleAlbumObject album;
@override final  int durationMs;
 final  String isrc;
 final  bool explicit;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SpotubeTrackObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeFullTrackObjectCopyWith<SpotubeFullTrackObject> get copyWith => _$SpotubeFullTrackObjectCopyWithImpl<SpotubeFullTrackObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeFullTrackObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeFullTrackObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri)&&const DeepCollectionEquality().equals(other._artists, _artists)&&(identical(other.album, album) || other.album == album)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.isrc, isrc) || other.isrc == isrc)&&(identical(other.explicit, explicit) || other.explicit == explicit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,externalUri,const DeepCollectionEquality().hash(_artists),album,durationMs,isrc,explicit);

@override
String toString() {
  return 'SpotubeTrackObject.full(id: $id, name: $name, externalUri: $externalUri, artists: $artists, album: $album, durationMs: $durationMs, isrc: $isrc, explicit: $explicit)';
}


}

/// @nodoc
abstract mixin class $SpotubeFullTrackObjectCopyWith<$Res> implements $SpotubeTrackObjectCopyWith<$Res> {
  factory $SpotubeFullTrackObjectCopyWith(SpotubeFullTrackObject value, $Res Function(SpotubeFullTrackObject) _then) = _$SpotubeFullTrackObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String externalUri, List<SpotubeSimpleArtistObject> artists, SpotubeSimpleAlbumObject album, int durationMs, String isrc, bool explicit
});


@override $SpotubeSimpleAlbumObjectCopyWith<$Res> get album;

}
/// @nodoc
class _$SpotubeFullTrackObjectCopyWithImpl<$Res>
    implements $SpotubeFullTrackObjectCopyWith<$Res> {
  _$SpotubeFullTrackObjectCopyWithImpl(this._self, this._then);

  final SpotubeFullTrackObject _self;
  final $Res Function(SpotubeFullTrackObject) _then;

/// Create a copy of SpotubeTrackObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? externalUri = null,Object? artists = null,Object? album = null,Object? durationMs = null,Object? isrc = null,Object? explicit = null,}) {
  return _then(SpotubeFullTrackObject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,artists: null == artists ? _self._artists : artists // ignore: cast_nullable_to_non_nullable
as List<SpotubeSimpleArtistObject>,album: null == album ? _self.album : album // ignore: cast_nullable_to_non_nullable
as SpotubeSimpleAlbumObject,durationMs: null == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int,isrc: null == isrc ? _self.isrc : isrc // ignore: cast_nullable_to_non_nullable
as String,explicit: null == explicit ? _self.explicit : explicit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SpotubeTrackObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpotubeSimpleAlbumObjectCopyWith<$Res> get album {
  
  return $SpotubeSimpleAlbumObjectCopyWith<$Res>(_self.album, (value) {
    return _then(_self.copyWith(album: value));
  });
}
}


/// @nodoc
mixin _$SpotubeUserObject {

 String get id; String get name; List<SpotubeImageObject> get images; String get externalUri;
/// Create a copy of SpotubeUserObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpotubeUserObjectCopyWith<SpotubeUserObject> get copyWith => _$SpotubeUserObjectCopyWithImpl<SpotubeUserObject>(this as SpotubeUserObject, _$identity);

  /// Serializes this SpotubeUserObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpotubeUserObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(images),externalUri);

@override
String toString() {
  return 'SpotubeUserObject(id: $id, name: $name, images: $images, externalUri: $externalUri)';
}


}

/// @nodoc
abstract mixin class $SpotubeUserObjectCopyWith<$Res>  {
  factory $SpotubeUserObjectCopyWith(SpotubeUserObject value, $Res Function(SpotubeUserObject) _then) = _$SpotubeUserObjectCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<SpotubeImageObject> images, String externalUri
});




}
/// @nodoc
class _$SpotubeUserObjectCopyWithImpl<$Res>
    implements $SpotubeUserObjectCopyWith<$Res> {
  _$SpotubeUserObjectCopyWithImpl(this._self, this._then);

  final SpotubeUserObject _self;
  final $Res Function(SpotubeUserObject) _then;

/// Create a copy of SpotubeUserObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? images = null,Object? externalUri = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SpotubeUserObject].
extension SpotubeUserObjectPatterns on SpotubeUserObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpotubeUserObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpotubeUserObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpotubeUserObject value)  $default,){
final _that = this;
switch (_that) {
case _SpotubeUserObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpotubeUserObject value)?  $default,){
final _that = this;
switch (_that) {
case _SpotubeUserObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<SpotubeImageObject> images,  String externalUri)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpotubeUserObject() when $default != null:
return $default(_that.id,_that.name,_that.images,_that.externalUri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<SpotubeImageObject> images,  String externalUri)  $default,) {final _that = this;
switch (_that) {
case _SpotubeUserObject():
return $default(_that.id,_that.name,_that.images,_that.externalUri);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<SpotubeImageObject> images,  String externalUri)?  $default,) {final _that = this;
switch (_that) {
case _SpotubeUserObject() when $default != null:
return $default(_that.id,_that.name,_that.images,_that.externalUri);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpotubeUserObject implements SpotubeUserObject {
   _SpotubeUserObject({required this.id, required this.name, final  List<SpotubeImageObject> images = const [], required this.externalUri}): _images = images;
  factory _SpotubeUserObject.fromJson(Map<String, dynamic> json) => _$SpotubeUserObjectFromJson(json);

@override final  String id;
@override final  String name;
 final  List<SpotubeImageObject> _images;
@override@JsonKey() List<SpotubeImageObject> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String externalUri;

/// Create a copy of SpotubeUserObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpotubeUserObjectCopyWith<_SpotubeUserObject> get copyWith => __$SpotubeUserObjectCopyWithImpl<_SpotubeUserObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpotubeUserObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpotubeUserObject&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.externalUri, externalUri) || other.externalUri == externalUri));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_images),externalUri);

@override
String toString() {
  return 'SpotubeUserObject(id: $id, name: $name, images: $images, externalUri: $externalUri)';
}


}

/// @nodoc
abstract mixin class _$SpotubeUserObjectCopyWith<$Res> implements $SpotubeUserObjectCopyWith<$Res> {
  factory _$SpotubeUserObjectCopyWith(_SpotubeUserObject value, $Res Function(_SpotubeUserObject) _then) = __$SpotubeUserObjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<SpotubeImageObject> images, String externalUri
});




}
/// @nodoc
class __$SpotubeUserObjectCopyWithImpl<$Res>
    implements _$SpotubeUserObjectCopyWith<$Res> {
  __$SpotubeUserObjectCopyWithImpl(this._self, this._then);

  final _SpotubeUserObject _self;
  final $Res Function(_SpotubeUserObject) _then;

/// Create a copy of SpotubeUserObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? images = null,Object? externalUri = null,}) {
  return _then(_SpotubeUserObject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<SpotubeImageObject>,externalUri: null == externalUri ? _self.externalUri : externalUri // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PluginConfiguration {

 String get name; String get description; String get version; String get author; String get entryPoint; String get pluginApiVersion; List<PluginApis> get apis; List<PluginAbilities> get abilities; String? get repository;
/// Create a copy of PluginConfiguration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PluginConfigurationCopyWith<PluginConfiguration> get copyWith => _$PluginConfigurationCopyWithImpl<PluginConfiguration>(this as PluginConfiguration, _$identity);

  /// Serializes this PluginConfiguration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PluginConfiguration&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version)&&(identical(other.author, author) || other.author == author)&&(identical(other.entryPoint, entryPoint) || other.entryPoint == entryPoint)&&(identical(other.pluginApiVersion, pluginApiVersion) || other.pluginApiVersion == pluginApiVersion)&&const DeepCollectionEquality().equals(other.apis, apis)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&(identical(other.repository, repository) || other.repository == repository));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,version,author,entryPoint,pluginApiVersion,const DeepCollectionEquality().hash(apis),const DeepCollectionEquality().hash(abilities),repository);

@override
String toString() {
  return 'PluginConfiguration(name: $name, description: $description, version: $version, author: $author, entryPoint: $entryPoint, pluginApiVersion: $pluginApiVersion, apis: $apis, abilities: $abilities, repository: $repository)';
}


}

/// @nodoc
abstract mixin class $PluginConfigurationCopyWith<$Res>  {
  factory $PluginConfigurationCopyWith(PluginConfiguration value, $Res Function(PluginConfiguration) _then) = _$PluginConfigurationCopyWithImpl;
@useResult
$Res call({
 String name, String description, String version, String author, String entryPoint, String pluginApiVersion, List<PluginApis> apis, List<PluginAbilities> abilities, String? repository
});




}
/// @nodoc
class _$PluginConfigurationCopyWithImpl<$Res>
    implements $PluginConfigurationCopyWith<$Res> {
  _$PluginConfigurationCopyWithImpl(this._self, this._then);

  final PluginConfiguration _self;
  final $Res Function(PluginConfiguration) _then;

/// Create a copy of PluginConfiguration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? version = null,Object? author = null,Object? entryPoint = null,Object? pluginApiVersion = null,Object? apis = null,Object? abilities = null,Object? repository = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,entryPoint: null == entryPoint ? _self.entryPoint : entryPoint // ignore: cast_nullable_to_non_nullable
as String,pluginApiVersion: null == pluginApiVersion ? _self.pluginApiVersion : pluginApiVersion // ignore: cast_nullable_to_non_nullable
as String,apis: null == apis ? _self.apis : apis // ignore: cast_nullable_to_non_nullable
as List<PluginApis>,abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PluginAbilities>,repository: freezed == repository ? _self.repository : repository // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PluginConfiguration].
extension PluginConfigurationPatterns on PluginConfiguration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PluginConfiguration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PluginConfiguration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PluginConfiguration value)  $default,){
final _that = this;
switch (_that) {
case _PluginConfiguration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PluginConfiguration value)?  $default,){
final _that = this;
switch (_that) {
case _PluginConfiguration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description,  String version,  String author,  String entryPoint,  String pluginApiVersion,  List<PluginApis> apis,  List<PluginAbilities> abilities,  String? repository)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PluginConfiguration() when $default != null:
return $default(_that.name,_that.description,_that.version,_that.author,_that.entryPoint,_that.pluginApiVersion,_that.apis,_that.abilities,_that.repository);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description,  String version,  String author,  String entryPoint,  String pluginApiVersion,  List<PluginApis> apis,  List<PluginAbilities> abilities,  String? repository)  $default,) {final _that = this;
switch (_that) {
case _PluginConfiguration():
return $default(_that.name,_that.description,_that.version,_that.author,_that.entryPoint,_that.pluginApiVersion,_that.apis,_that.abilities,_that.repository);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description,  String version,  String author,  String entryPoint,  String pluginApiVersion,  List<PluginApis> apis,  List<PluginAbilities> abilities,  String? repository)?  $default,) {final _that = this;
switch (_that) {
case _PluginConfiguration() when $default != null:
return $default(_that.name,_that.description,_that.version,_that.author,_that.entryPoint,_that.pluginApiVersion,_that.apis,_that.abilities,_that.repository);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PluginConfiguration extends PluginConfiguration {
   _PluginConfiguration({required this.name, required this.description, required this.version, required this.author, required this.entryPoint, required this.pluginApiVersion, final  List<PluginApis> apis = const [], final  List<PluginAbilities> abilities = const [], this.repository}): _apis = apis,_abilities = abilities,super._();
  factory _PluginConfiguration.fromJson(Map<String, dynamic> json) => _$PluginConfigurationFromJson(json);

@override final  String name;
@override final  String description;
@override final  String version;
@override final  String author;
@override final  String entryPoint;
@override final  String pluginApiVersion;
 final  List<PluginApis> _apis;
@override@JsonKey() List<PluginApis> get apis {
  if (_apis is EqualUnmodifiableListView) return _apis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_apis);
}

 final  List<PluginAbilities> _abilities;
@override@JsonKey() List<PluginAbilities> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

@override final  String? repository;

/// Create a copy of PluginConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PluginConfigurationCopyWith<_PluginConfiguration> get copyWith => __$PluginConfigurationCopyWithImpl<_PluginConfiguration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PluginConfigurationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PluginConfiguration&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version)&&(identical(other.author, author) || other.author == author)&&(identical(other.entryPoint, entryPoint) || other.entryPoint == entryPoint)&&(identical(other.pluginApiVersion, pluginApiVersion) || other.pluginApiVersion == pluginApiVersion)&&const DeepCollectionEquality().equals(other._apis, _apis)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&(identical(other.repository, repository) || other.repository == repository));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,version,author,entryPoint,pluginApiVersion,const DeepCollectionEquality().hash(_apis),const DeepCollectionEquality().hash(_abilities),repository);

@override
String toString() {
  return 'PluginConfiguration(name: $name, description: $description, version: $version, author: $author, entryPoint: $entryPoint, pluginApiVersion: $pluginApiVersion, apis: $apis, abilities: $abilities, repository: $repository)';
}


}

/// @nodoc
abstract mixin class _$PluginConfigurationCopyWith<$Res> implements $PluginConfigurationCopyWith<$Res> {
  factory _$PluginConfigurationCopyWith(_PluginConfiguration value, $Res Function(_PluginConfiguration) _then) = __$PluginConfigurationCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String version, String author, String entryPoint, String pluginApiVersion, List<PluginApis> apis, List<PluginAbilities> abilities, String? repository
});




}
/// @nodoc
class __$PluginConfigurationCopyWithImpl<$Res>
    implements _$PluginConfigurationCopyWith<$Res> {
  __$PluginConfigurationCopyWithImpl(this._self, this._then);

  final _PluginConfiguration _self;
  final $Res Function(_PluginConfiguration) _then;

/// Create a copy of PluginConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? version = null,Object? author = null,Object? entryPoint = null,Object? pluginApiVersion = null,Object? apis = null,Object? abilities = null,Object? repository = freezed,}) {
  return _then(_PluginConfiguration(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,entryPoint: null == entryPoint ? _self.entryPoint : entryPoint // ignore: cast_nullable_to_non_nullable
as String,pluginApiVersion: null == pluginApiVersion ? _self.pluginApiVersion : pluginApiVersion // ignore: cast_nullable_to_non_nullable
as String,apis: null == apis ? _self._apis : apis // ignore: cast_nullable_to_non_nullable
as List<PluginApis>,abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PluginAbilities>,repository: freezed == repository ? _self.repository : repository // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PluginUpdateAvailable {

 String get downloadUrl; String get version; String? get changelog;
/// Create a copy of PluginUpdateAvailable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PluginUpdateAvailableCopyWith<PluginUpdateAvailable> get copyWith => _$PluginUpdateAvailableCopyWithImpl<PluginUpdateAvailable>(this as PluginUpdateAvailable, _$identity);

  /// Serializes this PluginUpdateAvailable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PluginUpdateAvailable&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.version, version) || other.version == version)&&(identical(other.changelog, changelog) || other.changelog == changelog));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,downloadUrl,version,changelog);

@override
String toString() {
  return 'PluginUpdateAvailable(downloadUrl: $downloadUrl, version: $version, changelog: $changelog)';
}


}

/// @nodoc
abstract mixin class $PluginUpdateAvailableCopyWith<$Res>  {
  factory $PluginUpdateAvailableCopyWith(PluginUpdateAvailable value, $Res Function(PluginUpdateAvailable) _then) = _$PluginUpdateAvailableCopyWithImpl;
@useResult
$Res call({
 String downloadUrl, String version, String? changelog
});




}
/// @nodoc
class _$PluginUpdateAvailableCopyWithImpl<$Res>
    implements $PluginUpdateAvailableCopyWith<$Res> {
  _$PluginUpdateAvailableCopyWithImpl(this._self, this._then);

  final PluginUpdateAvailable _self;
  final $Res Function(PluginUpdateAvailable) _then;

/// Create a copy of PluginUpdateAvailable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? downloadUrl = null,Object? version = null,Object? changelog = freezed,}) {
  return _then(_self.copyWith(
downloadUrl: null == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,changelog: freezed == changelog ? _self.changelog : changelog // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PluginUpdateAvailable].
extension PluginUpdateAvailablePatterns on PluginUpdateAvailable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PluginUpdateAvailable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PluginUpdateAvailable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PluginUpdateAvailable value)  $default,){
final _that = this;
switch (_that) {
case _PluginUpdateAvailable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PluginUpdateAvailable value)?  $default,){
final _that = this;
switch (_that) {
case _PluginUpdateAvailable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String downloadUrl,  String version,  String? changelog)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PluginUpdateAvailable() when $default != null:
return $default(_that.downloadUrl,_that.version,_that.changelog);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String downloadUrl,  String version,  String? changelog)  $default,) {final _that = this;
switch (_that) {
case _PluginUpdateAvailable():
return $default(_that.downloadUrl,_that.version,_that.changelog);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String downloadUrl,  String version,  String? changelog)?  $default,) {final _that = this;
switch (_that) {
case _PluginUpdateAvailable() when $default != null:
return $default(_that.downloadUrl,_that.version,_that.changelog);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PluginUpdateAvailable implements PluginUpdateAvailable {
   _PluginUpdateAvailable({required this.downloadUrl, required this.version, this.changelog});
  factory _PluginUpdateAvailable.fromJson(Map<String, dynamic> json) => _$PluginUpdateAvailableFromJson(json);

@override final  String downloadUrl;
@override final  String version;
@override final  String? changelog;

/// Create a copy of PluginUpdateAvailable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PluginUpdateAvailableCopyWith<_PluginUpdateAvailable> get copyWith => __$PluginUpdateAvailableCopyWithImpl<_PluginUpdateAvailable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PluginUpdateAvailableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PluginUpdateAvailable&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.version, version) || other.version == version)&&(identical(other.changelog, changelog) || other.changelog == changelog));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,downloadUrl,version,changelog);

@override
String toString() {
  return 'PluginUpdateAvailable(downloadUrl: $downloadUrl, version: $version, changelog: $changelog)';
}


}

/// @nodoc
abstract mixin class _$PluginUpdateAvailableCopyWith<$Res> implements $PluginUpdateAvailableCopyWith<$Res> {
  factory _$PluginUpdateAvailableCopyWith(_PluginUpdateAvailable value, $Res Function(_PluginUpdateAvailable) _then) = __$PluginUpdateAvailableCopyWithImpl;
@override @useResult
$Res call({
 String downloadUrl, String version, String? changelog
});




}
/// @nodoc
class __$PluginUpdateAvailableCopyWithImpl<$Res>
    implements _$PluginUpdateAvailableCopyWith<$Res> {
  __$PluginUpdateAvailableCopyWithImpl(this._self, this._then);

  final _PluginUpdateAvailable _self;
  final $Res Function(_PluginUpdateAvailable) _then;

/// Create a copy of PluginUpdateAvailable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? downloadUrl = null,Object? version = null,Object? changelog = freezed,}) {
  return _then(_PluginUpdateAvailable(
downloadUrl: null == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,changelog: freezed == changelog ? _self.changelog : changelog // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MetadataPluginRepository {

 String get name; String get owner; String get description; String get repoUrl; List<String> get topics;
/// Create a copy of MetadataPluginRepository
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetadataPluginRepositoryCopyWith<MetadataPluginRepository> get copyWith => _$MetadataPluginRepositoryCopyWithImpl<MetadataPluginRepository>(this as MetadataPluginRepository, _$identity);

  /// Serializes this MetadataPluginRepository to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetadataPluginRepository&&(identical(other.name, name) || other.name == name)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.description, description) || other.description == description)&&(identical(other.repoUrl, repoUrl) || other.repoUrl == repoUrl)&&const DeepCollectionEquality().equals(other.topics, topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,owner,description,repoUrl,const DeepCollectionEquality().hash(topics));

@override
String toString() {
  return 'MetadataPluginRepository(name: $name, owner: $owner, description: $description, repoUrl: $repoUrl, topics: $topics)';
}


}

/// @nodoc
abstract mixin class $MetadataPluginRepositoryCopyWith<$Res>  {
  factory $MetadataPluginRepositoryCopyWith(MetadataPluginRepository value, $Res Function(MetadataPluginRepository) _then) = _$MetadataPluginRepositoryCopyWithImpl;
@useResult
$Res call({
 String name, String owner, String description, String repoUrl, List<String> topics
});




}
/// @nodoc
class _$MetadataPluginRepositoryCopyWithImpl<$Res>
    implements $MetadataPluginRepositoryCopyWith<$Res> {
  _$MetadataPluginRepositoryCopyWithImpl(this._self, this._then);

  final MetadataPluginRepository _self;
  final $Res Function(MetadataPluginRepository) _then;

/// Create a copy of MetadataPluginRepository
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? owner = null,Object? description = null,Object? repoUrl = null,Object? topics = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,repoUrl: null == repoUrl ? _self.repoUrl : repoUrl // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MetadataPluginRepository].
extension MetadataPluginRepositoryPatterns on MetadataPluginRepository {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetadataPluginRepository value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetadataPluginRepository() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetadataPluginRepository value)  $default,){
final _that = this;
switch (_that) {
case _MetadataPluginRepository():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetadataPluginRepository value)?  $default,){
final _that = this;
switch (_that) {
case _MetadataPluginRepository() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String owner,  String description,  String repoUrl,  List<String> topics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetadataPluginRepository() when $default != null:
return $default(_that.name,_that.owner,_that.description,_that.repoUrl,_that.topics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String owner,  String description,  String repoUrl,  List<String> topics)  $default,) {final _that = this;
switch (_that) {
case _MetadataPluginRepository():
return $default(_that.name,_that.owner,_that.description,_that.repoUrl,_that.topics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String owner,  String description,  String repoUrl,  List<String> topics)?  $default,) {final _that = this;
switch (_that) {
case _MetadataPluginRepository() when $default != null:
return $default(_that.name,_that.owner,_that.description,_that.repoUrl,_that.topics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetadataPluginRepository implements MetadataPluginRepository {
   _MetadataPluginRepository({required this.name, required this.owner, required this.description, required this.repoUrl, required final  List<String> topics}): _topics = topics;
  factory _MetadataPluginRepository.fromJson(Map<String, dynamic> json) => _$MetadataPluginRepositoryFromJson(json);

@override final  String name;
@override final  String owner;
@override final  String description;
@override final  String repoUrl;
 final  List<String> _topics;
@override List<String> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}


/// Create a copy of MetadataPluginRepository
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetadataPluginRepositoryCopyWith<_MetadataPluginRepository> get copyWith => __$MetadataPluginRepositoryCopyWithImpl<_MetadataPluginRepository>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetadataPluginRepositoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetadataPluginRepository&&(identical(other.name, name) || other.name == name)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.description, description) || other.description == description)&&(identical(other.repoUrl, repoUrl) || other.repoUrl == repoUrl)&&const DeepCollectionEquality().equals(other._topics, _topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,owner,description,repoUrl,const DeepCollectionEquality().hash(_topics));

@override
String toString() {
  return 'MetadataPluginRepository(name: $name, owner: $owner, description: $description, repoUrl: $repoUrl, topics: $topics)';
}


}

/// @nodoc
abstract mixin class _$MetadataPluginRepositoryCopyWith<$Res> implements $MetadataPluginRepositoryCopyWith<$Res> {
  factory _$MetadataPluginRepositoryCopyWith(_MetadataPluginRepository value, $Res Function(_MetadataPluginRepository) _then) = __$MetadataPluginRepositoryCopyWithImpl;
@override @useResult
$Res call({
 String name, String owner, String description, String repoUrl, List<String> topics
});




}
/// @nodoc
class __$MetadataPluginRepositoryCopyWithImpl<$Res>
    implements _$MetadataPluginRepositoryCopyWith<$Res> {
  __$MetadataPluginRepositoryCopyWithImpl(this._self, this._then);

  final _MetadataPluginRepository _self;
  final $Res Function(_MetadataPluginRepository) _then;

/// Create a copy of MetadataPluginRepository
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? owner = null,Object? description = null,Object? repoUrl = null,Object? topics = null,}) {
  return _then(_MetadataPluginRepository(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,repoUrl: null == repoUrl ? _self.repoUrl : repoUrl // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
