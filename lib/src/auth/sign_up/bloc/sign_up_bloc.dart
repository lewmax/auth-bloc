import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/network/repos/auth_repository.dart';

part 'sign_up_bloc.freezed.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.toggleShowPassword() = _ToggleShowPassword;
  const factory SignUpEvent.toggleShowPasswordRepeat() =
      _ToggleShowPasswordRepeat;
  const factory SignUpEvent.signUp({
    required String email,
    required String password,
    required String passwordRepeat,
  }) = _SignUp;
}

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial({
    required bool showPassword,
    required bool showPasswordRepeat,
  }) = _Initial;
  const factory SignUpState.inProgress({
    required bool showPassword,
    required bool showPasswordRepeat,
  }) = _InProgress;
  const factory SignUpState.error({
    required bool showPassword,
    required bool showPasswordRepeat,
    required String message,
  }) = _Error;
  const factory SignUpState.success({
    required bool showPassword,
    required bool showPasswordRepeat,
  }) = _Success;
}

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const _Initial(showPassword: false, showPasswordRepeat: false)) {
    on<SignUpEvent>(
      (event, emit) => event.map(
        toggleShowPassword: (_) =>
            emit(state.copyWith(showPassword: !state.showPassword)),
        toggleShowPasswordRepeat: (_) =>
            emit(state.copyWith(showPasswordRepeat: !state.showPasswordRepeat)),
        signUp: (event) => _signUp(event, emit),
      ),
    );
  }

  final IAuthRepository _authRepository;

  Future<void> _signUp(_SignUp event, Emitter<SignUpState> emit) async {
    emit(
      SignUpState.inProgress(
        showPassword: state.showPassword,
        showPasswordRepeat: state.showPasswordRepeat,
      ),
    );
    final res = await _authRepository.signUp(event.email);
    if (res.isSuccess) {
      return emit(
        SignUpState.success(
          showPassword: state.showPassword,
          showPasswordRepeat: state.showPasswordRepeat,
        ),
      );
    }
    emit(
      SignUpState.error(
        message: res.message ?? 'Error when sign up',
        showPassword: state.showPassword,
        showPasswordRepeat: state.showPasswordRepeat,
      ),
    );
  }
}
