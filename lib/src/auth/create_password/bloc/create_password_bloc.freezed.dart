// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleShowPassword,
    required TResult Function() toggleShowPasswordRepeat,
    required TResult Function(
            String email, String password, String passwordReapeat, String code)
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleShowPassword,
    TResult? Function()? toggleShowPasswordRepeat,
    TResult? Function(
            String email, String password, String passwordReapeat, String code)?
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleShowPassword,
    TResult Function()? toggleShowPasswordRepeat,
    TResult Function(
            String email, String password, String passwordReapeat, String code)?
        resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleShowPassword value) toggleShowPassword,
    required TResult Function(_ToggleShowPasswordRepeat value)
        toggleShowPasswordRepeat,
    required TResult Function(_ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleShowPassword value)? toggleShowPassword,
    TResult? Function(_ToggleShowPasswordRepeat value)?
        toggleShowPasswordRepeat,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleShowPassword value)? toggleShowPassword,
    TResult Function(_ToggleShowPasswordRepeat value)? toggleShowPasswordRepeat,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePasswordEventCopyWith<$Res> {
  factory $CreatePasswordEventCopyWith(
          CreatePasswordEvent value, $Res Function(CreatePasswordEvent) then) =
      _$CreatePasswordEventCopyWithImpl<$Res, CreatePasswordEvent>;
}

/// @nodoc
class _$CreatePasswordEventCopyWithImpl<$Res, $Val extends CreatePasswordEvent>
    implements $CreatePasswordEventCopyWith<$Res> {
  _$CreatePasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToggleShowPasswordImplCopyWith<$Res> {
  factory _$$ToggleShowPasswordImplCopyWith(_$ToggleShowPasswordImpl value,
          $Res Function(_$ToggleShowPasswordImpl) then) =
      __$$ToggleShowPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleShowPasswordImplCopyWithImpl<$Res>
    extends _$CreatePasswordEventCopyWithImpl<$Res, _$ToggleShowPasswordImpl>
    implements _$$ToggleShowPasswordImplCopyWith<$Res> {
  __$$ToggleShowPasswordImplCopyWithImpl(_$ToggleShowPasswordImpl _value,
      $Res Function(_$ToggleShowPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleShowPasswordImpl implements _ToggleShowPassword {
  const _$ToggleShowPasswordImpl();

  @override
  String toString() {
    return 'CreatePasswordEvent.toggleShowPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleShowPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleShowPassword,
    required TResult Function() toggleShowPasswordRepeat,
    required TResult Function(
            String email, String password, String passwordReapeat, String code)
        resetPassword,
  }) {
    return toggleShowPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleShowPassword,
    TResult? Function()? toggleShowPasswordRepeat,
    TResult? Function(
            String email, String password, String passwordReapeat, String code)?
        resetPassword,
  }) {
    return toggleShowPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleShowPassword,
    TResult Function()? toggleShowPasswordRepeat,
    TResult Function(
            String email, String password, String passwordReapeat, String code)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (toggleShowPassword != null) {
      return toggleShowPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleShowPassword value) toggleShowPassword,
    required TResult Function(_ToggleShowPasswordRepeat value)
        toggleShowPasswordRepeat,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return toggleShowPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleShowPassword value)? toggleShowPassword,
    TResult? Function(_ToggleShowPasswordRepeat value)?
        toggleShowPasswordRepeat,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return toggleShowPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleShowPassword value)? toggleShowPassword,
    TResult Function(_ToggleShowPasswordRepeat value)? toggleShowPasswordRepeat,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (toggleShowPassword != null) {
      return toggleShowPassword(this);
    }
    return orElse();
  }
}

abstract class _ToggleShowPassword implements CreatePasswordEvent {
  const factory _ToggleShowPassword() = _$ToggleShowPasswordImpl;
}

/// @nodoc
abstract class _$$ToggleShowPasswordRepeatImplCopyWith<$Res> {
  factory _$$ToggleShowPasswordRepeatImplCopyWith(
          _$ToggleShowPasswordRepeatImpl value,
          $Res Function(_$ToggleShowPasswordRepeatImpl) then) =
      __$$ToggleShowPasswordRepeatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleShowPasswordRepeatImplCopyWithImpl<$Res>
    extends _$CreatePasswordEventCopyWithImpl<$Res,
        _$ToggleShowPasswordRepeatImpl>
    implements _$$ToggleShowPasswordRepeatImplCopyWith<$Res> {
  __$$ToggleShowPasswordRepeatImplCopyWithImpl(
      _$ToggleShowPasswordRepeatImpl _value,
      $Res Function(_$ToggleShowPasswordRepeatImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleShowPasswordRepeatImpl implements _ToggleShowPasswordRepeat {
  const _$ToggleShowPasswordRepeatImpl();

  @override
  String toString() {
    return 'CreatePasswordEvent.toggleShowPasswordRepeat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleShowPasswordRepeatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleShowPassword,
    required TResult Function() toggleShowPasswordRepeat,
    required TResult Function(
            String email, String password, String passwordReapeat, String code)
        resetPassword,
  }) {
    return toggleShowPasswordRepeat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleShowPassword,
    TResult? Function()? toggleShowPasswordRepeat,
    TResult? Function(
            String email, String password, String passwordReapeat, String code)?
        resetPassword,
  }) {
    return toggleShowPasswordRepeat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleShowPassword,
    TResult Function()? toggleShowPasswordRepeat,
    TResult Function(
            String email, String password, String passwordReapeat, String code)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (toggleShowPasswordRepeat != null) {
      return toggleShowPasswordRepeat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleShowPassword value) toggleShowPassword,
    required TResult Function(_ToggleShowPasswordRepeat value)
        toggleShowPasswordRepeat,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return toggleShowPasswordRepeat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleShowPassword value)? toggleShowPassword,
    TResult? Function(_ToggleShowPasswordRepeat value)?
        toggleShowPasswordRepeat,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return toggleShowPasswordRepeat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleShowPassword value)? toggleShowPassword,
    TResult Function(_ToggleShowPasswordRepeat value)? toggleShowPasswordRepeat,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (toggleShowPasswordRepeat != null) {
      return toggleShowPasswordRepeat(this);
    }
    return orElse();
  }
}

abstract class _ToggleShowPasswordRepeat implements CreatePasswordEvent {
  const factory _ToggleShowPasswordRepeat() = _$ToggleShowPasswordRepeatImpl;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
          _$ResetPasswordImpl value, $Res Function(_$ResetPasswordImpl) then) =
      __$$ResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email, String password, String passwordReapeat, String code});
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$CreatePasswordEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
      _$ResetPasswordImpl _value, $Res Function(_$ResetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordReapeat = null,
    Object? code = null,
  }) {
    return _then(_$ResetPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordReapeat: null == passwordReapeat
          ? _value.passwordReapeat
          : passwordReapeat // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl(
      {required this.email,
      required this.password,
      required this.passwordReapeat,
      required this.code});

  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordReapeat;
  @override
  final String code;

  @override
  String toString() {
    return 'CreatePasswordEvent.resetPassword(email: $email, password: $password, passwordReapeat: $passwordReapeat, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordReapeat, passwordReapeat) ||
                other.passwordReapeat == passwordReapeat) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, passwordReapeat, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleShowPassword,
    required TResult Function() toggleShowPasswordRepeat,
    required TResult Function(
            String email, String password, String passwordReapeat, String code)
        resetPassword,
  }) {
    return resetPassword(email, password, passwordReapeat, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleShowPassword,
    TResult? Function()? toggleShowPasswordRepeat,
    TResult? Function(
            String email, String password, String passwordReapeat, String code)?
        resetPassword,
  }) {
    return resetPassword?.call(email, password, passwordReapeat, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleShowPassword,
    TResult Function()? toggleShowPasswordRepeat,
    TResult Function(
            String email, String password, String passwordReapeat, String code)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email, password, passwordReapeat, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleShowPassword value) toggleShowPassword,
    required TResult Function(_ToggleShowPasswordRepeat value)
        toggleShowPasswordRepeat,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleShowPassword value)? toggleShowPassword,
    TResult? Function(_ToggleShowPasswordRepeat value)?
        toggleShowPasswordRepeat,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleShowPassword value)? toggleShowPassword,
    TResult Function(_ToggleShowPasswordRepeat value)? toggleShowPasswordRepeat,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements CreatePasswordEvent {
  const factory _ResetPassword(
      {required final String email,
      required final String password,
      required final String passwordReapeat,
      required final String code}) = _$ResetPasswordImpl;

  String get email;
  String get password;
  String get passwordReapeat;
  String get code;
  @JsonKey(ignore: true)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatePasswordState {
  bool get showPassword => throw _privateConstructorUsedError;
  bool get showPasswordRepeat => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        initial,
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        inProgress,
    required TResult Function(
            bool showPassword, bool showPasswordRepeat, String message)
        error,
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showPassword, bool showPasswordRepeat)? initial,
    TResult? Function(bool showPassword, bool showPasswordRepeat)? inProgress,
    TResult? Function(
            bool showPassword, bool showPasswordRepeat, String message)?
        error,
    TResult? Function(bool showPassword, bool showPasswordRepeat)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPassword, bool showPasswordRepeat)? initial,
    TResult Function(bool showPassword, bool showPasswordRepeat)? inProgress,
    TResult Function(
            bool showPassword, bool showPasswordRepeat, String message)?
        error,
    TResult Function(bool showPassword, bool showPasswordRepeat)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePasswordStateCopyWith<CreatePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePasswordStateCopyWith<$Res> {
  factory $CreatePasswordStateCopyWith(
          CreatePasswordState value, $Res Function(CreatePasswordState) then) =
      _$CreatePasswordStateCopyWithImpl<$Res, CreatePasswordState>;
  @useResult
  $Res call({bool showPassword, bool showPasswordRepeat});
}

/// @nodoc
class _$CreatePasswordStateCopyWithImpl<$Res, $Val extends CreatePasswordState>
    implements $CreatePasswordStateCopyWith<$Res> {
  _$CreatePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPassword = null,
    Object? showPasswordRepeat = null,
  }) {
    return _then(_value.copyWith(
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showPasswordRepeat: null == showPasswordRepeat
          ? _value.showPasswordRepeat
          : showPasswordRepeat // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CreatePasswordStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showPassword, bool showPasswordRepeat});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreatePasswordStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPassword = null,
    Object? showPasswordRepeat = null,
  }) {
    return _then(_$InitialImpl(
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showPasswordRepeat: null == showPasswordRepeat
          ? _value.showPasswordRepeat
          : showPasswordRepeat // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.showPassword, required this.showPasswordRepeat});

  @override
  final bool showPassword;
  @override
  final bool showPasswordRepeat;

  @override
  String toString() {
    return 'CreatePasswordState.initial(showPassword: $showPassword, showPasswordRepeat: $showPasswordRepeat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.showPasswordRepeat, showPasswordRepeat) ||
                other.showPasswordRepeat == showPasswordRepeat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, showPassword, showPasswordRepeat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        initial,
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        inProgress,
    required TResult Function(
            bool showPassword, bool showPasswordRepeat, String message)
        error,
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        success,
  }) {
    return initial(showPassword, showPasswordRepeat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showPassword, bool showPasswordRepeat)? initial,
    TResult? Function(bool showPassword, bool showPasswordRepeat)? inProgress,
    TResult? Function(
            bool showPassword, bool showPasswordRepeat, String message)?
        error,
    TResult? Function(bool showPassword, bool showPasswordRepeat)? success,
  }) {
    return initial?.call(showPassword, showPasswordRepeat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPassword, bool showPasswordRepeat)? initial,
    TResult Function(bool showPassword, bool showPasswordRepeat)? inProgress,
    TResult Function(
            bool showPassword, bool showPasswordRepeat, String message)?
        error,
    TResult Function(bool showPassword, bool showPasswordRepeat)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(showPassword, showPasswordRepeat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreatePasswordState {
  const factory _Initial(
      {required final bool showPassword,
      required final bool showPasswordRepeat}) = _$InitialImpl;

  @override
  bool get showPassword;
  @override
  bool get showPasswordRepeat;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res>
    implements $CreatePasswordStateCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showPassword, bool showPasswordRepeat});
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$CreatePasswordStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPassword = null,
    Object? showPasswordRepeat = null,
  }) {
    return _then(_$InProgressImpl(
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showPasswordRepeat: null == showPasswordRepeat
          ? _value.showPasswordRepeat
          : showPasswordRepeat // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl(
      {required this.showPassword, required this.showPasswordRepeat});

  @override
  final bool showPassword;
  @override
  final bool showPasswordRepeat;

  @override
  String toString() {
    return 'CreatePasswordState.inProgress(showPassword: $showPassword, showPasswordRepeat: $showPasswordRepeat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressImpl &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.showPasswordRepeat, showPasswordRepeat) ||
                other.showPasswordRepeat == showPasswordRepeat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, showPassword, showPasswordRepeat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      __$$InProgressImplCopyWithImpl<_$InProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        initial,
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        inProgress,
    required TResult Function(
            bool showPassword, bool showPasswordRepeat, String message)
        error,
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        success,
  }) {
    return inProgress(showPassword, showPasswordRepeat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showPassword, bool showPasswordRepeat)? initial,
    TResult? Function(bool showPassword, bool showPasswordRepeat)? inProgress,
    TResult? Function(
            bool showPassword, bool showPasswordRepeat, String message)?
        error,
    TResult? Function(bool showPassword, bool showPasswordRepeat)? success,
  }) {
    return inProgress?.call(showPassword, showPasswordRepeat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPassword, bool showPasswordRepeat)? initial,
    TResult Function(bool showPassword, bool showPasswordRepeat)? inProgress,
    TResult Function(
            bool showPassword, bool showPasswordRepeat, String message)?
        error,
    TResult Function(bool showPassword, bool showPasswordRepeat)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(showPassword, showPasswordRepeat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements CreatePasswordState {
  const factory _InProgress(
      {required final bool showPassword,
      required final bool showPasswordRepeat}) = _$InProgressImpl;

  @override
  bool get showPassword;
  @override
  bool get showPasswordRepeat;
  @override
  @JsonKey(ignore: true)
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $CreatePasswordStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showPassword, bool showPasswordRepeat, String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CreatePasswordStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPassword = null,
    Object? showPasswordRepeat = null,
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showPasswordRepeat: null == showPasswordRepeat
          ? _value.showPasswordRepeat
          : showPasswordRepeat // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {required this.showPassword,
      required this.showPasswordRepeat,
      required this.message});

  @override
  final bool showPassword;
  @override
  final bool showPasswordRepeat;
  @override
  final String message;

  @override
  String toString() {
    return 'CreatePasswordState.error(showPassword: $showPassword, showPasswordRepeat: $showPasswordRepeat, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.showPasswordRepeat, showPasswordRepeat) ||
                other.showPasswordRepeat == showPasswordRepeat) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, showPassword, showPasswordRepeat, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        initial,
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        inProgress,
    required TResult Function(
            bool showPassword, bool showPasswordRepeat, String message)
        error,
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        success,
  }) {
    return error(showPassword, showPasswordRepeat, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showPassword, bool showPasswordRepeat)? initial,
    TResult? Function(bool showPassword, bool showPasswordRepeat)? inProgress,
    TResult? Function(
            bool showPassword, bool showPasswordRepeat, String message)?
        error,
    TResult? Function(bool showPassword, bool showPasswordRepeat)? success,
  }) {
    return error?.call(showPassword, showPasswordRepeat, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPassword, bool showPasswordRepeat)? initial,
    TResult Function(bool showPassword, bool showPasswordRepeat)? inProgress,
    TResult Function(
            bool showPassword, bool showPasswordRepeat, String message)?
        error,
    TResult Function(bool showPassword, bool showPasswordRepeat)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(showPassword, showPasswordRepeat, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CreatePasswordState {
  const factory _Error(
      {required final bool showPassword,
      required final bool showPasswordRepeat,
      required final String message}) = _$ErrorImpl;

  @override
  bool get showPassword;
  @override
  bool get showPasswordRepeat;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $CreatePasswordStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showPassword, bool showPasswordRepeat});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CreatePasswordStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPassword = null,
    Object? showPasswordRepeat = null,
  }) {
    return _then(_$SuccessImpl(
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showPasswordRepeat: null == showPasswordRepeat
          ? _value.showPasswordRepeat
          : showPasswordRepeat // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required this.showPassword, required this.showPasswordRepeat});

  @override
  final bool showPassword;
  @override
  final bool showPasswordRepeat;

  @override
  String toString() {
    return 'CreatePasswordState.success(showPassword: $showPassword, showPasswordRepeat: $showPasswordRepeat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.showPasswordRepeat, showPasswordRepeat) ||
                other.showPasswordRepeat == showPasswordRepeat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, showPassword, showPasswordRepeat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        initial,
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        inProgress,
    required TResult Function(
            bool showPassword, bool showPasswordRepeat, String message)
        error,
    required TResult Function(bool showPassword, bool showPasswordRepeat)
        success,
  }) {
    return success(showPassword, showPasswordRepeat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showPassword, bool showPasswordRepeat)? initial,
    TResult? Function(bool showPassword, bool showPasswordRepeat)? inProgress,
    TResult? Function(
            bool showPassword, bool showPasswordRepeat, String message)?
        error,
    TResult? Function(bool showPassword, bool showPasswordRepeat)? success,
  }) {
    return success?.call(showPassword, showPasswordRepeat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPassword, bool showPasswordRepeat)? initial,
    TResult Function(bool showPassword, bool showPasswordRepeat)? inProgress,
    TResult Function(
            bool showPassword, bool showPasswordRepeat, String message)?
        error,
    TResult Function(bool showPassword, bool showPasswordRepeat)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(showPassword, showPasswordRepeat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CreatePasswordState {
  const factory _Success(
      {required final bool showPassword,
      required final bool showPasswordRepeat}) = _$SuccessImpl;

  @override
  bool get showPassword;
  @override
  bool get showPasswordRepeat;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
