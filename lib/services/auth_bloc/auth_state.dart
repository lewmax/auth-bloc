part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  // const factory AuthState.success({User? user}) = _Success;
  const factory AuthState.initial() = _Initital;
  const factory AuthState.inProgress() = _InProgress;
  const factory AuthState.notAuth() = _NotAuthenticated;
  const factory AuthState.error({String? message}) = _Error;
  const factory AuthState.auth() = _Authenticated;
  const factory AuthState.authWithoutRegister({required UserEntity user}) =
      _AuthenticatedWithoutRegister;
}
