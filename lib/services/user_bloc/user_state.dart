part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial({UserEntity? user}) = _Initial;
  const factory UserState.inProgress({
    required bool showLoader,
    required UserEntity user,
  }) = _InProgress;
  const factory UserState.success({required UserEntity user}) = _Success;
  const factory UserState.error({
    required String message,
    required UserEntity user,
  }) = _Error;
}
