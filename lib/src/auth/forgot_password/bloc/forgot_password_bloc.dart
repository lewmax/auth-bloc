import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/network/repos/auth_repository.dart';

part 'forgot_password_bloc.freezed.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.forgotPassword({required String email}) =
      _ForgotPassword;
}

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = _Initial;
  const factory ForgotPasswordState.inProgress() = _InProgress;
  const factory ForgotPasswordState.error({required String message}) = _Error;
  const factory ForgotPasswordState.success() = _Success;
}

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const _Initial()) {
    on<ForgotPasswordEvent>(
      (event, emit) =>
          event.map(forgotPassword: (event) => _forgotPassword(event, emit)),
    );
  }

  final IAuthRepository _authRepository;

  Future<void> _forgotPassword(
    _ForgotPassword event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(const ForgotPasswordState.inProgress());
    final resp = await _authRepository.forgotPassword(event.email);
    if (resp.isSuccess) return emit(const ForgotPasswordState.success());
    emit(
      ForgotPasswordState.error(message: resp.message ?? 'Error while request'),
    );
  }
}
