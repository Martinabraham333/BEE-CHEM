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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchPersonalInfoList value)?  fetchPersonalInfoList,TResult Function( SearchPersonalInfoList value)?  searchPersonalInfoList,TResult Function( FetchRoleDetails value)?  fetchRoleDetails,TResult Function( RollCheckBox value)?  rollCheckBox,TResult Function( SaveDetails value)?  saveDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchPersonalInfoList() when fetchPersonalInfoList != null:
return fetchPersonalInfoList(_that);case SearchPersonalInfoList() when searchPersonalInfoList != null:
return searchPersonalInfoList(_that);case FetchRoleDetails() when fetchRoleDetails != null:
return fetchRoleDetails(_that);case RollCheckBox() when rollCheckBox != null:
return rollCheckBox(_that);case SaveDetails() when saveDetails != null:
return saveDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchPersonalInfoList value)  fetchPersonalInfoList,required TResult Function( SearchPersonalInfoList value)  searchPersonalInfoList,required TResult Function( FetchRoleDetails value)  fetchRoleDetails,required TResult Function( RollCheckBox value)  rollCheckBox,required TResult Function( SaveDetails value)  saveDetails,}){
final _that = this;
switch (_that) {
case FetchPersonalInfoList():
return fetchPersonalInfoList(_that);case SearchPersonalInfoList():
return searchPersonalInfoList(_that);case FetchRoleDetails():
return fetchRoleDetails(_that);case RollCheckBox():
return rollCheckBox(_that);case SaveDetails():
return saveDetails(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchPersonalInfoList value)?  fetchPersonalInfoList,TResult? Function( SearchPersonalInfoList value)?  searchPersonalInfoList,TResult? Function( FetchRoleDetails value)?  fetchRoleDetails,TResult? Function( RollCheckBox value)?  rollCheckBox,TResult? Function( SaveDetails value)?  saveDetails,}){
final _that = this;
switch (_that) {
case FetchPersonalInfoList() when fetchPersonalInfoList != null:
return fetchPersonalInfoList(_that);case SearchPersonalInfoList() when searchPersonalInfoList != null:
return searchPersonalInfoList(_that);case FetchRoleDetails() when fetchRoleDetails != null:
return fetchRoleDetails(_that);case RollCheckBox() when rollCheckBox != null:
return rollCheckBox(_that);case SaveDetails() when saveDetails != null:
return saveDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchPersonalInfoList,TResult Function( String query)?  searchPersonalInfoList,TResult Function()?  fetchRoleDetails,TResult Function( int index)?  rollCheckBox,TResult Function( Map<String, dynamic> saveDetails)?  saveDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchPersonalInfoList() when fetchPersonalInfoList != null:
return fetchPersonalInfoList();case SearchPersonalInfoList() when searchPersonalInfoList != null:
return searchPersonalInfoList(_that.query);case FetchRoleDetails() when fetchRoleDetails != null:
return fetchRoleDetails();case RollCheckBox() when rollCheckBox != null:
return rollCheckBox(_that.index);case SaveDetails() when saveDetails != null:
return saveDetails(_that.saveDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchPersonalInfoList,required TResult Function( String query)  searchPersonalInfoList,required TResult Function()  fetchRoleDetails,required TResult Function( int index)  rollCheckBox,required TResult Function( Map<String, dynamic> saveDetails)  saveDetails,}) {final _that = this;
switch (_that) {
case FetchPersonalInfoList():
return fetchPersonalInfoList();case SearchPersonalInfoList():
return searchPersonalInfoList(_that.query);case FetchRoleDetails():
return fetchRoleDetails();case RollCheckBox():
return rollCheckBox(_that.index);case SaveDetails():
return saveDetails(_that.saveDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchPersonalInfoList,TResult? Function( String query)?  searchPersonalInfoList,TResult? Function()?  fetchRoleDetails,TResult? Function( int index)?  rollCheckBox,TResult? Function( Map<String, dynamic> saveDetails)?  saveDetails,}) {final _that = this;
switch (_that) {
case FetchPersonalInfoList() when fetchPersonalInfoList != null:
return fetchPersonalInfoList();case SearchPersonalInfoList() when searchPersonalInfoList != null:
return searchPersonalInfoList(_that.query);case FetchRoleDetails() when fetchRoleDetails != null:
return fetchRoleDetails();case RollCheckBox() when rollCheckBox != null:
return rollCheckBox(_that.index);case SaveDetails() when saveDetails != null:
return saveDetails(_that.saveDetails);case _:
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


class SearchPersonalInfoList implements PersonalInfoEvent {
  const SearchPersonalInfoList(this.query);
  

 final  String query;

/// Create a copy of PersonalInfoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPersonalInfoListCopyWith<SearchPersonalInfoList> get copyWith => _$SearchPersonalInfoListCopyWithImpl<SearchPersonalInfoList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPersonalInfoList&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'PersonalInfoEvent.searchPersonalInfoList(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchPersonalInfoListCopyWith<$Res> implements $PersonalInfoEventCopyWith<$Res> {
  factory $SearchPersonalInfoListCopyWith(SearchPersonalInfoList value, $Res Function(SearchPersonalInfoList) _then) = _$SearchPersonalInfoListCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchPersonalInfoListCopyWithImpl<$Res>
    implements $SearchPersonalInfoListCopyWith<$Res> {
  _$SearchPersonalInfoListCopyWithImpl(this._self, this._then);

  final SearchPersonalInfoList _self;
  final $Res Function(SearchPersonalInfoList) _then;

/// Create a copy of PersonalInfoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchPersonalInfoList(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FetchRoleDetails implements PersonalInfoEvent {
  const FetchRoleDetails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchRoleDetails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PersonalInfoEvent.fetchRoleDetails()';
}


}




/// @nodoc


class RollCheckBox implements PersonalInfoEvent {
  const RollCheckBox(this.index);
  

 final  int index;

/// Create a copy of PersonalInfoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RollCheckBoxCopyWith<RollCheckBox> get copyWith => _$RollCheckBoxCopyWithImpl<RollCheckBox>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RollCheckBox&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'PersonalInfoEvent.rollCheckBox(index: $index)';
}


}

/// @nodoc
abstract mixin class $RollCheckBoxCopyWith<$Res> implements $PersonalInfoEventCopyWith<$Res> {
  factory $RollCheckBoxCopyWith(RollCheckBox value, $Res Function(RollCheckBox) _then) = _$RollCheckBoxCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$RollCheckBoxCopyWithImpl<$Res>
    implements $RollCheckBoxCopyWith<$Res> {
  _$RollCheckBoxCopyWithImpl(this._self, this._then);

  final RollCheckBox _self;
  final $Res Function(RollCheckBox) _then;

/// Create a copy of PersonalInfoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(RollCheckBox(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SaveDetails implements PersonalInfoEvent {
  const SaveDetails(final  Map<String, dynamic> saveDetails): _saveDetails = saveDetails;
  

 final  Map<String, dynamic> _saveDetails;
 Map<String, dynamic> get saveDetails {
  if (_saveDetails is EqualUnmodifiableMapView) return _saveDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_saveDetails);
}


/// Create a copy of PersonalInfoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveDetailsCopyWith<SaveDetails> get copyWith => _$SaveDetailsCopyWithImpl<SaveDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveDetails&&const DeepCollectionEquality().equals(other._saveDetails, _saveDetails));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_saveDetails));

@override
String toString() {
  return 'PersonalInfoEvent.saveDetails(saveDetails: $saveDetails)';
}


}

/// @nodoc
abstract mixin class $SaveDetailsCopyWith<$Res> implements $PersonalInfoEventCopyWith<$Res> {
  factory $SaveDetailsCopyWith(SaveDetails value, $Res Function(SaveDetails) _then) = _$SaveDetailsCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> saveDetails
});




}
/// @nodoc
class _$SaveDetailsCopyWithImpl<$Res>
    implements $SaveDetailsCopyWith<$Res> {
  _$SaveDetailsCopyWithImpl(this._self, this._then);

  final SaveDetails _self;
  final $Res Function(SaveDetails) _then;

/// Create a copy of PersonalInfoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? saveDetails = null,}) {
  return _then(SaveDetails(
null == saveDetails ? _self._saveDetails : saveDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc
mixin _$PersonalInfoState {

 List<PersonalInfoEntity> get personalDetails; List<RoleEntity> get roleDetails; bool get isLoading; List<Map<String, dynamic>> get isRoleCheck; String get msg;
/// Create a copy of PersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalInfoStateCopyWith<PersonalInfoState> get copyWith => _$PersonalInfoStateCopyWithImpl<PersonalInfoState>(this as PersonalInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalInfoState&&const DeepCollectionEquality().equals(other.personalDetails, personalDetails)&&const DeepCollectionEquality().equals(other.roleDetails, roleDetails)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.isRoleCheck, isRoleCheck)&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(personalDetails),const DeepCollectionEquality().hash(roleDetails),isLoading,const DeepCollectionEquality().hash(isRoleCheck),msg);

@override
String toString() {
  return 'PersonalInfoState(personalDetails: $personalDetails, roleDetails: $roleDetails, isLoading: $isLoading, isRoleCheck: $isRoleCheck, msg: $msg)';
}


}

/// @nodoc
abstract mixin class $PersonalInfoStateCopyWith<$Res>  {
  factory $PersonalInfoStateCopyWith(PersonalInfoState value, $Res Function(PersonalInfoState) _then) = _$PersonalInfoStateCopyWithImpl;
@useResult
$Res call({
 List<PersonalInfoEntity> personalDetails, List<RoleEntity> roleDetails, bool isLoading, List<Map<String, dynamic>> isRoleCheck, String msg
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
@pragma('vm:prefer-inline') @override $Res call({Object? personalDetails = null,Object? roleDetails = null,Object? isLoading = null,Object? isRoleCheck = null,Object? msg = null,}) {
  return _then(_self.copyWith(
personalDetails: null == personalDetails ? _self.personalDetails : personalDetails // ignore: cast_nullable_to_non_nullable
as List<PersonalInfoEntity>,roleDetails: null == roleDetails ? _self.roleDetails : roleDetails // ignore: cast_nullable_to_non_nullable
as List<RoleEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isRoleCheck: null == isRoleCheck ? _self.isRoleCheck : isRoleCheck // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PersonalInfoEntity> personalDetails,  List<RoleEntity> roleDetails,  bool isLoading,  List<Map<String, dynamic>> isRoleCheck,  String msg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonalInfoState() when $default != null:
return $default(_that.personalDetails,_that.roleDetails,_that.isLoading,_that.isRoleCheck,_that.msg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PersonalInfoEntity> personalDetails,  List<RoleEntity> roleDetails,  bool isLoading,  List<Map<String, dynamic>> isRoleCheck,  String msg)  $default,) {final _that = this;
switch (_that) {
case _PersonalInfoState():
return $default(_that.personalDetails,_that.roleDetails,_that.isLoading,_that.isRoleCheck,_that.msg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PersonalInfoEntity> personalDetails,  List<RoleEntity> roleDetails,  bool isLoading,  List<Map<String, dynamic>> isRoleCheck,  String msg)?  $default,) {final _that = this;
switch (_that) {
case _PersonalInfoState() when $default != null:
return $default(_that.personalDetails,_that.roleDetails,_that.isLoading,_that.isRoleCheck,_that.msg);case _:
  return null;

}
}

}

/// @nodoc


class _PersonalInfoState implements PersonalInfoState {
  const _PersonalInfoState({final  List<PersonalInfoEntity> personalDetails = const [], final  List<RoleEntity> roleDetails = const [], this.isLoading = false, final  List<Map<String, dynamic>> isRoleCheck = const [], this.msg = ''}): _personalDetails = personalDetails,_roleDetails = roleDetails,_isRoleCheck = isRoleCheck;
  

 final  List<PersonalInfoEntity> _personalDetails;
@override@JsonKey() List<PersonalInfoEntity> get personalDetails {
  if (_personalDetails is EqualUnmodifiableListView) return _personalDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personalDetails);
}

 final  List<RoleEntity> _roleDetails;
@override@JsonKey() List<RoleEntity> get roleDetails {
  if (_roleDetails is EqualUnmodifiableListView) return _roleDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roleDetails);
}

@override@JsonKey() final  bool isLoading;
 final  List<Map<String, dynamic>> _isRoleCheck;
@override@JsonKey() List<Map<String, dynamic>> get isRoleCheck {
  if (_isRoleCheck is EqualUnmodifiableListView) return _isRoleCheck;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_isRoleCheck);
}

@override@JsonKey() final  String msg;

/// Create a copy of PersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonalInfoStateCopyWith<_PersonalInfoState> get copyWith => __$PersonalInfoStateCopyWithImpl<_PersonalInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonalInfoState&&const DeepCollectionEquality().equals(other._personalDetails, _personalDetails)&&const DeepCollectionEquality().equals(other._roleDetails, _roleDetails)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._isRoleCheck, _isRoleCheck)&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_personalDetails),const DeepCollectionEquality().hash(_roleDetails),isLoading,const DeepCollectionEquality().hash(_isRoleCheck),msg);

@override
String toString() {
  return 'PersonalInfoState(personalDetails: $personalDetails, roleDetails: $roleDetails, isLoading: $isLoading, isRoleCheck: $isRoleCheck, msg: $msg)';
}


}

/// @nodoc
abstract mixin class _$PersonalInfoStateCopyWith<$Res> implements $PersonalInfoStateCopyWith<$Res> {
  factory _$PersonalInfoStateCopyWith(_PersonalInfoState value, $Res Function(_PersonalInfoState) _then) = __$PersonalInfoStateCopyWithImpl;
@override @useResult
$Res call({
 List<PersonalInfoEntity> personalDetails, List<RoleEntity> roleDetails, bool isLoading, List<Map<String, dynamic>> isRoleCheck, String msg
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
@override @pragma('vm:prefer-inline') $Res call({Object? personalDetails = null,Object? roleDetails = null,Object? isLoading = null,Object? isRoleCheck = null,Object? msg = null,}) {
  return _then(_PersonalInfoState(
personalDetails: null == personalDetails ? _self._personalDetails : personalDetails // ignore: cast_nullable_to_non_nullable
as List<PersonalInfoEntity>,roleDetails: null == roleDetails ? _self._roleDetails : roleDetails // ignore: cast_nullable_to_non_nullable
as List<RoleEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isRoleCheck: null == isRoleCheck ? _self._isRoleCheck : isRoleCheck // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
