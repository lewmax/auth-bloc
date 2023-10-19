// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyState {
  String get code => throw _privateConstructorUsedError;
  int get secsLeft => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, int secsLeft) initial,
    required TResult Function(String code, int secsLeft) inProgress,
    required TResult Function(String code, int secsLeft, String message) error,
    required TResult Function(String code, int secsLeft) successVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, int secsLeft)? initial,
    TResult? Function(String code, int secsLeft)? inProgress,
    TResult? Function(String code, int secsLeft, String message)? error,
    TResult? Function(String code, int secsLeft)? successVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, int secsLeft)? initial,
    TResult Function(String code, int secsLeft)? inProgress,
    TResult Function(String code, int secsLeft, String message)? error,
    TResult Function(String code, int secsLeft)? successVerifyCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessVerifyCode value) successVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessVerifyCode value)? successVerifyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessVerifyCode value)? successVerifyCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyStateCopyWith<VerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyStateCopyWith<$Res> {
  factory $VerifyStateCopyWith(
          VerifyState value, $Res Function(VerifyState) then) =
      _$VerifyStateCopyWithImpl<$Res, VerifyState>;
  @useResult
  $Res call({String code, int secsLeft});
}

/// @nodoc
class _$VerifyStateCopyWithImpl<$Res, $Val extends VerifyState>
    implements $VerifyStateCopyWith<$Res> {
  _$VerifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? secsLeft = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      secsLeft: null == secsLeft
          ? _value.secsLeft
          : secsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $VerifyStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, int secsLeft});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$VerifyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? secsLeft = null,
  }) {
    return _then(_$InitialImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      secsLeft: null == secsLeft
          ? _value.secsLeft
          : secsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.code, required this.secsLeft});

  @override
  final String code;
  @override
  final int secsLeft;

  @override
  String toString() {
    return 'VerifyState.initial(code: $code, secsLeft: $secsLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.secsLeft, secsLeft) ||
                other.secsLeft == secsLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, secsLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, int secsLeft) initial,
    required TResult Function(String code, int secsLeft) inProgress,
    required TResult Function(String code, int secsLeft, String message) error,
    required TResult Function(String code, int secsLeft) successVerifyCode,
  }) {
    return initial(code, secsLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, int secsLeft)? initial,
    TResult? Function(String code, int secsLeft)? inProgress,
    TResult? Function(String code, int secsLeft, String message)? error,
    TResult? Function(String code, int secsLeft)? successVerifyCode,
  }) {
    return initial?.call(code, secsLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, int secsLeft)? initial,
    TResult Function(String code, int secsLeft)? inProgress,
    TResult Function(String code, int secsLeft, String message)? error,
    TResult Function(String code, int secsLeft)? successVerifyCode,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(code, secsLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessVerifyCode value) successVerifyCode,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessVerifyCode value)? successVerifyCode,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessVerifyCode value)? successVerifyCode,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VerifyState {
  const factory _Initial(
      {required final String code,
      required final int secsLeft}) = _$InitialImpl;

  @override
  String get code;
  @override
  int get secsLeft;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res>
    implements $VerifyStateCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, int secsLeft});
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$VerifyStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? secsLeft = null,
  }) {
    return _then(_$InProgressImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      secsLeft: null == secsLeft
          ? _value.secsLeft
          : secsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl({required this.code, required this.secsLeft});

  @override
  final String code;
  @override
  final int secsLeft;

  @override
  String toString() {
    return 'VerifyState.inProgress(code: $code, secsLeft: $secsLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.secsLeft, secsLeft) ||
                other.secsLeft == secsLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, secsLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      __$$InProgressImplCopyWithImpl<_$InProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, int secsLeft) initial,
    required TResult Function(String code, int secsLeft) inProgress,
    required TResult Function(String code, int secsLeft, String message) error,
    required TResult Function(String code, int secsLeft) successVerifyCode,
  }) {
    return inProgress(code, secsLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, int secsLeft)? initial,
    TResult? Function(String code, int secsLeft)? inProgress,
    TResult? Function(String code, int secsLeft, String message)? error,
    TResult? Function(String code, int secsLeft)? successVerifyCode,
  }) {
    return inProgress?.call(code, secsLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, int secsLeft)? initial,
    TResult Function(String code, int secsLeft)? inProgress,
    TResult Function(String code, int secsLeft, String message)? error,
    TResult Function(String code, int secsLeft)? successVerifyCode,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(code, secsLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessVerifyCode value) successVerifyCode,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessVerifyCode value)? successVerifyCode,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessVerifyCode value)? successVerifyCode,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements VerifyState {
  const factory _InProgress(
      {required final String code,
      required final int secsLeft}) = _$InProgressImpl;

  @override
  String get code;
  @override
  int get secsLeft;
  @override
  @JsonKey(ignore: true)
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $VerifyStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, int secsLeft, String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$VerifyStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? secsLeft = null,
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      secsLeft: null == secsLeft
          ? _value.secsLeft
          : secsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
      {required this.code, required this.secsLeft, required this.message});

  @override
  final String code;
  @override
  final int secsLeft;
  @override
  final String message;

  @override
  String toString() {
    return 'VerifyState.error(code: $code, secsLeft: $secsLeft, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.secsLeft, secsLeft) ||
                other.secsLeft == secsLeft) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, secsLeft, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, int secsLeft) initial,
    required TResult Function(String code, int secsLeft) inProgress,
    required TResult Function(String code, int secsLeft, String message) error,
    required TResult Function(String code, int secsLeft) successVerifyCode,
  }) {
    return error(code, secsLeft, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, int secsLeft)? initial,
    TResult? Function(String code, int secsLeft)? inProgress,
    TResult? Function(String code, int secsLeft, String message)? error,
    TResult? Function(String code, int secsLeft)? successVerifyCode,
  }) {
    return error?.call(code, secsLeft, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, int secsLeft)? initial,
    TResult Function(String code, int secsLeft)? inProgress,
    TResult Function(String code, int secsLeft, String message)? error,
    TResult Function(String code, int secsLeft)? successVerifyCode,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(code, secsLeft, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessVerifyCode value) successVerifyCode,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessVerifyCode value)? successVerifyCode,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessVerifyCode value)? successVerifyCode,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements VerifyState {
  const factory _Error(
      {required final String code,
      required final int secsLeft,
      required final String message}) = _$ErrorImpl;

  @override
  String get code;
  @override
  int get secsLeft;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessVerifyCodeImplCopyWith<$Res>
    implements $VerifyStateCopyWith<$Res> {
  factory _$$SuccessVerifyCodeImplCopyWith(_$SuccessVerifyCodeImpl value,
          $Res Function(_$SuccessVerifyCodeImpl) then) =
      __$$SuccessVerifyCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, int secsLeft});
}

/// @nodoc
class __$$SuccessVerifyCodeImplCopyWithImpl<$Res>
    extends _$VerifyStateCopyWithImpl<$Res, _$SuccessVerifyCodeImpl>
    implements _$$SuccessVerifyCodeImplCopyWith<$Res> {
  __$$SuccessVerifyCodeImplCopyWithImpl(_$SuccessVerifyCodeImpl _value,
      $Res Function(_$SuccessVerifyCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? secsLeft = null,
  }) {
    return _then(_$SuccessVerifyCodeImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      secsLeft: null == secsLeft
          ? _value.secsLeft
          : secsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SuccessVerifyCodeImpl implements _SuccessVerifyCode {
  const _$SuccessVerifyCodeImpl({required this.code, required this.secsLeft});

  @override
  final String code;
  @override
  final int secsLeft;

  @override
  String toString() {
    return 'VerifyState.successVerifyCode(code: $code, secsLeft: $secsLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessVerifyCodeImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.secsLeft, secsLeft) ||
                other.secsLeft == secsLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, secsLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessVerifyCodeImplCopyWith<_$SuccessVerifyCodeImpl> get copyWith =>
      __$$SuccessVerifyCodeImplCopyWithImpl<_$SuccessVerifyCodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, int secsLeft) initial,
    required TResult Function(String code, int secsLeft) inProgress,
    required TResult Function(String code, int secsLeft, String message) error,
    required TResult Function(String code, int secsLeft) successVerifyCode,
  }) {
    return successVerifyCode(code, secsLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, int secsLeft)? initial,
    TResult? Function(String code, int secsLeft)? inProgress,
    TResult? Function(String code, int secsLeft, String message)? error,
    TResult? Function(String code, int secsLeft)? successVerifyCode,
  }) {
    return successVerifyCode?.call(code, secsLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, int secsLeft)? initial,
    TResult Function(String code, int secsLeft)? inProgress,
    TResult Function(String code, int secsLeft, String message)? error,
    TResult Function(String code, int secsLeft)? successVerifyCode,
    required TResult orElse(),
  }) {
    if (successVerifyCode != null) {
      return successVerifyCode(code, secsLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessVerifyCode value) successVerifyCode,
  }) {
    return successVerifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessVerifyCode value)? successVerifyCode,
  }) {
    return successVerifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessVerifyCode value)? successVerifyCode,
    required TResult orElse(),
  }) {
    if (successVerifyCode != null) {
      return successVerifyCode(this);
    }
    return orElse();
  }
}

abstract class _SuccessVerifyCode implements VerifyState {
  const factory _SuccessVerifyCode(
      {required final String code,
      required final int secsLeft}) = _$SuccessVerifyCodeImpl;

  @override
  String get code;
  @override
  int get secsLeft;
  @override
  @JsonKey(ignore: true)
  _$$SuccessVerifyCodeImplCopyWith<_$SuccessVerifyCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) updateCode,
    required TResult Function() count2Minutes,
    required TResult Function() updateMinutes,
    required TResult Function(String email) resendCode,
    required TResult Function(String email, String password, String code)
        verifyCodeWhenSignUp,
    required TResult Function(String email, String code)
        verifyCodeAfterForgetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? updateCode,
    TResult? Function()? count2Minutes,
    TResult? Function()? updateMinutes,
    TResult? Function(String email)? resendCode,
    TResult? Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult? Function(String email, String code)? verifyCodeAfterForgetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? updateCode,
    TResult Function()? count2Minutes,
    TResult Function()? updateMinutes,
    TResult Function(String email)? resendCode,
    TResult Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult Function(String email, String code)? verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCode value) updateCode,
    required TResult Function(_Count2Minutes value) count2Minutes,
    required TResult Function(_UpdateMinutes value) updateMinutes,
    required TResult Function(_ResendCode value) resendCode,
    required TResult Function(_VerifyCodeWhenSignUp value) verifyCodeWhenSignUp,
    required TResult Function(_VerifyCodeAfterForgetPassword value)
        verifyCodeAfterForgetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCode value)? updateCode,
    TResult? Function(_Count2Minutes value)? count2Minutes,
    TResult? Function(_UpdateMinutes value)? updateMinutes,
    TResult? Function(_ResendCode value)? resendCode,
    TResult? Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult? Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCode value)? updateCode,
    TResult Function(_Count2Minutes value)? count2Minutes,
    TResult Function(_UpdateMinutes value)? updateMinutes,
    TResult Function(_ResendCode value)? resendCode,
    TResult Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEventCopyWith<$Res> {
  factory $VerifyEventCopyWith(
          VerifyEvent value, $Res Function(VerifyEvent) then) =
      _$VerifyEventCopyWithImpl<$Res, VerifyEvent>;
}

/// @nodoc
class _$VerifyEventCopyWithImpl<$Res, $Val extends VerifyEvent>
    implements $VerifyEventCopyWith<$Res> {
  _$VerifyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateCodeImplCopyWith<$Res> {
  factory _$$UpdateCodeImplCopyWith(
          _$UpdateCodeImpl value, $Res Function(_$UpdateCodeImpl) then) =
      __$$UpdateCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$UpdateCodeImplCopyWithImpl<$Res>
    extends _$VerifyEventCopyWithImpl<$Res, _$UpdateCodeImpl>
    implements _$$UpdateCodeImplCopyWith<$Res> {
  __$$UpdateCodeImplCopyWithImpl(
      _$UpdateCodeImpl _value, $Res Function(_$UpdateCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$UpdateCodeImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCodeImpl implements _UpdateCode {
  const _$UpdateCodeImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'VerifyEvent.updateCode(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCodeImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCodeImplCopyWith<_$UpdateCodeImpl> get copyWith =>
      __$$UpdateCodeImplCopyWithImpl<_$UpdateCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) updateCode,
    required TResult Function() count2Minutes,
    required TResult Function() updateMinutes,
    required TResult Function(String email) resendCode,
    required TResult Function(String email, String password, String code)
        verifyCodeWhenSignUp,
    required TResult Function(String email, String code)
        verifyCodeAfterForgetPassword,
  }) {
    return updateCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? updateCode,
    TResult? Function()? count2Minutes,
    TResult? Function()? updateMinutes,
    TResult? Function(String email)? resendCode,
    TResult? Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult? Function(String email, String code)? verifyCodeAfterForgetPassword,
  }) {
    return updateCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? updateCode,
    TResult Function()? count2Minutes,
    TResult Function()? updateMinutes,
    TResult Function(String email)? resendCode,
    TResult Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult Function(String email, String code)? verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (updateCode != null) {
      return updateCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCode value) updateCode,
    required TResult Function(_Count2Minutes value) count2Minutes,
    required TResult Function(_UpdateMinutes value) updateMinutes,
    required TResult Function(_ResendCode value) resendCode,
    required TResult Function(_VerifyCodeWhenSignUp value) verifyCodeWhenSignUp,
    required TResult Function(_VerifyCodeAfterForgetPassword value)
        verifyCodeAfterForgetPassword,
  }) {
    return updateCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCode value)? updateCode,
    TResult? Function(_Count2Minutes value)? count2Minutes,
    TResult? Function(_UpdateMinutes value)? updateMinutes,
    TResult? Function(_ResendCode value)? resendCode,
    TResult? Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult? Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
  }) {
    return updateCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCode value)? updateCode,
    TResult Function(_Count2Minutes value)? count2Minutes,
    TResult Function(_UpdateMinutes value)? updateMinutes,
    TResult Function(_ResendCode value)? resendCode,
    TResult Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (updateCode != null) {
      return updateCode(this);
    }
    return orElse();
  }
}

abstract class _UpdateCode implements VerifyEvent {
  const factory _UpdateCode({required final String code}) = _$UpdateCodeImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$UpdateCodeImplCopyWith<_$UpdateCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Count2MinutesImplCopyWith<$Res> {
  factory _$$Count2MinutesImplCopyWith(
          _$Count2MinutesImpl value, $Res Function(_$Count2MinutesImpl) then) =
      __$$Count2MinutesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Count2MinutesImplCopyWithImpl<$Res>
    extends _$VerifyEventCopyWithImpl<$Res, _$Count2MinutesImpl>
    implements _$$Count2MinutesImplCopyWith<$Res> {
  __$$Count2MinutesImplCopyWithImpl(
      _$Count2MinutesImpl _value, $Res Function(_$Count2MinutesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Count2MinutesImpl implements _Count2Minutes {
  const _$Count2MinutesImpl();

  @override
  String toString() {
    return 'VerifyEvent.count2Minutes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Count2MinutesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) updateCode,
    required TResult Function() count2Minutes,
    required TResult Function() updateMinutes,
    required TResult Function(String email) resendCode,
    required TResult Function(String email, String password, String code)
        verifyCodeWhenSignUp,
    required TResult Function(String email, String code)
        verifyCodeAfterForgetPassword,
  }) {
    return count2Minutes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? updateCode,
    TResult? Function()? count2Minutes,
    TResult? Function()? updateMinutes,
    TResult? Function(String email)? resendCode,
    TResult? Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult? Function(String email, String code)? verifyCodeAfterForgetPassword,
  }) {
    return count2Minutes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? updateCode,
    TResult Function()? count2Minutes,
    TResult Function()? updateMinutes,
    TResult Function(String email)? resendCode,
    TResult Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult Function(String email, String code)? verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (count2Minutes != null) {
      return count2Minutes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCode value) updateCode,
    required TResult Function(_Count2Minutes value) count2Minutes,
    required TResult Function(_UpdateMinutes value) updateMinutes,
    required TResult Function(_ResendCode value) resendCode,
    required TResult Function(_VerifyCodeWhenSignUp value) verifyCodeWhenSignUp,
    required TResult Function(_VerifyCodeAfterForgetPassword value)
        verifyCodeAfterForgetPassword,
  }) {
    return count2Minutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCode value)? updateCode,
    TResult? Function(_Count2Minutes value)? count2Minutes,
    TResult? Function(_UpdateMinutes value)? updateMinutes,
    TResult? Function(_ResendCode value)? resendCode,
    TResult? Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult? Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
  }) {
    return count2Minutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCode value)? updateCode,
    TResult Function(_Count2Minutes value)? count2Minutes,
    TResult Function(_UpdateMinutes value)? updateMinutes,
    TResult Function(_ResendCode value)? resendCode,
    TResult Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (count2Minutes != null) {
      return count2Minutes(this);
    }
    return orElse();
  }
}

abstract class _Count2Minutes implements VerifyEvent {
  const factory _Count2Minutes() = _$Count2MinutesImpl;
}

/// @nodoc
abstract class _$$UpdateMinutesImplCopyWith<$Res> {
  factory _$$UpdateMinutesImplCopyWith(
          _$UpdateMinutesImpl value, $Res Function(_$UpdateMinutesImpl) then) =
      __$$UpdateMinutesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateMinutesImplCopyWithImpl<$Res>
    extends _$VerifyEventCopyWithImpl<$Res, _$UpdateMinutesImpl>
    implements _$$UpdateMinutesImplCopyWith<$Res> {
  __$$UpdateMinutesImplCopyWithImpl(
      _$UpdateMinutesImpl _value, $Res Function(_$UpdateMinutesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateMinutesImpl implements _UpdateMinutes {
  const _$UpdateMinutesImpl();

  @override
  String toString() {
    return 'VerifyEvent.updateMinutes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateMinutesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) updateCode,
    required TResult Function() count2Minutes,
    required TResult Function() updateMinutes,
    required TResult Function(String email) resendCode,
    required TResult Function(String email, String password, String code)
        verifyCodeWhenSignUp,
    required TResult Function(String email, String code)
        verifyCodeAfterForgetPassword,
  }) {
    return updateMinutes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? updateCode,
    TResult? Function()? count2Minutes,
    TResult? Function()? updateMinutes,
    TResult? Function(String email)? resendCode,
    TResult? Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult? Function(String email, String code)? verifyCodeAfterForgetPassword,
  }) {
    return updateMinutes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? updateCode,
    TResult Function()? count2Minutes,
    TResult Function()? updateMinutes,
    TResult Function(String email)? resendCode,
    TResult Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult Function(String email, String code)? verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (updateMinutes != null) {
      return updateMinutes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCode value) updateCode,
    required TResult Function(_Count2Minutes value) count2Minutes,
    required TResult Function(_UpdateMinutes value) updateMinutes,
    required TResult Function(_ResendCode value) resendCode,
    required TResult Function(_VerifyCodeWhenSignUp value) verifyCodeWhenSignUp,
    required TResult Function(_VerifyCodeAfterForgetPassword value)
        verifyCodeAfterForgetPassword,
  }) {
    return updateMinutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCode value)? updateCode,
    TResult? Function(_Count2Minutes value)? count2Minutes,
    TResult? Function(_UpdateMinutes value)? updateMinutes,
    TResult? Function(_ResendCode value)? resendCode,
    TResult? Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult? Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
  }) {
    return updateMinutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCode value)? updateCode,
    TResult Function(_Count2Minutes value)? count2Minutes,
    TResult Function(_UpdateMinutes value)? updateMinutes,
    TResult Function(_ResendCode value)? resendCode,
    TResult Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (updateMinutes != null) {
      return updateMinutes(this);
    }
    return orElse();
  }
}

abstract class _UpdateMinutes implements VerifyEvent {
  const factory _UpdateMinutes() = _$UpdateMinutesImpl;
}

/// @nodoc
abstract class _$$ResendCodeImplCopyWith<$Res> {
  factory _$$ResendCodeImplCopyWith(
          _$ResendCodeImpl value, $Res Function(_$ResendCodeImpl) then) =
      __$$ResendCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResendCodeImplCopyWithImpl<$Res>
    extends _$VerifyEventCopyWithImpl<$Res, _$ResendCodeImpl>
    implements _$$ResendCodeImplCopyWith<$Res> {
  __$$ResendCodeImplCopyWithImpl(
      _$ResendCodeImpl _value, $Res Function(_$ResendCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResendCodeImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResendCodeImpl implements _ResendCode {
  const _$ResendCodeImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'VerifyEvent.resendCode(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendCodeImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendCodeImplCopyWith<_$ResendCodeImpl> get copyWith =>
      __$$ResendCodeImplCopyWithImpl<_$ResendCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) updateCode,
    required TResult Function() count2Minutes,
    required TResult Function() updateMinutes,
    required TResult Function(String email) resendCode,
    required TResult Function(String email, String password, String code)
        verifyCodeWhenSignUp,
    required TResult Function(String email, String code)
        verifyCodeAfterForgetPassword,
  }) {
    return resendCode(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? updateCode,
    TResult? Function()? count2Minutes,
    TResult? Function()? updateMinutes,
    TResult? Function(String email)? resendCode,
    TResult? Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult? Function(String email, String code)? verifyCodeAfterForgetPassword,
  }) {
    return resendCode?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? updateCode,
    TResult Function()? count2Minutes,
    TResult Function()? updateMinutes,
    TResult Function(String email)? resendCode,
    TResult Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult Function(String email, String code)? verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (resendCode != null) {
      return resendCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCode value) updateCode,
    required TResult Function(_Count2Minutes value) count2Minutes,
    required TResult Function(_UpdateMinutes value) updateMinutes,
    required TResult Function(_ResendCode value) resendCode,
    required TResult Function(_VerifyCodeWhenSignUp value) verifyCodeWhenSignUp,
    required TResult Function(_VerifyCodeAfterForgetPassword value)
        verifyCodeAfterForgetPassword,
  }) {
    return resendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCode value)? updateCode,
    TResult? Function(_Count2Minutes value)? count2Minutes,
    TResult? Function(_UpdateMinutes value)? updateMinutes,
    TResult? Function(_ResendCode value)? resendCode,
    TResult? Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult? Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
  }) {
    return resendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCode value)? updateCode,
    TResult Function(_Count2Minutes value)? count2Minutes,
    TResult Function(_UpdateMinutes value)? updateMinutes,
    TResult Function(_ResendCode value)? resendCode,
    TResult Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (resendCode != null) {
      return resendCode(this);
    }
    return orElse();
  }
}

abstract class _ResendCode implements VerifyEvent {
  const factory _ResendCode({required final String email}) = _$ResendCodeImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ResendCodeImplCopyWith<_$ResendCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyCodeWhenSignUpImplCopyWith<$Res> {
  factory _$$VerifyCodeWhenSignUpImplCopyWith(_$VerifyCodeWhenSignUpImpl value,
          $Res Function(_$VerifyCodeWhenSignUpImpl) then) =
      __$$VerifyCodeWhenSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String code});
}

/// @nodoc
class __$$VerifyCodeWhenSignUpImplCopyWithImpl<$Res>
    extends _$VerifyEventCopyWithImpl<$Res, _$VerifyCodeWhenSignUpImpl>
    implements _$$VerifyCodeWhenSignUpImplCopyWith<$Res> {
  __$$VerifyCodeWhenSignUpImplCopyWithImpl(_$VerifyCodeWhenSignUpImpl _value,
      $Res Function(_$VerifyCodeWhenSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? code = null,
  }) {
    return _then(_$VerifyCodeWhenSignUpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyCodeWhenSignUpImpl implements _VerifyCodeWhenSignUp {
  const _$VerifyCodeWhenSignUpImpl(
      {required this.email, required this.password, required this.code});

  @override
  final String email;
  @override
  final String password;
  @override
  final String code;

  @override
  String toString() {
    return 'VerifyEvent.verifyCodeWhenSignUp(email: $email, password: $password, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCodeWhenSignUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCodeWhenSignUpImplCopyWith<_$VerifyCodeWhenSignUpImpl>
      get copyWith =>
          __$$VerifyCodeWhenSignUpImplCopyWithImpl<_$VerifyCodeWhenSignUpImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) updateCode,
    required TResult Function() count2Minutes,
    required TResult Function() updateMinutes,
    required TResult Function(String email) resendCode,
    required TResult Function(String email, String password, String code)
        verifyCodeWhenSignUp,
    required TResult Function(String email, String code)
        verifyCodeAfterForgetPassword,
  }) {
    return verifyCodeWhenSignUp(email, password, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? updateCode,
    TResult? Function()? count2Minutes,
    TResult? Function()? updateMinutes,
    TResult? Function(String email)? resendCode,
    TResult? Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult? Function(String email, String code)? verifyCodeAfterForgetPassword,
  }) {
    return verifyCodeWhenSignUp?.call(email, password, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? updateCode,
    TResult Function()? count2Minutes,
    TResult Function()? updateMinutes,
    TResult Function(String email)? resendCode,
    TResult Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult Function(String email, String code)? verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (verifyCodeWhenSignUp != null) {
      return verifyCodeWhenSignUp(email, password, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCode value) updateCode,
    required TResult Function(_Count2Minutes value) count2Minutes,
    required TResult Function(_UpdateMinutes value) updateMinutes,
    required TResult Function(_ResendCode value) resendCode,
    required TResult Function(_VerifyCodeWhenSignUp value) verifyCodeWhenSignUp,
    required TResult Function(_VerifyCodeAfterForgetPassword value)
        verifyCodeAfterForgetPassword,
  }) {
    return verifyCodeWhenSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCode value)? updateCode,
    TResult? Function(_Count2Minutes value)? count2Minutes,
    TResult? Function(_UpdateMinutes value)? updateMinutes,
    TResult? Function(_ResendCode value)? resendCode,
    TResult? Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult? Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
  }) {
    return verifyCodeWhenSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCode value)? updateCode,
    TResult Function(_Count2Minutes value)? count2Minutes,
    TResult Function(_UpdateMinutes value)? updateMinutes,
    TResult Function(_ResendCode value)? resendCode,
    TResult Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (verifyCodeWhenSignUp != null) {
      return verifyCodeWhenSignUp(this);
    }
    return orElse();
  }
}

abstract class _VerifyCodeWhenSignUp implements VerifyEvent {
  const factory _VerifyCodeWhenSignUp(
      {required final String email,
      required final String password,
      required final String code}) = _$VerifyCodeWhenSignUpImpl;

  String get email;
  String get password;
  String get code;
  @JsonKey(ignore: true)
  _$$VerifyCodeWhenSignUpImplCopyWith<_$VerifyCodeWhenSignUpImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyCodeAfterForgetPasswordImplCopyWith<$Res> {
  factory _$$VerifyCodeAfterForgetPasswordImplCopyWith(
          _$VerifyCodeAfterForgetPasswordImpl value,
          $Res Function(_$VerifyCodeAfterForgetPasswordImpl) then) =
      __$$VerifyCodeAfterForgetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$VerifyCodeAfterForgetPasswordImplCopyWithImpl<$Res>
    extends _$VerifyEventCopyWithImpl<$Res, _$VerifyCodeAfterForgetPasswordImpl>
    implements _$$VerifyCodeAfterForgetPasswordImplCopyWith<$Res> {
  __$$VerifyCodeAfterForgetPasswordImplCopyWithImpl(
      _$VerifyCodeAfterForgetPasswordImpl _value,
      $Res Function(_$VerifyCodeAfterForgetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$VerifyCodeAfterForgetPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyCodeAfterForgetPasswordImpl
    implements _VerifyCodeAfterForgetPassword {
  const _$VerifyCodeAfterForgetPasswordImpl(
      {required this.email, required this.code});

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'VerifyEvent.verifyCodeAfterForgetPassword(email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCodeAfterForgetPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCodeAfterForgetPasswordImplCopyWith<
          _$VerifyCodeAfterForgetPasswordImpl>
      get copyWith => __$$VerifyCodeAfterForgetPasswordImplCopyWithImpl<
          _$VerifyCodeAfterForgetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) updateCode,
    required TResult Function() count2Minutes,
    required TResult Function() updateMinutes,
    required TResult Function(String email) resendCode,
    required TResult Function(String email, String password, String code)
        verifyCodeWhenSignUp,
    required TResult Function(String email, String code)
        verifyCodeAfterForgetPassword,
  }) {
    return verifyCodeAfterForgetPassword(email, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? updateCode,
    TResult? Function()? count2Minutes,
    TResult? Function()? updateMinutes,
    TResult? Function(String email)? resendCode,
    TResult? Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult? Function(String email, String code)? verifyCodeAfterForgetPassword,
  }) {
    return verifyCodeAfterForgetPassword?.call(email, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? updateCode,
    TResult Function()? count2Minutes,
    TResult Function()? updateMinutes,
    TResult Function(String email)? resendCode,
    TResult Function(String email, String password, String code)?
        verifyCodeWhenSignUp,
    TResult Function(String email, String code)? verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (verifyCodeAfterForgetPassword != null) {
      return verifyCodeAfterForgetPassword(email, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCode value) updateCode,
    required TResult Function(_Count2Minutes value) count2Minutes,
    required TResult Function(_UpdateMinutes value) updateMinutes,
    required TResult Function(_ResendCode value) resendCode,
    required TResult Function(_VerifyCodeWhenSignUp value) verifyCodeWhenSignUp,
    required TResult Function(_VerifyCodeAfterForgetPassword value)
        verifyCodeAfterForgetPassword,
  }) {
    return verifyCodeAfterForgetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCode value)? updateCode,
    TResult? Function(_Count2Minutes value)? count2Minutes,
    TResult? Function(_UpdateMinutes value)? updateMinutes,
    TResult? Function(_ResendCode value)? resendCode,
    TResult? Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult? Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
  }) {
    return verifyCodeAfterForgetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCode value)? updateCode,
    TResult Function(_Count2Minutes value)? count2Minutes,
    TResult Function(_UpdateMinutes value)? updateMinutes,
    TResult Function(_ResendCode value)? resendCode,
    TResult Function(_VerifyCodeWhenSignUp value)? verifyCodeWhenSignUp,
    TResult Function(_VerifyCodeAfterForgetPassword value)?
        verifyCodeAfterForgetPassword,
    required TResult orElse(),
  }) {
    if (verifyCodeAfterForgetPassword != null) {
      return verifyCodeAfterForgetPassword(this);
    }
    return orElse();
  }
}

abstract class _VerifyCodeAfterForgetPassword implements VerifyEvent {
  const factory _VerifyCodeAfterForgetPassword(
      {required final String email,
      required final String code}) = _$VerifyCodeAfterForgetPasswordImpl;

  String get email;
  String get code;
  @JsonKey(ignore: true)
  _$$VerifyCodeAfterForgetPasswordImplCopyWith<
          _$VerifyCodeAfterForgetPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
