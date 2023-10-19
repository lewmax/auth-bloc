// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) getUser,
    required TResult Function(String email, String password) loginWithCreds,
    required TResult Function(SocialLoginMethod method) socialLogin,
    required TResult Function() logout,
    required TResult Function(String userId) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? getUser,
    TResult? Function(String email, String password)? loginWithCreds,
    TResult? Function(SocialLoginMethod method)? socialLogin,
    TResult? Function()? logout,
    TResult? Function(String userId)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? getUser,
    TResult Function(String email, String password)? loginWithCreds,
    TResult Function(SocialLoginMethod method)? socialLogin,
    TResult Function()? logout,
    TResult Function(String userId)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_LoginWithCreds value) loginWithCreds,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Logout value) logout,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_LoginWithCreds value)? loginWithCreds,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_LoginWithCreds value)? loginWithCreds,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Logout value)? logout,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isInitial});
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitial = null,
  }) {
    return _then(_$GetUserImpl(
      isInitial: null == isInitial
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetUserImpl implements _GetUser {
  const _$GetUserImpl({required this.isInitial});

  @override
  final bool isInitial;

  @override
  String toString() {
    return 'AuthEvent.getUser(isInitial: $isInitial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserImpl &&
            (identical(other.isInitial, isInitial) ||
                other.isInitial == isInitial));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInitial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserImplCopyWith<_$GetUserImpl> get copyWith =>
      __$$GetUserImplCopyWithImpl<_$GetUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) getUser,
    required TResult Function(String email, String password) loginWithCreds,
    required TResult Function(SocialLoginMethod method) socialLogin,
    required TResult Function() logout,
    required TResult Function(String userId) deleteAccount,
  }) {
    return getUser(isInitial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? getUser,
    TResult? Function(String email, String password)? loginWithCreds,
    TResult? Function(SocialLoginMethod method)? socialLogin,
    TResult? Function()? logout,
    TResult? Function(String userId)? deleteAccount,
  }) {
    return getUser?.call(isInitial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? getUser,
    TResult Function(String email, String password)? loginWithCreds,
    TResult Function(SocialLoginMethod method)? socialLogin,
    TResult Function()? logout,
    TResult Function(String userId)? deleteAccount,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(isInitial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_LoginWithCreds value) loginWithCreds,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Logout value) logout,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_LoginWithCreds value)? loginWithCreds,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_LoginWithCreds value)? loginWithCreds,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Logout value)? logout,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements AuthEvent {
  const factory _GetUser({required final bool isInitial}) = _$GetUserImpl;

  bool get isInitial;
  @JsonKey(ignore: true)
  _$$GetUserImplCopyWith<_$GetUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithCredsImplCopyWith<$Res> {
  factory _$$LoginWithCredsImplCopyWith(_$LoginWithCredsImpl value,
          $Res Function(_$LoginWithCredsImpl) then) =
      __$$LoginWithCredsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginWithCredsImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithCredsImpl>
    implements _$$LoginWithCredsImplCopyWith<$Res> {
  __$$LoginWithCredsImplCopyWithImpl(
      _$LoginWithCredsImpl _value, $Res Function(_$LoginWithCredsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginWithCredsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginWithCredsImpl implements _LoginWithCreds {
  const _$LoginWithCredsImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginWithCreds(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithCredsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithCredsImplCopyWith<_$LoginWithCredsImpl> get copyWith =>
      __$$LoginWithCredsImplCopyWithImpl<_$LoginWithCredsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) getUser,
    required TResult Function(String email, String password) loginWithCreds,
    required TResult Function(SocialLoginMethod method) socialLogin,
    required TResult Function() logout,
    required TResult Function(String userId) deleteAccount,
  }) {
    return loginWithCreds(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? getUser,
    TResult? Function(String email, String password)? loginWithCreds,
    TResult? Function(SocialLoginMethod method)? socialLogin,
    TResult? Function()? logout,
    TResult? Function(String userId)? deleteAccount,
  }) {
    return loginWithCreds?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? getUser,
    TResult Function(String email, String password)? loginWithCreds,
    TResult Function(SocialLoginMethod method)? socialLogin,
    TResult Function()? logout,
    TResult Function(String userId)? deleteAccount,
    required TResult orElse(),
  }) {
    if (loginWithCreds != null) {
      return loginWithCreds(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_LoginWithCreds value) loginWithCreds,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Logout value) logout,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return loginWithCreds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_LoginWithCreds value)? loginWithCreds,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return loginWithCreds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_LoginWithCreds value)? loginWithCreds,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Logout value)? logout,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (loginWithCreds != null) {
      return loginWithCreds(this);
    }
    return orElse();
  }
}

abstract class _LoginWithCreds implements AuthEvent {
  const factory _LoginWithCreds(
      {required final String email,
      required final String password}) = _$LoginWithCredsImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginWithCredsImplCopyWith<_$LoginWithCredsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocialLoginImplCopyWith<$Res> {
  factory _$$SocialLoginImplCopyWith(
          _$SocialLoginImpl value, $Res Function(_$SocialLoginImpl) then) =
      __$$SocialLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocialLoginMethod method});
}

/// @nodoc
class __$$SocialLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SocialLoginImpl>
    implements _$$SocialLoginImplCopyWith<$Res> {
  __$$SocialLoginImplCopyWithImpl(
      _$SocialLoginImpl _value, $Res Function(_$SocialLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
  }) {
    return _then(_$SocialLoginImpl(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as SocialLoginMethod,
    ));
  }
}

/// @nodoc

class _$SocialLoginImpl implements _SocialLogin {
  const _$SocialLoginImpl({required this.method});

  @override
  final SocialLoginMethod method;

  @override
  String toString() {
    return 'AuthEvent.socialLogin(method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLoginImpl &&
            (identical(other.method, method) || other.method == method));
  }

  @override
  int get hashCode => Object.hash(runtimeType, method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLoginImplCopyWith<_$SocialLoginImpl> get copyWith =>
      __$$SocialLoginImplCopyWithImpl<_$SocialLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) getUser,
    required TResult Function(String email, String password) loginWithCreds,
    required TResult Function(SocialLoginMethod method) socialLogin,
    required TResult Function() logout,
    required TResult Function(String userId) deleteAccount,
  }) {
    return socialLogin(method);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? getUser,
    TResult? Function(String email, String password)? loginWithCreds,
    TResult? Function(SocialLoginMethod method)? socialLogin,
    TResult? Function()? logout,
    TResult? Function(String userId)? deleteAccount,
  }) {
    return socialLogin?.call(method);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? getUser,
    TResult Function(String email, String password)? loginWithCreds,
    TResult Function(SocialLoginMethod method)? socialLogin,
    TResult Function()? logout,
    TResult Function(String userId)? deleteAccount,
    required TResult orElse(),
  }) {
    if (socialLogin != null) {
      return socialLogin(method);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_LoginWithCreds value) loginWithCreds,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Logout value) logout,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return socialLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_LoginWithCreds value)? loginWithCreds,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return socialLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_LoginWithCreds value)? loginWithCreds,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Logout value)? logout,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (socialLogin != null) {
      return socialLogin(this);
    }
    return orElse();
  }
}

abstract class _SocialLogin implements AuthEvent {
  const factory _SocialLogin({required final SocialLoginMethod method}) =
      _$SocialLoginImpl;

  SocialLoginMethod get method;
  @JsonKey(ignore: true)
  _$$SocialLoginImplCopyWith<_$SocialLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) getUser,
    required TResult Function(String email, String password) loginWithCreds,
    required TResult Function(SocialLoginMethod method) socialLogin,
    required TResult Function() logout,
    required TResult Function(String userId) deleteAccount,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? getUser,
    TResult? Function(String email, String password)? loginWithCreds,
    TResult? Function(SocialLoginMethod method)? socialLogin,
    TResult? Function()? logout,
    TResult? Function(String userId)? deleteAccount,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? getUser,
    TResult Function(String email, String password)? loginWithCreds,
    TResult Function(SocialLoginMethod method)? socialLogin,
    TResult Function()? logout,
    TResult Function(String userId)? deleteAccount,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_LoginWithCreds value) loginWithCreds,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Logout value) logout,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_LoginWithCreds value)? loginWithCreds,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_LoginWithCreds value)? loginWithCreds,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Logout value)? logout,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$DeleteAccountImplCopyWith<$Res> {
  factory _$$DeleteAccountImplCopyWith(
          _$DeleteAccountImpl value, $Res Function(_$DeleteAccountImpl) then) =
      __$$DeleteAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$DeleteAccountImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$DeleteAccountImpl>
    implements _$$DeleteAccountImplCopyWith<$Res> {
  __$$DeleteAccountImplCopyWithImpl(
      _$DeleteAccountImpl _value, $Res Function(_$DeleteAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$DeleteAccountImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAccountImpl implements _DeleteAccount {
  const _$DeleteAccountImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'AuthEvent.deleteAccount(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountImplCopyWith<_$DeleteAccountImpl> get copyWith =>
      __$$DeleteAccountImplCopyWithImpl<_$DeleteAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) getUser,
    required TResult Function(String email, String password) loginWithCreds,
    required TResult Function(SocialLoginMethod method) socialLogin,
    required TResult Function() logout,
    required TResult Function(String userId) deleteAccount,
  }) {
    return deleteAccount(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? getUser,
    TResult? Function(String email, String password)? loginWithCreds,
    TResult? Function(SocialLoginMethod method)? socialLogin,
    TResult? Function()? logout,
    TResult? Function(String userId)? deleteAccount,
  }) {
    return deleteAccount?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? getUser,
    TResult Function(String email, String password)? loginWithCreds,
    TResult Function(SocialLoginMethod method)? socialLogin,
    TResult Function()? logout,
    TResult Function(String userId)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_LoginWithCreds value) loginWithCreds,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Logout value) logout,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_LoginWithCreds value)? loginWithCreds,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    TResult Function(_LoginWithCreds value)? loginWithCreds,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Logout value)? logout,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccount implements AuthEvent {
  const factory _DeleteAccount(final String userId) = _$DeleteAccountImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$DeleteAccountImplCopyWith<_$DeleteAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() notAuth,
    required TResult Function(String? message) error,
    required TResult Function() auth,
    required TResult Function(UserEntity user) authWithoutRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? notAuth,
    TResult? Function(String? message)? error,
    TResult? Function()? auth,
    TResult? Function(UserEntity user)? authWithoutRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? notAuth,
    TResult Function(String? message)? error,
    TResult Function()? auth,
    TResult Function(UserEntity user)? authWithoutRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initital value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_NotAuthenticated value) notAuth,
    required TResult Function(_Error value) error,
    required TResult Function(_Authenticated value) auth,
    required TResult Function(_AuthenticatedWithoutRegister value)
        authWithoutRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initital value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_NotAuthenticated value)? notAuth,
    TResult? Function(_Error value)? error,
    TResult? Function(_Authenticated value)? auth,
    TResult? Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initital value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_NotAuthenticated value)? notAuth,
    TResult Function(_Error value)? error,
    TResult Function(_Authenticated value)? auth,
    TResult Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InititalImplCopyWith<$Res> {
  factory _$$InititalImplCopyWith(
          _$InititalImpl value, $Res Function(_$InititalImpl) then) =
      __$$InititalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InititalImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InititalImpl>
    implements _$$InititalImplCopyWith<$Res> {
  __$$InititalImplCopyWithImpl(
      _$InititalImpl _value, $Res Function(_$InititalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InititalImpl implements _Initital {
  const _$InititalImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InititalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() notAuth,
    required TResult Function(String? message) error,
    required TResult Function() auth,
    required TResult Function(UserEntity user) authWithoutRegister,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? notAuth,
    TResult? Function(String? message)? error,
    TResult? Function()? auth,
    TResult? Function(UserEntity user)? authWithoutRegister,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? notAuth,
    TResult Function(String? message)? error,
    TResult Function()? auth,
    TResult Function(UserEntity user)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initital value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_NotAuthenticated value) notAuth,
    required TResult Function(_Error value) error,
    required TResult Function(_Authenticated value) auth,
    required TResult Function(_AuthenticatedWithoutRegister value)
        authWithoutRegister,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initital value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_NotAuthenticated value)? notAuth,
    TResult? Function(_Error value)? error,
    TResult? Function(_Authenticated value)? auth,
    TResult? Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initital value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_NotAuthenticated value)? notAuth,
    TResult Function(_Error value)? error,
    TResult Function(_Authenticated value)? auth,
    TResult Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initital implements AuthState {
  const factory _Initital() = _$InititalImpl;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'AuthState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() notAuth,
    required TResult Function(String? message) error,
    required TResult Function() auth,
    required TResult Function(UserEntity user) authWithoutRegister,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? notAuth,
    TResult? Function(String? message)? error,
    TResult? Function()? auth,
    TResult? Function(UserEntity user)? authWithoutRegister,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? notAuth,
    TResult Function(String? message)? error,
    TResult Function()? auth,
    TResult Function(UserEntity user)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initital value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_NotAuthenticated value) notAuth,
    required TResult Function(_Error value) error,
    required TResult Function(_Authenticated value) auth,
    required TResult Function(_AuthenticatedWithoutRegister value)
        authWithoutRegister,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initital value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_NotAuthenticated value)? notAuth,
    TResult? Function(_Error value)? error,
    TResult? Function(_Authenticated value)? auth,
    TResult? Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initital value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_NotAuthenticated value)? notAuth,
    TResult Function(_Error value)? error,
    TResult Function(_Authenticated value)? auth,
    TResult Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements AuthState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$NotAuthenticatedImplCopyWith<$Res> {
  factory _$$NotAuthenticatedImplCopyWith(_$NotAuthenticatedImpl value,
          $Res Function(_$NotAuthenticatedImpl) then) =
      __$$NotAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NotAuthenticatedImpl>
    implements _$$NotAuthenticatedImplCopyWith<$Res> {
  __$$NotAuthenticatedImplCopyWithImpl(_$NotAuthenticatedImpl _value,
      $Res Function(_$NotAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotAuthenticatedImpl implements _NotAuthenticated {
  const _$NotAuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.notAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() notAuth,
    required TResult Function(String? message) error,
    required TResult Function() auth,
    required TResult Function(UserEntity user) authWithoutRegister,
  }) {
    return notAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? notAuth,
    TResult? Function(String? message)? error,
    TResult? Function()? auth,
    TResult? Function(UserEntity user)? authWithoutRegister,
  }) {
    return notAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? notAuth,
    TResult Function(String? message)? error,
    TResult Function()? auth,
    TResult Function(UserEntity user)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (notAuth != null) {
      return notAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initital value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_NotAuthenticated value) notAuth,
    required TResult Function(_Error value) error,
    required TResult Function(_Authenticated value) auth,
    required TResult Function(_AuthenticatedWithoutRegister value)
        authWithoutRegister,
  }) {
    return notAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initital value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_NotAuthenticated value)? notAuth,
    TResult? Function(_Error value)? error,
    TResult? Function(_Authenticated value)? auth,
    TResult? Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
  }) {
    return notAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initital value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_NotAuthenticated value)? notAuth,
    TResult Function(_Error value)? error,
    TResult Function(_Authenticated value)? auth,
    TResult Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (notAuth != null) {
      return notAuth(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticated implements AuthState {
  const factory _NotAuthenticated() = _$NotAuthenticatedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() notAuth,
    required TResult Function(String? message) error,
    required TResult Function() auth,
    required TResult Function(UserEntity user) authWithoutRegister,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? notAuth,
    TResult? Function(String? message)? error,
    TResult? Function()? auth,
    TResult? Function(UserEntity user)? authWithoutRegister,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? notAuth,
    TResult Function(String? message)? error,
    TResult Function()? auth,
    TResult Function(UserEntity user)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initital value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_NotAuthenticated value) notAuth,
    required TResult Function(_Error value) error,
    required TResult Function(_Authenticated value) auth,
    required TResult Function(_AuthenticatedWithoutRegister value)
        authWithoutRegister,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initital value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_NotAuthenticated value)? notAuth,
    TResult? Function(_Error value)? error,
    TResult? Function(_Authenticated value)? auth,
    TResult? Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initital value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_NotAuthenticated value)? notAuth,
    TResult Function(_Error value)? error,
    TResult Function(_Authenticated value)? auth,
    TResult Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error({final String? message}) = _$ErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.auth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() notAuth,
    required TResult Function(String? message) error,
    required TResult Function() auth,
    required TResult Function(UserEntity user) authWithoutRegister,
  }) {
    return auth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? notAuth,
    TResult? Function(String? message)? error,
    TResult? Function()? auth,
    TResult? Function(UserEntity user)? authWithoutRegister,
  }) {
    return auth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? notAuth,
    TResult Function(String? message)? error,
    TResult Function()? auth,
    TResult Function(UserEntity user)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initital value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_NotAuthenticated value) notAuth,
    required TResult Function(_Error value) error,
    required TResult Function(_Authenticated value) auth,
    required TResult Function(_AuthenticatedWithoutRegister value)
        authWithoutRegister,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initital value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_NotAuthenticated value)? notAuth,
    TResult? Function(_Error value)? error,
    TResult? Function(_Authenticated value)? auth,
    TResult? Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initital value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_NotAuthenticated value)? notAuth,
    TResult Function(_Error value)? error,
    TResult Function(_Authenticated value)? auth,
    TResult Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$AuthenticatedWithoutRegisterImplCopyWith<$Res> {
  factory _$$AuthenticatedWithoutRegisterImplCopyWith(
          _$AuthenticatedWithoutRegisterImpl value,
          $Res Function(_$AuthenticatedWithoutRegisterImpl) then) =
      __$$AuthenticatedWithoutRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$AuthenticatedWithoutRegisterImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedWithoutRegisterImpl>
    implements _$$AuthenticatedWithoutRegisterImplCopyWith<$Res> {
  __$$AuthenticatedWithoutRegisterImplCopyWithImpl(
      _$AuthenticatedWithoutRegisterImpl _value,
      $Res Function(_$AuthenticatedWithoutRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticatedWithoutRegisterImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$AuthenticatedWithoutRegisterImpl
    implements _AuthenticatedWithoutRegister {
  const _$AuthenticatedWithoutRegisterImpl({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'AuthState.authWithoutRegister(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedWithoutRegisterImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedWithoutRegisterImplCopyWith<
          _$AuthenticatedWithoutRegisterImpl>
      get copyWith => __$$AuthenticatedWithoutRegisterImplCopyWithImpl<
          _$AuthenticatedWithoutRegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() notAuth,
    required TResult Function(String? message) error,
    required TResult Function() auth,
    required TResult Function(UserEntity user) authWithoutRegister,
  }) {
    return authWithoutRegister(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? notAuth,
    TResult? Function(String? message)? error,
    TResult? Function()? auth,
    TResult? Function(UserEntity user)? authWithoutRegister,
  }) {
    return authWithoutRegister?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? notAuth,
    TResult Function(String? message)? error,
    TResult Function()? auth,
    TResult Function(UserEntity user)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (authWithoutRegister != null) {
      return authWithoutRegister(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initital value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_NotAuthenticated value) notAuth,
    required TResult Function(_Error value) error,
    required TResult Function(_Authenticated value) auth,
    required TResult Function(_AuthenticatedWithoutRegister value)
        authWithoutRegister,
  }) {
    return authWithoutRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initital value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_NotAuthenticated value)? notAuth,
    TResult? Function(_Error value)? error,
    TResult? Function(_Authenticated value)? auth,
    TResult? Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
  }) {
    return authWithoutRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initital value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_NotAuthenticated value)? notAuth,
    TResult Function(_Error value)? error,
    TResult Function(_Authenticated value)? auth,
    TResult Function(_AuthenticatedWithoutRegister value)? authWithoutRegister,
    required TResult orElse(),
  }) {
    if (authWithoutRegister != null) {
      return authWithoutRegister(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedWithoutRegister implements AuthState {
  const factory _AuthenticatedWithoutRegister(
      {required final UserEntity user}) = _$AuthenticatedWithoutRegisterImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$AuthenticatedWithoutRegisterImplCopyWith<
          _$AuthenticatedWithoutRegisterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
