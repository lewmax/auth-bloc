// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginDto {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) byEmail,
    required TResult Function(String socialToken) google,
    required TResult Function(String socialToken) facebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? byEmail,
    TResult? Function(String socialToken)? google,
    TResult? Function(String socialToken)? facebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? byEmail,
    TResult Function(String socialToken)? google,
    TResult Function(String socialToken)? facebook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Internal value) byEmail,
    required TResult Function(_Google value) google,
    required TResult Function(_Facebook value) facebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Internal value)? byEmail,
    TResult? Function(_Google value)? google,
    TResult? Function(_Facebook value)? facebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Internal value)? byEmail,
    TResult Function(_Google value)? google,
    TResult Function(_Facebook value)? facebook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) then) =
      _$LoginDtoCopyWithImpl<$Res, LoginDto>;
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res, $Val extends LoginDto>
    implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InternalImplCopyWith<$Res> {
  factory _$$InternalImplCopyWith(
          _$InternalImpl value, $Res Function(_$InternalImpl) then) =
      __$$InternalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$InternalImplCopyWithImpl<$Res>
    extends _$LoginDtoCopyWithImpl<$Res, _$InternalImpl>
    implements _$$InternalImplCopyWith<$Res> {
  __$$InternalImplCopyWithImpl(
      _$InternalImpl _value, $Res Function(_$InternalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$InternalImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InternalImpl implements _Internal {
  const _$InternalImpl({required this.login, required this.password});

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginDto.byEmail(login: $login, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalImplCopyWith<_$InternalImpl> get copyWith =>
      __$$InternalImplCopyWithImpl<_$InternalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) byEmail,
    required TResult Function(String socialToken) google,
    required TResult Function(String socialToken) facebook,
  }) {
    return byEmail(login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? byEmail,
    TResult? Function(String socialToken)? google,
    TResult? Function(String socialToken)? facebook,
  }) {
    return byEmail?.call(login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? byEmail,
    TResult Function(String socialToken)? google,
    TResult Function(String socialToken)? facebook,
    required TResult orElse(),
  }) {
    if (byEmail != null) {
      return byEmail(login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Internal value) byEmail,
    required TResult Function(_Google value) google,
    required TResult Function(_Facebook value) facebook,
  }) {
    return byEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Internal value)? byEmail,
    TResult? Function(_Google value)? google,
    TResult? Function(_Facebook value)? facebook,
  }) {
    return byEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Internal value)? byEmail,
    TResult Function(_Google value)? google,
    TResult Function(_Facebook value)? facebook,
    required TResult orElse(),
  }) {
    if (byEmail != null) {
      return byEmail(this);
    }
    return orElse();
  }
}

abstract class _Internal implements LoginDto {
  const factory _Internal(
      {required final String login,
      required final String password}) = _$InternalImpl;

  String get login;
  String get password;
  @JsonKey(ignore: true)
  _$$InternalImplCopyWith<_$InternalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleImplCopyWith<$Res> {
  factory _$$GoogleImplCopyWith(
          _$GoogleImpl value, $Res Function(_$GoogleImpl) then) =
      __$$GoogleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String socialToken});
}

/// @nodoc
class __$$GoogleImplCopyWithImpl<$Res>
    extends _$LoginDtoCopyWithImpl<$Res, _$GoogleImpl>
    implements _$$GoogleImplCopyWith<$Res> {
  __$$GoogleImplCopyWithImpl(
      _$GoogleImpl _value, $Res Function(_$GoogleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialToken = null,
  }) {
    return _then(_$GoogleImpl(
      socialToken: null == socialToken
          ? _value.socialToken
          : socialToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GoogleImpl implements _Google {
  const _$GoogleImpl({required this.socialToken});

  @override
  final String socialToken;

  @override
  String toString() {
    return 'LoginDto.google(socialToken: $socialToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleImpl &&
            (identical(other.socialToken, socialToken) ||
                other.socialToken == socialToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, socialToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleImplCopyWith<_$GoogleImpl> get copyWith =>
      __$$GoogleImplCopyWithImpl<_$GoogleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) byEmail,
    required TResult Function(String socialToken) google,
    required TResult Function(String socialToken) facebook,
  }) {
    return google(socialToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? byEmail,
    TResult? Function(String socialToken)? google,
    TResult? Function(String socialToken)? facebook,
  }) {
    return google?.call(socialToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? byEmail,
    TResult Function(String socialToken)? google,
    TResult Function(String socialToken)? facebook,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(socialToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Internal value) byEmail,
    required TResult Function(_Google value) google,
    required TResult Function(_Facebook value) facebook,
  }) {
    return google(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Internal value)? byEmail,
    TResult? Function(_Google value)? google,
    TResult? Function(_Facebook value)? facebook,
  }) {
    return google?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Internal value)? byEmail,
    TResult Function(_Google value)? google,
    TResult Function(_Facebook value)? facebook,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(this);
    }
    return orElse();
  }
}

abstract class _Google implements LoginDto {
  const factory _Google({required final String socialToken}) = _$GoogleImpl;

  String get socialToken;
  @JsonKey(ignore: true)
  _$$GoogleImplCopyWith<_$GoogleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FacebookImplCopyWith<$Res> {
  factory _$$FacebookImplCopyWith(
          _$FacebookImpl value, $Res Function(_$FacebookImpl) then) =
      __$$FacebookImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String socialToken});
}

/// @nodoc
class __$$FacebookImplCopyWithImpl<$Res>
    extends _$LoginDtoCopyWithImpl<$Res, _$FacebookImpl>
    implements _$$FacebookImplCopyWith<$Res> {
  __$$FacebookImplCopyWithImpl(
      _$FacebookImpl _value, $Res Function(_$FacebookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialToken = null,
  }) {
    return _then(_$FacebookImpl(
      socialToken: null == socialToken
          ? _value.socialToken
          : socialToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FacebookImpl implements _Facebook {
  const _$FacebookImpl({required this.socialToken});

  @override
  final String socialToken;

  @override
  String toString() {
    return 'LoginDto.facebook(socialToken: $socialToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacebookImpl &&
            (identical(other.socialToken, socialToken) ||
                other.socialToken == socialToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, socialToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacebookImplCopyWith<_$FacebookImpl> get copyWith =>
      __$$FacebookImplCopyWithImpl<_$FacebookImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) byEmail,
    required TResult Function(String socialToken) google,
    required TResult Function(String socialToken) facebook,
  }) {
    return facebook(socialToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? byEmail,
    TResult? Function(String socialToken)? google,
    TResult? Function(String socialToken)? facebook,
  }) {
    return facebook?.call(socialToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? byEmail,
    TResult Function(String socialToken)? google,
    TResult Function(String socialToken)? facebook,
    required TResult orElse(),
  }) {
    if (facebook != null) {
      return facebook(socialToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Internal value) byEmail,
    required TResult Function(_Google value) google,
    required TResult Function(_Facebook value) facebook,
  }) {
    return facebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Internal value)? byEmail,
    TResult? Function(_Google value)? google,
    TResult? Function(_Facebook value)? facebook,
  }) {
    return facebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Internal value)? byEmail,
    TResult Function(_Google value)? google,
    TResult Function(_Facebook value)? facebook,
    required TResult orElse(),
  }) {
    if (facebook != null) {
      return facebook(this);
    }
    return orElse();
  }
}

abstract class _Facebook implements LoginDto {
  const factory _Facebook({required final String socialToken}) = _$FacebookImpl;

  String get socialToken;
  @JsonKey(ignore: true)
  _$$FacebookImplCopyWith<_$FacebookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
