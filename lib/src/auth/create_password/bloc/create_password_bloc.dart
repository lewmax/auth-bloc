import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/network/repos/auth_repository.dart';

part 'create_password_bloc.freezed.dart';

@freezed
class CreatePasswordEvent with _$CreatePasswordEvent {
  const factory CreatePasswordEvent.toggleShowPassword() = _ToggleShowPassword;
  const factory CreatePasswordEvent.toggleShowPasswordRepeat() =
      _ToggleShowPasswordRepeat;
  const factory CreatePasswordEvent.resetPassword({
    required String email,
    required String password,
    required String passwordReapeat,
    required String code,
  }) = _ResetPassword;
}

@freezed
class CreatePasswordState with _$CreatePasswordState {
  const factory CreatePasswordState.initial({
    required bool showPassword,
    required bool showPasswordRepeat,
  }) = _Initial;
  const factory CreatePasswordState.inProgress({
    required bool showPassword,
    required bool showPasswordRepeat,
  }) = _InProgress;
  const factory CreatePasswordState.error({
    required bool showPassword,
    required bool showPasswordRepeat,
    required String message,
  }) = _Error;
  const factory CreatePasswordState.success({
    required bool showPassword,
    required bool showPasswordRepeat,
  }) = _Success;
}

class CreatePasswordBloc
    extends Bloc<CreatePasswordEvent, CreatePasswordState> {
  CreatePasswordBloc({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const _Initial(showPassword: false, showPasswordRepeat: false)) {
    on<CreatePasswordEvent>(
      (event, emit) => event.map(
        resetPassword: (event) => _resetPassword(event, emit),
        toggleShowPassword: (event) =>
            emit(state.copyWith(showPassword: !state.showPassword)),
        toggleShowPasswordRepeat: (event) => emit(
          state.copyWith(showPasswordRepeat: !state.showPasswordRepeat),
        ),
      ),
    );
  }

  final IAuthRepository _authRepository;

  Future<void> _resetPassword(
    _ResetPassword event,
    Emitter<CreatePasswordState> emit,
  ) async {
    emit(
      CreatePasswordState.inProgress(
        showPassword: state.showPassword,
        showPasswordRepeat: state.showPasswordRepeat,
      ),
    );
    final resp = await _authRepository.setPassword(
      email: event.email,
      password: event.password,
      confirmationCode: event.code,
      appointment: Appointment.FORGOT_PASSWORD,
    );
    if (resp.isSuccess) {
      return emit(
        CreatePasswordState.success(
          showPassword: state.showPassword,
          showPasswordRepeat: state.showPasswordRepeat,
        ),
      );
    }
    emit(
      CreatePasswordState.error(
        message: resp.message ?? 'Error while request',
        showPassword: state.showPassword,
        showPasswordRepeat: state.showPasswordRepeat,
      ),
    );
  }
}
