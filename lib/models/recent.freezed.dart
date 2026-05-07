// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Recent {

 String get nsyId; String get nsyName; int get nsyPageNumber; String get paliName; int get paliPageNumber; DateTime get dateTime;
/// Create a copy of Recent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentCopyWith<Recent> get copyWith => _$RecentCopyWithImpl<Recent>(this as Recent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recent&&(identical(other.nsyId, nsyId) || other.nsyId == nsyId)&&(identical(other.nsyName, nsyName) || other.nsyName == nsyName)&&(identical(other.nsyPageNumber, nsyPageNumber) || other.nsyPageNumber == nsyPageNumber)&&(identical(other.paliName, paliName) || other.paliName == paliName)&&(identical(other.paliPageNumber, paliPageNumber) || other.paliPageNumber == paliPageNumber)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}


@override
int get hashCode => Object.hash(runtimeType,nsyId,nsyName,nsyPageNumber,paliName,paliPageNumber,dateTime);

@override
String toString() {
  return 'Recent(nsyId: $nsyId, nsyName: $nsyName, nsyPageNumber: $nsyPageNumber, paliName: $paliName, paliPageNumber: $paliPageNumber, dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class $RecentCopyWith<$Res>  {
  factory $RecentCopyWith(Recent value, $Res Function(Recent) _then) = _$RecentCopyWithImpl;
@useResult
$Res call({
 String nsyId, String nsyName, int nsyPageNumber, String paliName, int paliPageNumber, DateTime dateTime
});




}
/// @nodoc
class _$RecentCopyWithImpl<$Res>
    implements $RecentCopyWith<$Res> {
  _$RecentCopyWithImpl(this._self, this._then);

  final Recent _self;
  final $Res Function(Recent) _then;

/// Create a copy of Recent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nsyId = null,Object? nsyName = null,Object? nsyPageNumber = null,Object? paliName = null,Object? paliPageNumber = null,Object? dateTime = null,}) {
  return _then(_self.copyWith(
nsyId: null == nsyId ? _self.nsyId : nsyId // ignore: cast_nullable_to_non_nullable
as String,nsyName: null == nsyName ? _self.nsyName : nsyName // ignore: cast_nullable_to_non_nullable
as String,nsyPageNumber: null == nsyPageNumber ? _self.nsyPageNumber : nsyPageNumber // ignore: cast_nullable_to_non_nullable
as int,paliName: null == paliName ? _self.paliName : paliName // ignore: cast_nullable_to_non_nullable
as String,paliPageNumber: null == paliPageNumber ? _self.paliPageNumber : paliPageNumber // ignore: cast_nullable_to_non_nullable
as int,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Recent].
extension RecentPatterns on Recent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recent value)  $default,){
final _that = this;
switch (_that) {
case _Recent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recent value)?  $default,){
final _that = this;
switch (_that) {
case _Recent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nsyId,  String nsyName,  int nsyPageNumber,  String paliName,  int paliPageNumber,  DateTime dateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recent() when $default != null:
return $default(_that.nsyId,_that.nsyName,_that.nsyPageNumber,_that.paliName,_that.paliPageNumber,_that.dateTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nsyId,  String nsyName,  int nsyPageNumber,  String paliName,  int paliPageNumber,  DateTime dateTime)  $default,) {final _that = this;
switch (_that) {
case _Recent():
return $default(_that.nsyId,_that.nsyName,_that.nsyPageNumber,_that.paliName,_that.paliPageNumber,_that.dateTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nsyId,  String nsyName,  int nsyPageNumber,  String paliName,  int paliPageNumber,  DateTime dateTime)?  $default,) {final _that = this;
switch (_that) {
case _Recent() when $default != null:
return $default(_that.nsyId,_that.nsyName,_that.nsyPageNumber,_that.paliName,_that.paliPageNumber,_that.dateTime);case _:
  return null;

}
}

}

/// @nodoc


class _Recent implements Recent {
  const _Recent({required this.nsyId, required this.nsyName, required this.nsyPageNumber, required this.paliName, required this.paliPageNumber, required this.dateTime});
  

@override final  String nsyId;
@override final  String nsyName;
@override final  int nsyPageNumber;
@override final  String paliName;
@override final  int paliPageNumber;
@override final  DateTime dateTime;

/// Create a copy of Recent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentCopyWith<_Recent> get copyWith => __$RecentCopyWithImpl<_Recent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recent&&(identical(other.nsyId, nsyId) || other.nsyId == nsyId)&&(identical(other.nsyName, nsyName) || other.nsyName == nsyName)&&(identical(other.nsyPageNumber, nsyPageNumber) || other.nsyPageNumber == nsyPageNumber)&&(identical(other.paliName, paliName) || other.paliName == paliName)&&(identical(other.paliPageNumber, paliPageNumber) || other.paliPageNumber == paliPageNumber)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}


@override
int get hashCode => Object.hash(runtimeType,nsyId,nsyName,nsyPageNumber,paliName,paliPageNumber,dateTime);

@override
String toString() {
  return 'Recent(nsyId: $nsyId, nsyName: $nsyName, nsyPageNumber: $nsyPageNumber, paliName: $paliName, paliPageNumber: $paliPageNumber, dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class _$RecentCopyWith<$Res> implements $RecentCopyWith<$Res> {
  factory _$RecentCopyWith(_Recent value, $Res Function(_Recent) _then) = __$RecentCopyWithImpl;
@override @useResult
$Res call({
 String nsyId, String nsyName, int nsyPageNumber, String paliName, int paliPageNumber, DateTime dateTime
});




}
/// @nodoc
class __$RecentCopyWithImpl<$Res>
    implements _$RecentCopyWith<$Res> {
  __$RecentCopyWithImpl(this._self, this._then);

  final _Recent _self;
  final $Res Function(_Recent) _then;

/// Create a copy of Recent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nsyId = null,Object? nsyName = null,Object? nsyPageNumber = null,Object? paliName = null,Object? paliPageNumber = null,Object? dateTime = null,}) {
  return _then(_Recent(
nsyId: null == nsyId ? _self.nsyId : nsyId // ignore: cast_nullable_to_non_nullable
as String,nsyName: null == nsyName ? _self.nsyName : nsyName // ignore: cast_nullable_to_non_nullable
as String,nsyPageNumber: null == nsyPageNumber ? _self.nsyPageNumber : nsyPageNumber // ignore: cast_nullable_to_non_nullable
as int,paliName: null == paliName ? _self.paliName : paliName // ignore: cast_nullable_to_non_nullable
as String,paliPageNumber: null == paliPageNumber ? _self.paliPageNumber : paliPageNumber // ignore: cast_nullable_to_non_nullable
as int,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
