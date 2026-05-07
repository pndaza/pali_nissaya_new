// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nsybook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NsyBook {

 String get id; String get name; int get gotoPage;
/// Create a copy of NsyBook
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NsyBookCopyWith<NsyBook> get copyWith => _$NsyBookCopyWithImpl<NsyBook>(this as NsyBook, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NsyBook&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.gotoPage, gotoPage) || other.gotoPage == gotoPage));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,gotoPage);

@override
String toString() {
  return 'NsyBook(id: $id, name: $name, gotoPage: $gotoPage)';
}


}

/// @nodoc
abstract mixin class $NsyBookCopyWith<$Res>  {
  factory $NsyBookCopyWith(NsyBook value, $Res Function(NsyBook) _then) = _$NsyBookCopyWithImpl;
@useResult
$Res call({
 String id, String name, int gotoPage
});




}
/// @nodoc
class _$NsyBookCopyWithImpl<$Res>
    implements $NsyBookCopyWith<$Res> {
  _$NsyBookCopyWithImpl(this._self, this._then);

  final NsyBook _self;
  final $Res Function(NsyBook) _then;

/// Create a copy of NsyBook
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? gotoPage = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gotoPage: null == gotoPage ? _self.gotoPage : gotoPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NsyBook].
extension NsyBookPatterns on NsyBook {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NsyBook value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NsyBook() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NsyBook value)  $default,){
final _that = this;
switch (_that) {
case _NsyBook():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NsyBook value)?  $default,){
final _that = this;
switch (_that) {
case _NsyBook() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int gotoPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NsyBook() when $default != null:
return $default(_that.id,_that.name,_that.gotoPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int gotoPage)  $default,) {final _that = this;
switch (_that) {
case _NsyBook():
return $default(_that.id,_that.name,_that.gotoPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int gotoPage)?  $default,) {final _that = this;
switch (_that) {
case _NsyBook() when $default != null:
return $default(_that.id,_that.name,_that.gotoPage);case _:
  return null;

}
}

}

/// @nodoc


class _NsyBook implements NsyBook {
   _NsyBook({required this.id, required this.name, required this.gotoPage});
  

@override final  String id;
@override final  String name;
@override final  int gotoPage;

/// Create a copy of NsyBook
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NsyBookCopyWith<_NsyBook> get copyWith => __$NsyBookCopyWithImpl<_NsyBook>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NsyBook&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.gotoPage, gotoPage) || other.gotoPage == gotoPage));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,gotoPage);

@override
String toString() {
  return 'NsyBook(id: $id, name: $name, gotoPage: $gotoPage)';
}


}

/// @nodoc
abstract mixin class _$NsyBookCopyWith<$Res> implements $NsyBookCopyWith<$Res> {
  factory _$NsyBookCopyWith(_NsyBook value, $Res Function(_NsyBook) _then) = __$NsyBookCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int gotoPage
});




}
/// @nodoc
class __$NsyBookCopyWithImpl<$Res>
    implements _$NsyBookCopyWith<$Res> {
  __$NsyBookCopyWithImpl(this._self, this._then);

  final _NsyBook _self;
  final $Res Function(_NsyBook) _then;

/// Create a copy of NsyBook
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? gotoPage = null,}) {
  return _then(_NsyBook(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gotoPage: null == gotoPage ? _self.gotoPage : gotoPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
