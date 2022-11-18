// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentEvent {
  String get sname => throw _privateConstructorUsedError;
  String get phonNumber => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  String get division => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String sname, String phonNumber, String age, String division)
        getStudentDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String sname, String phonNumber, String age, String division)?
        getStudentDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String sname, String phonNumber, String age, String division)?
        getStudentDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStudentDetails value) getStudentDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetStudentDetails value)? getStudentDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStudentDetails value)? getStudentDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentEventCopyWith<StudentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEventCopyWith<$Res> {
  factory $StudentEventCopyWith(
          StudentEvent value, $Res Function(StudentEvent) then) =
      _$StudentEventCopyWithImpl<$Res, StudentEvent>;
  @useResult
  $Res call({String sname, String phonNumber, String age, String division});
}

/// @nodoc
class _$StudentEventCopyWithImpl<$Res, $Val extends StudentEvent>
    implements $StudentEventCopyWith<$Res> {
  _$StudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sname = null,
    Object? phonNumber = null,
    Object? age = null,
    Object? division = null,
  }) {
    return _then(_value.copyWith(
      sname: null == sname
          ? _value.sname
          : sname // ignore: cast_nullable_to_non_nullable
              as String,
      phonNumber: null == phonNumber
          ? _value.phonNumber
          : phonNumber // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStudentDetailsCopyWith<$Res>
    implements $StudentEventCopyWith<$Res> {
  factory _$$GetStudentDetailsCopyWith(
          _$GetStudentDetails value, $Res Function(_$GetStudentDetails) then) =
      __$$GetStudentDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sname, String phonNumber, String age, String division});
}

/// @nodoc
class __$$GetStudentDetailsCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$GetStudentDetails>
    implements _$$GetStudentDetailsCopyWith<$Res> {
  __$$GetStudentDetailsCopyWithImpl(
      _$GetStudentDetails _value, $Res Function(_$GetStudentDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sname = null,
    Object? phonNumber = null,
    Object? age = null,
    Object? division = null,
  }) {
    return _then(_$GetStudentDetails(
      sname: null == sname
          ? _value.sname
          : sname // ignore: cast_nullable_to_non_nullable
              as String,
      phonNumber: null == phonNumber
          ? _value.phonNumber
          : phonNumber // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetStudentDetails implements GetStudentDetails {
  const _$GetStudentDetails(
      {required this.sname,
      required this.phonNumber,
      required this.age,
      required this.division});

  @override
  final String sname;
  @override
  final String phonNumber;
  @override
  final String age;
  @override
  final String division;

  @override
  String toString() {
    return 'StudentEvent.getStudentDetails(sname: $sname, phonNumber: $phonNumber, age: $age, division: $division)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentDetails &&
            (identical(other.sname, sname) || other.sname == sname) &&
            (identical(other.phonNumber, phonNumber) ||
                other.phonNumber == phonNumber) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.division, division) ||
                other.division == division));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sname, phonNumber, age, division);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentDetailsCopyWith<_$GetStudentDetails> get copyWith =>
      __$$GetStudentDetailsCopyWithImpl<_$GetStudentDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String sname, String phonNumber, String age, String division)
        getStudentDetails,
  }) {
    return getStudentDetails(sname, phonNumber, age, division);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String sname, String phonNumber, String age, String division)?
        getStudentDetails,
  }) {
    return getStudentDetails?.call(sname, phonNumber, age, division);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String sname, String phonNumber, String age, String division)?
        getStudentDetails,
    required TResult orElse(),
  }) {
    if (getStudentDetails != null) {
      return getStudentDetails(sname, phonNumber, age, division);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetStudentDetails value) getStudentDetails,
  }) {
    return getStudentDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetStudentDetails value)? getStudentDetails,
  }) {
    return getStudentDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetStudentDetails value)? getStudentDetails,
    required TResult orElse(),
  }) {
    if (getStudentDetails != null) {
      return getStudentDetails(this);
    }
    return orElse();
  }
}

abstract class GetStudentDetails implements StudentEvent {
  const factory GetStudentDetails(
      {required final String sname,
      required final String phonNumber,
      required final String age,
      required final String division}) = _$GetStudentDetails;

  @override
  String get sname;
  @override
  String get phonNumber;
  @override
  String get age;
  @override
  String get division;
  @override
  @JsonKey(ignore: true)
  _$$GetStudentDetailsCopyWith<_$GetStudentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentState {
  String get sname => throw _privateConstructorUsedError;
  String get phonNumber => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  String get division => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentStateCopyWith<StudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStateCopyWith<$Res> {
  factory $StudentStateCopyWith(
          StudentState value, $Res Function(StudentState) then) =
      _$StudentStateCopyWithImpl<$Res, StudentState>;
  @useResult
  $Res call({String sname, String phonNumber, String age, String division});
}

/// @nodoc
class _$StudentStateCopyWithImpl<$Res, $Val extends StudentState>
    implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sname = null,
    Object? phonNumber = null,
    Object? age = null,
    Object? division = null,
  }) {
    return _then(_value.copyWith(
      sname: null == sname
          ? _value.sname
          : sname // ignore: cast_nullable_to_non_nullable
              as String,
      phonNumber: null == phonNumber
          ? _value.phonNumber
          : phonNumber // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $StudentStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sname, String phonNumber, String age, String division});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sname = null,
    Object? phonNumber = null,
    Object? age = null,
    Object? division = null,
  }) {
    return _then(_$_Initial(
      sname: null == sname
          ? _value.sname
          : sname // ignore: cast_nullable_to_non_nullable
              as String,
      phonNumber: null == phonNumber
          ? _value.phonNumber
          : phonNumber // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      division: null == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.sname = '',
      this.phonNumber = '',
      this.age = '',
      this.division = ''});

  @override
  @JsonKey()
  final String sname;
  @override
  @JsonKey()
  final String phonNumber;
  @override
  @JsonKey()
  final String age;
  @override
  @JsonKey()
  final String division;

  @override
  String toString() {
    return 'StudentState(sname: $sname, phonNumber: $phonNumber, age: $age, division: $division)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.sname, sname) || other.sname == sname) &&
            (identical(other.phonNumber, phonNumber) ||
                other.phonNumber == phonNumber) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.division, division) ||
                other.division == division));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sname, phonNumber, age, division);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements StudentState {
  const factory _Initial(
      {final String sname,
      final String phonNumber,
      final String age,
      final String division}) = _$_Initial;

  @override
  String get sname;
  @override
  String get phonNumber;
  @override
  String get age;
  @override
  String get division;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
