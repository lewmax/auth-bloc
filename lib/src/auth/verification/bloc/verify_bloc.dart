import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/network/repos/auth_repository.dart';
import '../../../../services/auth_storage_service.dart';

part 'verify_bloc.freezed.dart';

extension VerifyStateExt on VerifyState {
  bool get isTimerActivated => secsLeft > 0 && secsLeft < 120;
}

@freezed
class VerifyState with _$VerifyState {
  const factory VerifyState.initial({
    required String code,
    required int secsLeft,
  }) = _Initial;
  const factory VerifyState.inProgress({
    required String code,
    required int secsLeft,
  }) = _InProgress;
  const factory VerifyState.error({
    required String code,
    required int secsLeft,
    required String message,
  }) = _Error;
  const factory VerifyState.successVerifyCode({
    required String code,
    required int secsLeft,
  }) = _SuccessVerifyCode;
}

@freezed
class VerifyEvent with _$VerifyEvent {
  const factory VerifyEvent.updateCode({required String code}) = _UpdateCode;
  const factory VerifyEvent.count2Minutes() = _Count2Minutes;
  const factory VerifyEvent.updateMinutes() = _UpdateMinutes;
  const factory VerifyEvent.resendCode({required String email}) = _ResendCode;
  const factory VerifyEvent.verifyCodeWhenSignUp({
    required String email,
    required String password,
    required String code,
  }) = _VerifyCodeWhenSignUp;
  const factory VerifyEvent.verifyCodeAfterForgetPassword({
    required String email,
    required String code,
  }) = _VerifyCodeAfterForgetPassword;
}

class VerifyBloc extends Bloc<VerifyEvent, VerifyState> {
  VerifyBloc({
    required IAuthRepository authRepository,
    required AuthStorageService authStorageService,
  })  : _authRepository = authRepository,
        _authStorageService = authStorageService,
        super(const VerifyState.initial(code: '', secsLeft: 120)) {
    on<VerifyEvent>(
      (event, emit) => event.map(
        updateCode: (event) => _updateCode(event, emit),
        count2Minutes: (event) => _count2Minutes(event, emit),
        updateMinutes: (event) => _updateMinutes(event, emit),
        resendCode: (event) => _resendCode(event, emit),
        verifyCodeWhenSignUp: (event) => _verifyCodeWhenSignUp(event, emit),
        verifyCodeAfterForgetPassword: (event) =>
            _verifyCodeAfterForgetPassword(event, emit),
      ),
    );
  }

  Timer? _timer;
  final IAuthRepository _authRepository;
  final AuthStorageService _authStorageService;

  void _updateCode(_UpdateCode event, Emitter<VerifyState> emit) {
    emit(state.copyWith(code: event.code));
  }

  void _count2Minutes(_Count2Minutes _, Emitter<VerifyState> emit) {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.secsLeft <= 0) {
        _timer?.cancel();

        return emit(state.copyWith(secsLeft: 120));
      }
      if (isClosed) return _timer?.cancel();
      add(const VerifyEvent.updateMinutes());
    });
  }

  void _updateMinutes(_UpdateMinutes event, Emitter<VerifyState> emit) {
    emit(VerifyState.initial(secsLeft: state.secsLeft - 1, code: state.code));
  }

  Future<void> _resendCode(_ResendCode event, Emitter<VerifyState> emit) async {
    emit(VerifyState.inProgress(code: state.code, secsLeft: state.secsLeft));
    final res = await _authRepository.resendCode(event.email);
    if (res.isSuccess) return add(const VerifyEvent.count2Minutes());
    emit(
      VerifyState.error(
        message: res.message ?? 'Error when resending the code',
        code: state.code,
        secsLeft: state.secsLeft,
      ),
    );
  }

  Future<void> _verifyCodeAfterForgetPassword(
    _VerifyCodeAfterForgetPassword event,
    Emitter<VerifyState> emit,
  ) async {
    emit(VerifyState.inProgress(code: state.code, secsLeft: state.secsLeft));
    final res = await _authRepository.verifyConfirmCode(
      email: event.email,
      confirmationCode: event.code,
      appointment: Appointment.FORGOT_PASSWORD,
    );
    if (res.isSuccess) {
      return emit(
        VerifyState.successVerifyCode(
          code: state.code,
          secsLeft: state.secsLeft,
        ),
      );
    }
    emit(
      VerifyState.error(
        message: res.message ?? 'Error when verify code',
        code: state.code,
        secsLeft: state.secsLeft,
      ),
    );
  }

  Future<void> _verifyCodeWhenSignUp(
    _VerifyCodeWhenSignUp event,
    Emitter<VerifyState> emit,
  ) async {
    emit(VerifyState.inProgress(code: state.code, secsLeft: state.secsLeft));
    final res = await _authRepository.verifyConfirmCode(
      email: event.email,
      confirmationCode: event.code,
      appointment: Appointment.EMAIL_VERIFICATION,
    );
    if (!res.isSuccess) {
      return emit(
        VerifyState.error(
          message: res.message ?? 'Error when verify code',
          code: state.code,
          secsLeft: state.secsLeft,
        ),
      );
    }
    final resp = await _authRepository.setPassword(
      email: event.email,
      password: event.password,
      confirmationCode: event.code,
      appointment: Appointment.EMAIL_VERIFICATION,
    );
    if (resp.isSuccess) {
      await _authStorageService.updateToken(resp.data!.toDomain());

      return emit(
        VerifyState.successVerifyCode(
          code: state.code,
          secsLeft: state.secsLeft,
        ),
      );
    }
    emit(
      VerifyState.error(
        message: resp.message ?? 'Error when verify code',
        code: state.code,
        secsLeft: state.secsLeft,
      ),
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();

    return super.close();
  }
}
