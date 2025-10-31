// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PersonalInfoEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalInfoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PersonalInfoEvent()';
}


}

/// @nodoc
class $PersonalInfoEventCopyWith<$Res>  {
$PersonalInfoEventCopyWith(PersonalInfoEvent _, $Res Function(PersonalInfoEvent) __);
}


/// Adds pattern-matching-related methods to [PersonalInfoEvent].
extension PersonalInfoEventPatterns on PersonalInfoEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchPersonalInfoList value)?  fetchPersonalInfoList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchPersonalInfoList() when fetchPersonalInfoList != null:
return fetchPersonalInfoList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchPersonalInfoList value)  fetchPersonalInfoList,}){
final _that = this;
switch (_that) {
case FetchPersonalInfoList():
return fetchPersonalInfoList(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchPersonalInfoList value)?  fetchPersonalInfoList,}){
final _that = this;
switch (_that) {
case FetchPersonalInfoList() when fetchPersonalInfoList != null:
return fetchPersonalInfoList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchPersonalInfoList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchPersonalInfoList() when fetchPersonalInfoList != null:
return fetchPersonalInfoList();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchPersonalInfoList,}) {final _that = this;
switch (_that) {
case FetchPersonalInfoList():
return fetchPersonalInfoList();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchPersonalInfoList,}) {final _that = this;
switch (_that) {
case FetchPersonalInfoList() when fetchPersonalInfoList != null:
return fetchPersonalInfoList();case _:
  return null;

}
}

}

/// @nodoc


class FetchPersonalInfoList implements PersonalInfoEvent {
  const FetchPersonalInfoList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchPersonalInfoList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PersonalInfoEvent.fetchPersonalInfoList()';
}


}




/// @nodoc
mixin _$PersonalInfoState {

 List<PersonalInfoEntity> get personalDetails; bool get isLoading; String get msg;
/// Create a copy of PersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalInfoStateCopyWith<PersonalInfoState> get copyWith => _$PersonalInfoStateCopyWithImpl<PersonalInfoState>(this as PersonalInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalInfoState&&const DeepCollectionEquality().equals(other.personalDetails, personalDetails)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(personalDetails),isLoading,msg);

@override
String toString() {
  return 'PersonalInfoState(personalDetails: $personalDetails, isLoading: $isLoading, msg: $msg)';
}


}

/// @nodoc
abstract mixin class $PersonalInfoStateCopyWith<$Res>  {
  factory $PersonalInfoStateCopyWith(PersonalInfoState value, $Res Function(PersonalInfoState) _then) = _$PersonalInfoStateCopyWithImpl;
@useResult
$Res call({
 List<PersonalInfoEntity> personalDetails, bool isLoading, String msg
});




}
/// @nodoc
class _$PersonalInfoStateCopyWithImpl<$Res>
    implements $PersonalInfoStateCopyWith<$Res> {
  _$PersonalInfoStateCopyWithImpl(this._self, this._then);

  final PersonalInfoState _self;
  final $Res Function(PersonalInfoState) _then;

/// Create a copy of PersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? personalDetails = null,Object? isLoading = null,Object? msg = null,}) {
  return _then(_self.copyWith(
personalDetails: null == personalDetails ? _self.personalDetails : personalDetails // ignore: cast_nullable_to_non_nullable
as List<PersonalInfoEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonalInfoState].
extension PersonalInfoStatePatterns on PersonalInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonalInfoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonalInfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonalInfoState value)  $default,){
final _that = this;
switch (_that) {
case _PersonalInfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonalInfoState value)?  $default,){
final _that = this;
switch (_that) {
case _PersonalInfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PersonalInfoEntity> personalDetails,  bool isLoading,  String msg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonalInfoState() when $default != null:
return $default(_that.personalDetails,_that.isLoading,_that.msg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PersonalInfoEntity> personalDetails,  bool isLoading,  String msg)  $default,) {final _that = this;
switch (_that) {
case _PersonalInfoState():
return $default(_that.personalDetails,_that.isLoading,_that.msg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PersonalInfoEntity> personalDetails,  bool isLoading,  String msg)?  $default,) {final _that = this;
switch (_that) {
case _PersonalInfoState() when $default != null:
return $default(_that.personalDetails,_that.isLoading,_that.msg);case _:
  return null;

}
}

}

/// @nodoc


class _PersonalInfoState implements PersonalInfoState {
  const _PersonalInfoState({final  List<PersonalInfoEntity> personalDetails = const [], this.isLoading = false, this.msg = ''}): _personalDetails = personalDetails;
  

 final  List<PersonalInfoEntity> _personalDetails;
@override@JsonKey() List<PersonalInfoEntity> get personalDetails {
  if (_personalDetails is EqualUnmodifiableListView) return _personalDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personalDetails);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String msg;

/// Create a copy of PersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonalInfoStateCopyWith<_PersonalInfoState> get copyWith => __$PersonalInfoStateCopyWithImpl<_PersonalInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonalInfoState&&const DeepCollectionEquality().equals(other._personalDetails, _personalDetails)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_personalDetails),isLoading,msg);

@override
String toString() {
  return 'PersonalInfoState(personalDetails: $personalDetails, isLoading: $isLoading, msg: $msg)';
}


}

/// @nodoc
abstract mixin class _$PersonalInfoStateCopyWith<$Res> implements $PersonalInfoStateCopyWith<$Res> {
  factory _$PersonalInfoStateCopyWith(_PersonalInfoState value, $Res Function(_PersonalInfoState) _then) = __$PersonalInfoStateCopyWithImpl;
@override @useResult
$Res call({
 List<PersonalInfoEntity> personalDetails, bool isLoading, String msg
});




}
/// @nodoc
class __$PersonalInfoStateCopyWithImpl<$Res>
    implements _$PersonalInfoStateCopyWith<$Res> {
  __$PersonalInfoStateCopyWithImpl(this._self, this._then);

  final _PersonalInfoState _self;
  final $Res Function(_PersonalInfoState) _then;

/// Create a copy of PersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? personalDetails = null,Object? isLoading = null,Object? msg = null,}) {
  return _then(_PersonalInfoState(
personalDetails: null == personalDetails ? _self._personalDetails : personalDetails // ignore: cast_nullable_to_non_nullable
as List<PersonalInfoEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
